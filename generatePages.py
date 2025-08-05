import csv
import json
import os
import sys
import pandas as pd
from collections import defaultdict

def safe_strip(value):
    return str(value).strip() if pd.notna(value) and str(value).strip().lower() != "nan" else ""

def strip_brackets(value):
    if value.startswith("<") and value.endswith(">"):
        return value[1:-1]
    return value

# === CLI ARGUMENT ===
if len(sys.argv) < 2:
    print("❌ Please provide the input CSV/XLSX file name, e.g., python generateItemPages.py items.csv")
    sys.exit(1)

input_file = sys.argv[1]
category_name = os.path.splitext(os.path.basename(input_file))[0]

# === OUTPUT DIRS ===
adv_output_dir = "config/triumph/script/itbl2"
entry_output_dir = f"patchouli_books/survival_guide/en_us/entries/{category_name}"
os.makedirs(adv_output_dir, exist_ok=True)
os.makedirs(entry_output_dir, exist_ok=True)

# === READ INPUT ===
df = pd.read_excel(input_file) if input_file.endswith(".xlsx") else pd.read_csv(input_file)

# === GROUP ENTRIES ===
entries = defaultdict(list)
shared_data = {}
last_used_file_name = ""

for _, row in df.iterrows():
    file_name = safe_strip(row.get("file_name")) if safe_strip(row.get("file_name")) else last_used_file_name

    if not file_name:
        continue

    if safe_strip(row.get("file_name")) and (safe_strip(row.get("item_id")) or safe_strip(row.get("icon")) or safe_strip(row.get("display_name"))):
        last_used_file_name = file_name

        shared_data[file_name] = {
            "item_id": strip_brackets(safe_strip(row["item_id"])) or "thebetweenlands:items_misc:32",
            "icon": strip_brackets(safe_strip(row["item_id"])) or "minecraft:book",
            "display_name": safe_strip(row["display_name"]) or file_name,
            "advancement_id": safe_strip(row.get("advancement_id")),
            "add_advancement": safe_strip(row.get("add_advancement")).lower() != "false"
        }

    entries[file_name].append(row)

# === GENERATE FILES ===
entry_index = 0

for file_name, rows in entries.items():
    print(f"Generating entry for {file_name}...")
    shared = shared_data.get(file_name, {})
    display_name = shared.get("display_name", file_name)
    icon = shared.get("icon", "minecraft:book")
    item_id = shared.get("item_id", "minecraft:air")
    raw_adv = shared.get("advancement_id")
    add_adv = shared.get("add_advancement", True)

    custom_advancement = raw_adv if raw_adv and ":" in raw_adv else f"itbl2:{raw_adv}" if raw_adv else ""
    advancement_id = custom_advancement if custom_advancement else ""

    # Patchouli entry
    patchouli_entry = {
        "name": display_name,
        "category": category_name,
        "icon": item_id,
        "pages": [],
        "sortnum": entry_index
    }

    entry_index += 1

    if advancement_id:
        patchouli_entry["advancement"] = advancement_id
    elif add_adv:
        patchouli_entry["advancement"] = f"itbl2:{file_name}"

    for _, row in pd.DataFrame(rows).iterrows():
        page_type = safe_strip(row.get("page_type"))
        page = {"type": page_type}
        
        if not page_type:
            continue

        print(f"Processing page for {file_name}...")

        valid = True  # track if the page should be added

        text = safe_strip(row.get("page_text"))
        if text:
            page["text"] = text

        title = safe_strip(row.get("title"))
        if title:
            page["title"] = title

        match page_type:
            case "text":
                pass

            case "crafting":
                recipe = strip_brackets(safe_strip(row.get("meta")))
                if recipe:
                    page["recipe"] = recipe
                else:
                    valid = False

            case "spotlight":
                item = strip_brackets(safe_strip(row.get("meta")))
                if item:
                    page["item"] = item
                else:
                    valid = False
                page["link_recipe"] = "true"

            case "image":
                image = safe_strip(row.get("meta"))
                if image:
                    page["images"] = [image]
                else:
                    valid = False

                border_val = safe_strip(row.get("border")).lower()
                if border_val == "true":
                    page["border"] = True
                elif border_val == "false":
                    page["border"] = False

            case "multiblock":
                multiblock = safe_strip(row.get("meta"))
                if multiblock:
                    page["multiblock"] = json.loads(multiblock)
                    page["enable_visualize"] = "false"
                else:
                    valid = False

            case _:
                valid = False

        if valid:
            patchouli_entry["pages"].append(page)
            
            with open(os.path.join(entry_output_dir, f"{file_name}.json"), "w", encoding="utf-8") as f:
                print(f"✅ Writing entry for {file_name} to {entry_output_dir}/{file_name}.json")
                json.dump(patchouli_entry, f, indent=2)

            if add_adv:
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
        elif page_type:
            print(f"❌ Invalid page type '{page_type}' for entry '{file_name}'. Skipping this page.")

print(f"✅ All files generated for category '{category_name}' from {input_file}!")
