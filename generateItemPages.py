import csv
import json
import os
import pandas as pd
from collections import defaultdict

def safe_strip(value):
    return str(value).strip() if pd.notna(value) and str(value).strip().lower() != "nan" else ""

# === CONFIG ===
input_file = "items.csv"
adv_output_dir = "config/triumph/script/itbl2"
entry_output_dir = "patchouli_books/survival_guide/en_us/entries"
os.makedirs(adv_output_dir, exist_ok=True)
os.makedirs(entry_output_dir, exist_ok=True)

# === READ INPUT ===
df = pd.read_excel(input_file) if input_file.endswith(".xlsx") else pd.read_csv(input_file)

# === GROUP ENTRIES ===
entries = defaultdict(list)
shared_data = {}

for _, row in df.iterrows():
    file_name = safe_strip(row.get("file_name"))
    if not file_name:
        continue

    if safe_strip(row.get("item_id")):
        shared_data[file_name] = {
            "item_id": safe_strip(row["item_id"]),
            "icon": safe_strip(row["icon"]),
            "display_name": safe_strip(row["display_name"]),
            "advancement_id": safe_strip(row.get("advancement_id"))
        }

    entries[file_name].append(row)

# === GENERATE FILES ===
for file_name, rows in entries.items():
    shared = shared_data.get(file_name, {})
    display_name = shared.get("display_name", file_name)
    icon = shared.get("icon", "minecraft:book")
    item_id = shared.get("item_id", f"minecraft:{file_name}")
    raw_adv = shared.get("advancement_id")
    custom_advancement = ""
    if raw_adv:
        custom_advancement = raw_adv if ":" in raw_adv else f"itbl2:{raw_adv}"
    advancement_id = custom_advancement if custom_advancement else f"itbl2:{file_name}"

    # Patchouli entry
    patchouli_entry = {
        "name": display_name,
        "category": "items",
        "advancement": advancement_id,
        "icon": item_id,
        "pages": []
    }

    for _, row in pd.DataFrame(rows).iterrows():
        page_type = safe_strip(row.get("page_type"))
        page = {"type": page_type}

        if page_type == "text":
            page["text"] = safe_strip(row.get("page_text"))
        elif page_type == "crafting":
            recipe = safe_strip(row.get("meta"))
            if recipe:
                page["recipe"] = recipe
        elif page_type == "image":
            image = safe_strip(row.get("meta"))
            if image:
                page["images"] = [image]

            border_val = safe_strip(row.get("border"))
            if border_val.lower() == "true":
                page["border"] = True
            elif border_val.lower() == "false":
                page["border"] = False

            title_val = safe_strip(row.get("title"))
            if title_val:
                page["title"] = title_val
        else:
            continue

        patchouli_entry["pages"].append(page)

    with open(os.path.join(entry_output_dir, f"{file_name}.json"), "w", encoding="utf-8") as f:
        json.dump(patchouli_entry, f, indent=2)

    # Generate advancement only if not provided manually
    if not custom_advancement:
        lines = [
            f'setIcon(<{icon}>);',
            f'setTitle("{display_name}");',
            f'setShowToast(false);',
            f'setAnnounceToChat(false);',
            f'addParent("itbl2:root");',
            f'setDescription("");',
            f'criteria = addCriteria("got_{file_name}", "minecraft:inventory_changed");',
            f'criteria.addItem("{item_id}");'
        ]

        with open(os.path.join(adv_output_dir, f"{file_name}.txt"), "w", encoding="utf-8") as f:
            f.write("\n".join(lines))

print("✅ All files generated successfully!")
