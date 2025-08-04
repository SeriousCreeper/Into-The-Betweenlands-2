import tkinter as tk
from tkinter import ttk, messagebox, filedialog, simpledialog
import json
import os
from tkinter.scrolledtext import ScrolledText

class PageFrame(ttk.LabelFrame):
    def __init__(self, parent, page_num, on_delete=None):
        super().__init__(parent, text=f"Page {page_num}")
        self.page_num = page_num
        
        # Page type selection
        type_frame = ttk.Frame(self)
        type_frame.pack(fill=tk.X, padx=5, pady=2)
        ttk.Label(type_frame, text="Type:").pack(side=tk.LEFT)
        self.page_type = ttk.Combobox(type_frame, values=[
            "text", "crafting", "image", "spotlight", "relations",
            "multiblock", "link", "quest"
        ])
        self.page_type.set("text")
        self.page_type.pack(side=tk.LEFT, padx=5)
        self.page_type.bind("<<ComboboxSelected>>", self.update_page_fields)
        
        # Delete button
        ttk.Button(type_frame, text="Delete Page", command=lambda: on_delete(self)).pack(side=tk.RIGHT)
        
        # Content frame that will hold different fields based on page type
        self.content_frame = ttk.Frame(self)
        self.content_frame.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        # Initialize with text page
        self.current_fields = {}
        self.update_page_fields()
        
        # Character count label
        self.char_count_label = ttk.Label(self, text="Characters: 0/350")
        self.char_count_label.pack(side=tk.BOTTOM, pady=2)

    def update_page_fields(self, event=None):
        # Clear existing fields
        for widget in self.content_frame.winfo_children():
            widget.destroy()
        self.current_fields.clear()

        page_type = self.page_type.get()
        
        if page_type == "text":
            self.create_text_page()
        elif page_type == "crafting":
            self.create_crafting_page()
        elif page_type == "image":
            self.create_image_page()
        elif page_type == "spotlight":
            self.create_spotlight_page()
        # Add more page types as needed
        
    def create_text_page(self):
        text_widget = ScrolledText(self.content_frame, height=8, width=50,
            bg='#21252b',
            fg='#abb2bf',
            insertbackground='#abb2bf',
            selectbackground='#404859',
            selectforeground='#ffffff',
            relief='solid',
            borderwidth=1)
        text_widget.pack(fill=tk.BOTH, expand=True)
        text_widget.bind("<<Modified>>", self.update_char_count)
        text_widget.bind("<Button-3>", self.show_context_menu)  # Right click
        self.current_fields["text"] = text_widget
        
    def show_context_menu(self, event):
        text_widget = event.widget
        menu = tk.Menu(self, tearoff=0)
        
        # Only show formatting options if there's a selection
        if text_widget.tag_ranges("sel"):
            formatting_menu = tk.Menu(menu, tearoff=0)
            # Text styles
            formatting_menu.add_command(label="Bold", command=lambda: self.apply_format(text_widget, "bold"))
            formatting_menu.add_command(label="Italic", command=lambda: self.apply_format(text_widget, "italic"))
            formatting_menu.add_command(label="Strike", command=lambda: self.apply_format(text_widget, "strike"))
            formatting_menu.add_command(label="Obfuscated", command=lambda: self.apply_format(text_widget, "obf"))
            menu.add_cascade(label="Format", menu=formatting_menu)
            
            # Colors submenu
            colors_menu = tk.Menu(menu, tearoff=0)
            colors = {
                "Black": "000000",
                "Dark Blue": "0000AA",
                "Dark Green": "00AA00",
                "Dark Aqua": "00AAAA",
                "Dark Red": "AA0000",
                "Dark Purple": "AA00AA",
                "Gold": "FFAA00",
                "Gray": "AAAAAA",
                "Dark Gray": "555555",
                "Blue": "5555FF",
                "Green": "55FF55",
                "Aqua": "55FFFF",
                "Red": "FF5555",
                "Light Purple": "FF55FF",
                "Yellow": "FFFF55",
                "White": "FFFFFF"
            }
            for color_name, color_code in colors.items():
                colors_menu.add_command(
                    label=color_name,
                    command=lambda c=color_code: self.apply_format(text_widget, "color", c)
                )
            menu.add_cascade(label="Color", menu=colors_menu)
            
            # Links and tooltips
            special_menu = tk.Menu(menu, tearoff=0)
            special_menu.add_command(label="Add Link", command=lambda: self.add_link(text_widget))
            special_menu.add_command(label="Add Tooltip", command=lambda: self.add_tooltip(text_widget))
            special_menu.add_command(label="Add Keybind", command=lambda: self.add_keybind(text_widget))
            menu.add_cascade(label="Special", menu=special_menu)
            
            menu.add_separator()
        
        # Standard edit menu items
        menu.add_command(label="Cut", command=lambda: text_widget.event_generate("<<Cut>>"))
        menu.add_command(label="Copy", command=lambda: text_widget.event_generate("<<Copy>>"))
        menu.add_command(label="Paste", command=lambda: text_widget.event_generate("<<Paste>>"))
        
        menu.tk_popup(event.x_root, event.y_root)
        
    def apply_format(self, text_widget, format_type, param=None):
        if text_widget.tag_ranges("sel"):
            start = text_widget.index("sel.first")
            end = text_widget.index("sel.last")
            selected_text = text_widget.get(start, end)
            
            if format_type == "color":
                formatted_text = f"$(#{param}){selected_text}$()"
            else:
                formatted_text = f"$({format_type}){selected_text}$()"
                
            text_widget.delete(start, end)
            text_widget.insert(start, formatted_text)
            
    def add_link(self, text_widget):
        if text_widget.tag_ranges("sel"):
            link_target = simpledialog.askstring("Add Link", "Enter link target (e.g., 'category/entry'):")
            if link_target:
                start = text_widget.index("sel.first")
                end = text_widget.index("sel.last")
                selected_text = text_widget.get(start, end)
                formatted_text = f"$(l:{link_target}){selected_text}$()"
                text_widget.delete(start, end)
                text_widget.insert(start, formatted_text)
                
    def add_tooltip(self, text_widget):
        if text_widget.tag_ranges("sel"):
            tooltip_text = simpledialog.askstring("Add Tooltip", "Enter tooltip text:")
            if tooltip_text:
                start = text_widget.index("sel.first")
                end = text_widget.index("sel.last")
                selected_text = text_widget.get(start, end)
                formatted_text = f"$(t:{tooltip_text}){selected_text}$()"
                text_widget.delete(start, end)
                text_widget.insert(start, formatted_text)
                
    def add_keybind(self, text_widget):
        if text_widget.tag_ranges("sel"):
            key = simpledialog.askstring("Add Keybind", "Enter key (e.g., 'key.jump'):")
            if key:
                start = text_widget.index("sel.first")
                end = text_widget.index("sel.last")
                selected_text = text_widget.get(start, end)
                formatted_text = f"$(k:{key}){selected_text}$()"
                text_widget.delete(start, end)
                text_widget.insert(start, formatted_text)

    def create_crafting_page(self):
        # Recipe ID
        ttk.Label(self.content_frame, text="Recipe ID:").pack(anchor=tk.W)
        recipe_id = ttk.Entry(self.content_frame, width=40)
        recipe_id.pack(fill=tk.X)
        self.current_fields["recipe"] = recipe_id
        
        # Text
        ttk.Label(self.content_frame, text="Description:").pack(anchor=tk.W)
        text_widget = ScrolledText(self.content_frame, height=6, width=60)
        text_widget.pack(fill=tk.BOTH, expand=True)
        self.current_fields["text"] = text_widget

    def create_image_page(self):
        # Image path
        ttk.Label(self.content_frame, text="Image Path:").pack(anchor=tk.W)
        image_path = ttk.Entry(self.content_frame, width=40)
        image_path.pack(fill=tk.X)
        self.current_fields["images"] = image_path
        
        # Text
        ttk.Label(self.content_frame, text="Caption:").pack(anchor=tk.W)
        text_widget = ScrolledText(self.content_frame, height=6, width=60)
        text_widget.pack(fill=tk.BOTH, expand=True)
        self.current_fields["text"] = text_widget

    def create_spotlight_page(self):
        # Item ID
        ttk.Label(self.content_frame, text="Item ID:").pack(anchor=tk.W)
        item_id = ttk.Entry(self.content_frame, width=40)
        item_id.pack(fill=tk.X)
        self.current_fields["item"] = item_id
        
        # Text
        ttk.Label(self.content_frame, text="Description:").pack(anchor=tk.W)
        text_widget = ScrolledText(self.content_frame, height=6, width=60)
        text_widget.pack(fill=tk.BOTH, expand=True)
        self.current_fields["text"] = text_widget

    def estimate_patchouli_lines(self, text):
        CHARS_PER_LINE = 29  # Length of "reached the other side, we will"
        estimated_lines = 0
        
        # Process each explicit line break
        for line in text.split('\n'):
            if not line.strip():  # Empty lines count as one
                estimated_lines += 1
                continue
                
            # Calculate how many lines this text would wrap to
            chars_in_line = len(line.strip())
            lines_needed = (chars_in_line + CHARS_PER_LINE - 1) // CHARS_PER_LINE
            estimated_lines += max(1, lines_needed)
            
        return estimated_lines

    def update_char_count(self, event=None):
        if "text" in self.current_fields:
            text_widget = self.current_fields["text"]
            content = text_widget.get("1.0", tk.END).strip()
            
            # Calculate estimated lines in Patchouli
            estimated_lines = self.estimate_patchouli_lines(content)
            max_lines = 14 if self.page_num == 1 else 17
            
            # Update status with estimate
            status_text = f"Estimated lines in Patchouli: {estimated_lines}/{max_lines}"
            if estimated_lines > max_lines:
                status_text += f"\nWarning: Text may be too long for this page!"
            
            self.char_count_label.config(
                text=status_text,
                foreground="red" if estimated_lines > max_lines else "black"
            )
            
            text_widget.edit_modified(False)

    def get_page_data(self):
        page_type = self.page_type.get()
        data = {"type": page_type}
        
        for field_name, widget in self.current_fields.items():
            if isinstance(widget, ScrolledText) or isinstance(widget, tk.Text):
                value = widget.get("1.0", tk.END).strip()
            else:
                value = widget.get().strip()
            
            if value:
                if field_name == "images":
                    data[field_name] = [value]  # Image paths are always in a list
                else:
                    data[field_name] = value
                    
        return data

    def set_page_data(self, data):
        page_type = data.get("type", "text")
        self.page_type.set(page_type)
        self.update_page_fields()
        
        for field_name, value in data.items():
            if field_name == "type":
                continue
                
            if field_name in self.current_fields:
                widget = self.current_fields[field_name]
                if isinstance(widget, ScrolledText) or isinstance(widget, tk.Text):
                    widget.delete("1.0", tk.END)
                    widget.insert("1.0", value)
                else:
                    if field_name == "images" and isinstance(value, list):
                        widget.insert(0, value[0] if value else "")
                    else:
                        widget.insert(0, value)

class PatchouliEditor:
    def __init__(self, root):
        self.root = root
        self.root.title("Patchouli Book Editor")
        self.root.geometry("930x1200")  # Width x Height in pixels
        
        # Configure dark theme
        self.style = ttk.Style()
        
        # Configure colors
        self.root.configure(bg='#282c34')
        self.style.configure('.',
            background='#282c34',
            foreground='#abb2bf',
            fieldbackground='#21252b',
            insertcolor='#abb2bf',
            selectforeground='#ffffff',
            selectbackground='#404859',
            borderwidth=0
        )
        
        # Configure specific elements
        self.style.configure('TFrame', background='#282c34')
        self.style.configure('TLabel', background='#282c34', foreground='#abb2bf')
        self.style.configure('TLabelframe', background='#282c34', foreground='#abb2bf')
        self.style.configure('TLabelframe.Label', background='#282c34', foreground='#abb2bf')
        self.style.configure('TButton',
            background='#404859',
            foreground='#abb2bf',
            borderwidth=0,
            focuscolor='none'
        )
        self.style.map('TButton',
            background=[('active', '#4b5363')],
            foreground=[('active', '#ffffff')]
        )
        self.style.configure('TEntry',
            fieldbackground='#21252b',
            foreground='#abb2bf',
            insertcolor='#abb2bf',
            borderwidth=1,
            relief='solid'
        )
        self.style.configure('TCombobox',
            fieldbackground='#21252b',
            background='#21252b',
            foreground='#abb2bf',
            arrowcolor='#abb2bf',
            borderwidth=1,
            relief='solid'
        )
        self.style.map('TCombobox',
            fieldbackground=[('readonly', '#21252b')],
            selectbackground=[('readonly', '#21252b')],
            selectforeground=[('readonly', '#abb2bf')]
        )
        self.style.configure('TCheckbutton',
            background='#282c34',
            foreground='#abb2bf'
        )
        
        # Create main container with scrollbar
        self.main_canvas = tk.Canvas(root, bg='#282c34', highlightthickness=0)
        scrollbar = ttk.Scrollbar(root, orient="vertical", command=self.main_canvas.yview)
        self.scrollable_frame = ttk.Frame(self.main_canvas)
        
        self.scrollable_frame.bind(
            "<Configure>",
            lambda e: self.main_canvas.configure(scrollregion=self.main_canvas.bbox("all"))
        )
        
        self.main_canvas.create_window((0, 0), window=self.scrollable_frame, anchor="nw")
        self.main_canvas.configure(yscrollcommand=scrollbar.set)
        
        # Pack scrollbar and canvas
        self.main_canvas.pack(side="left", fill="both", expand=True)
        scrollbar.pack(side="right", fill="y")
        
        # Current file path
        self.current_file = None
        
        # Book Entry Details
        details_frame = ttk.LabelFrame(self.scrollable_frame, text="Entry Details", padding="5")
        details_frame.pack(fill=tk.X, padx=10, pady=5)
        
        # Entry details grid
        self.create_entry_details(details_frame)
        
        # Pages Management
        pages_frame = ttk.LabelFrame(self.scrollable_frame, text="Pages", padding="5")
        pages_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=5)
        
        self.pages_container = ttk.Frame(pages_frame)
        self.pages_container.pack(fill=tk.BOTH, expand=True)
        
        self.pages = []
        self.add_page()
        
        # Buttons
        self.create_button_panel(pages_frame)
        
        # Formatting Help
        self.create_formatting_help()

    def load_categories_from_files(self):
        categories = []
        categories_dir = "patchouli_books/survival_guide/en_us/categories"
        
        if os.path.exists(categories_dir):
            for file in os.listdir(categories_dir):
                if file.endswith('.json'):
                    category_id = os.path.splitext(file)[0]
                    try:
                        with open(os.path.join(categories_dir, file), 'r', encoding='utf-8') as f:
                            data = json.load(f)
                            categories.append({
                                'id': category_id,
                                'name': data.get('name', category_id),
                                'icon': data.get('icon', ''),
                                'sortnum': data.get('sortnum', 0)
                            })
                    except Exception as e:
                        print(f"Error loading category {file}: {str(e)}")
        
        # Sort categories by sortnum
        categories.sort(key=lambda x: x['sortnum'])
        return categories

    def create_entry_details(self, parent):
        # Load categories
        self.categories = self.load_categories_from_files()
        
        # Entry Name
        ttk.Label(parent, text="Entry Name:").grid(row=0, column=0, sticky=tk.W, padx=5, pady=2)
        self.name_var = tk.StringVar()
        ttk.Entry(parent, textvariable=self.name_var, width=30).grid(
            row=0, column=1, sticky=(tk.W, tk.E), padx=5, pady=2
        )
        
        # Category Dropdown
        ttk.Label(parent, text="Category:").grid(row=1, column=0, sticky=tk.W, padx=5, pady=2)
        self.category_var = tk.StringVar()
        category_dropdown = ttk.Combobox(parent, textvariable=self.category_var, width=27, state="readonly")
        category_dropdown['values'] = [cat['id'] for cat in self.categories]
        if self.categories:
            category_dropdown.set(self.categories[0]['id'])
        category_dropdown.grid(row=1, column=1, sticky=(tk.W, tk.E), padx=5, pady=2)
        
        # Add category info tooltip
        category_info = ttk.Label(parent, text="ℹ")
        category_info.grid(row=1, column=2, padx=(0, 5))
        self.create_category_tooltip(category_info, category_dropdown)
        
        # Icon
        ttk.Label(parent, text="Icon:").grid(row=2, column=0, sticky=tk.W, padx=5, pady=2)
        self.icon_var = tk.StringVar()
        ttk.Entry(parent, textvariable=self.icon_var, width=30).grid(
            row=2, column=1, sticky=(tk.W, tk.E), padx=5, pady=2
        )
        
        # Sort Number
        ttk.Label(parent, text="Sort Number:").grid(row=3, column=0, sticky=tk.W, padx=5, pady=2)
        self.sortnum_var = tk.StringVar()
        ttk.Entry(parent, textvariable=self.sortnum_var, width=30).grid(
            row=3, column=1, sticky=(tk.W, tk.E), padx=5, pady=2
        )
        
        # Priority checkbox
        self.priority_var = tk.BooleanVar()
        ttk.Checkbutton(parent, text="Priority", variable=self.priority_var).grid(
            row=4, column=0, columnspan=2, sticky=tk.W, padx=5, pady=2
        )
        
    def create_category_tooltip(self, info_label, category_dropdown):
        def show_category_info(event):
            selected = category_dropdown.get()
            for cat in self.categories:
                if cat['id'] == selected:
                    tooltip = tk.Toplevel()
                    tooltip.wm_overrideredirect(True)
                    tooltip.wm_geometry(f"+{event.x_root+10}+{event.y_root+10}")
                    
                    text = f"Name: {cat['name']}\nIcon: {cat['icon']}\nSort: {cat['sortnum']}"
                    label = ttk.Label(tooltip, text=text, justify=tk.LEFT,
                                    relief='solid', padding=5)
                    label.pack()
                    
                    def hide_tooltip(event=None):
                        tooltip.destroy()
                    
                    tooltip.bind('<Leave>', hide_tooltip)
                    label.bind('<Leave>', hide_tooltip)
                    return
        
        info_label.bind('<Enter>', show_category_info)

    def create_category_manager(self):
        category_frame = ttk.LabelFrame(self.scrollable_frame, text="Category Management", padding="5")
        category_frame.pack(fill=tk.X, padx=10, pady=5)
        
        # Category list
        self.category_list = tk.Listbox(category_frame, height=3)
        self.category_list.pack(side=tk.LEFT, fill=tk.X, expand=True, padx=5)
        
        # Category buttons
        btn_frame = ttk.Frame(category_frame)
        btn_frame.pack(side=tk.LEFT, padx=5)
        
        ttk.Button(btn_frame, text="Add Category", command=self.add_category).pack(pady=2)
        ttk.Button(btn_frame, text="Remove Category", command=self.remove_category).pack(pady=2)
        
        # Load categories from file if exists
        self.load_categories()

    def create_button_panel(self, parent):
        button_frame = ttk.Frame(parent)
        button_frame.pack(fill=tk.X, pady=10)
        
        buttons = [
            ("Add Page", self.add_page),
            ("Save", self.save_book),
            ("Load", self.load_book),
            ("New", self.new_book)
        ]
        
        for text, command in buttons:
            ttk.Button(button_frame, text=text, command=command).pack(side=tk.LEFT, padx=5)

    def create_formatting_help(self):
        help_text = """Formatting Help:
$(br) - Line break
$(br2) - Double line break
$(l) - Link start
$(l:page) - Link to page
$(k) - Keybind start
$(k:key) - Keybind
$(t:tooltip) - Tooltip
$(italic) - Italic text
$(bold) - Bold text
$(strike) - Strikethrough text
$(obf) - Obfuscated text
$(#color) - Color (e.g. $(#ff0000) for red)
$() - End formatting
"""
        help_frame = ttk.LabelFrame(self.scrollable_frame, text="Formatting Help", padding="5")
        help_frame.pack(fill=tk.X, padx=10, pady=5)
        ttk.Label(help_frame, text=help_text, justify=tk.LEFT).pack(anchor=tk.W)

    def create_page_spread(self, start_num):
        spread_frame = ttk.Frame(self.pages_container)
        spread_frame.pack(fill=tk.X, pady=5)
        
        # Create left page
        left_page = PageFrame(
            spread_frame,
            start_num,
            on_delete=self.delete_page
        )
        left_page.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=2)
        
        # Create right page
        right_page = PageFrame(
            spread_frame,
            start_num + 1,
            on_delete=self.delete_page
        )
        right_page.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=2)
        
        return spread_frame, left_page, right_page

    def add_page(self):
        current_page_count = len(self.pages)
        
        # If we have an odd number of pages, add just one page to complete the spread
        if current_page_count % 2 == 1:
            page_frame = PageFrame(
                self.pages[-1].master,  # Add to the last spread frame
                len(self.pages) + 1,
                on_delete=self.delete_page
            )
            page_frame.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=2)
            self.pages.append(page_frame)
        else:
            # Create a new spread with two pages
            spread_frame, left_page, right_page = self.create_page_spread(len(self.pages) + 1)
            self.pages.extend([left_page, right_page])

    def delete_page(self, page_frame):
        if len(self.pages) > 1:
            page_num = page_frame.page_num
            spread_frame = page_frame.master
            
            # Remove the page from our list
            self.pages.remove(page_frame)
            page_frame.destroy()
            
            # If this was the only page in its spread, remove the spread frame
            if not spread_frame.winfo_children():
                spread_frame.destroy()
            
            # Renumber remaining pages
            for i, page in enumerate(self.pages, 1):
                page.configure(text=f"Page {i}")
                page.page_num = i
            
            # Reorganize pages if needed
            self.reorganize_pages()
        else:
            messagebox.showwarning("Warning", "Cannot delete the last page")
            
    def reorganize_pages(self):
        """Reorganize pages to maintain proper spread layout"""
        # Save the current pages' data
        pages_data = []
        for page in self.pages:
            pages_data.append({
                'type': page.page_type.get(),
                'fields': {name: widget.get("1.0", tk.END).strip() if isinstance(widget, (ScrolledText, tk.Text))
                         else widget.get()
                         for name, widget in page.current_fields.items()}
            })
        
        # Clear all existing pages and their containers
        for page in self.pages:
            page.destroy()
        self.pages.clear()
        
        for child in self.pages_container.winfo_children():
            child.destroy()
            
        # Rebuild spreads with new page frames
        for i in range(0, len(pages_data), 2):
            spread_frame = ttk.Frame(self.pages_container)
            spread_frame.pack(fill=tk.X, pady=5)
            
            # Create new left page
            left_page = PageFrame(
                spread_frame,
                i + 1,
                on_delete=self.delete_page
            )
            left_page.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=2)
            
            # Restore left page data
            left_page.page_type.set(pages_data[i]['type'])
            left_page.update_page_fields()
            for field_name, value in pages_data[i]['fields'].items():
                if field_name in left_page.current_fields:
                    widget = left_page.current_fields[field_name]
                    if isinstance(widget, (ScrolledText, tk.Text)):
                        widget.delete("1.0", tk.END)
                        widget.insert("1.0", value)
                    else:
                        widget.delete(0, tk.END)
                        widget.insert(0, value)
            self.pages.append(left_page)
            
            # Create new right page if it exists
            if i + 1 < len(pages_data):
                right_page = PageFrame(
                    spread_frame,
                    i + 2,
                    on_delete=self.delete_page
                )
                right_page.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=2)
                
                # Restore right page data
                right_page.page_type.set(pages_data[i + 1]['type'])
                right_page.update_page_fields()
                for field_name, value in pages_data[i + 1]['fields'].items():
                    if field_name in right_page.current_fields:
                        widget = right_page.current_fields[field_name]
                        if isinstance(widget, (ScrolledText, tk.Text)):
                            widget.delete("1.0", tk.END)
                            widget.insert("1.0", value)
                        else:
                            widget.delete(0, tk.END)
                            widget.insert(0, value)
                self.pages.append(right_page)

    def add_category(self):
        category = simpledialog.askstring("Add Category", "Enter category name:")
        if category:
            self.category_list.insert(tk.END, category)
            self.save_categories()

    def remove_category(self):
        selection = self.category_list.curselection()
        if selection:
            self.category_list.delete(selection)
            self.save_categories()

    def save_categories(self):
        categories = list(self.category_list.get(0, tk.END))
        try:
            with open("patchouli_categories.json", "w") as f:
                json.dump(categories, f)
        except Exception as e:
            messagebox.showerror("Error", f"Failed to save categories: {str(e)}")

    def load_categories(self):
        try:
            if os.path.exists("patchouli_categories.json"):
                with open("patchouli_categories.json", "r") as f:
                    categories = json.load(f)
                    for category in categories:
                        self.category_list.insert(tk.END, category)
        except Exception as e:
            messagebox.showerror("Error", f"Failed to load categories: {str(e)}")

    def export_categories(self):
        export_path = filedialog.askdirectory(
            title="Select Directory to Export Categories"
        )
        if not export_path:
            return
            
        categories = list(self.category_list.get(0, tk.END))
        for category in categories:
            category_dir = os.path.join(export_path, category)
            os.makedirs(category_dir, exist_ok=True)
            
        messagebox.showinfo("Success", "Categories exported successfully!")

    def save_book(self):
        if not self.current_file:
            self.current_file = filedialog.asksaveasfilename(
                defaultextension=".json",
                filetypes=[("JSON files", "*.json"), ("All files", "*.*")],
                initialdir="patchouli_books/survival_guide/en_us/entries"
            )
            if not self.current_file:
                return

        book_data = {
            "name": self.name_var.get(),
            "category": self.category_var.get(),
            "icon": self.icon_var.get(),
            "priority": self.priority_var.get(),
            "sortnum": int(self.sortnum_var.get()) if self.sortnum_var.get().isdigit() else 0,
            "pages": []
        }

        for page in self.pages:
            book_data["pages"].append(page.get_page_data())

        try:
            with open(self.current_file, 'w', encoding='utf-8') as f:
                json.dump(book_data, f, indent=4)
            messagebox.showinfo("Success", "Book saved successfully!")
        except Exception as e:
            messagebox.showerror("Error", f"Failed to save book: {str(e)}")

    def load_book(self):
        file_path = filedialog.askopenfilename(
            filetypes=[("JSON files", "*.json"), ("All files", "*.*")],
            initialdir="patchouli_books/survival_guide/en_us/entries"
        )
        if not file_path:
            return

        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                data = json.load(f)

            self.current_file = file_path
            self.name_var.set(data.get("name", ""))
            self.category_var.set(data.get("category", ""))
            self.icon_var.set(data.get("icon", ""))
            self.priority_var.set(data.get("priority", False))
            self.sortnum_var.set(str(data.get("sortnum", 0)))

            # Clear existing pages
            for page in self.pages:
                page.destroy()
            self.pages.clear()
            
            # Clear the pages container
            for child in self.pages_container.winfo_children():
                child.destroy()

            # Add new pages in spreads
            pages_data = data.get("pages", [])
            for i in range(0, len(pages_data), 2):
                spread_frame = ttk.Frame(self.pages_container)
                spread_frame.pack(fill=tk.X, pady=5)
                
                # Create left page
                left_page = PageFrame(
                    spread_frame,
                    i + 1,
                    on_delete=self.delete_page
                )
                left_page.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=2)
                left_page.set_page_data(pages_data[i])
                self.pages.append(left_page)
                
                # Create right page if it exists
                if i + 1 < len(pages_data):
                    right_page = PageFrame(
                        spread_frame,
                        i + 2,
                        on_delete=self.delete_page
                    )
                    right_page.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=2)
                    right_page.set_page_data(pages_data[i + 1])
                    self.pages.append(right_page)

            if not self.pages:
                self.add_page()

        except Exception as e:
            messagebox.showerror("Error", f"Failed to load book: {str(e)}")

    def new_book(self):
        self.current_file = None
        self.name_var.set("")
        self.category_var.set("")
        self.icon_var.set("")
        self.priority_var.set(False)
        self.sortnum_var.set("0")

        for page in self.pages:
            page.destroy()
        self.pages.clear()
        self.add_page()

if __name__ == "__main__":
    root = tk.Tk()
    app = PatchouliEditor(root)
    root.mainloop()