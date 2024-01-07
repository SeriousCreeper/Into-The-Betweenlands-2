import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

recipes.remove(<mcwwindows:window_base>);
scripts.utils.addShaped("mcwwindows_window_base", <mcwwindows:window_base> * 4, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <thebetweenlands:silt_glass_pane>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<mcwwindows:window_centre_bar_base>);
scripts.utils.addShaped("mcwwindows_window_centre_bar_base", <mcwwindows:window_centre_bar_base> * 2, [
	[null, <ore:stickWood>, null], 
	[<ore:stickWood>, <mcwwindows:window_base>, <ore:stickWood>], 
	[null, <ore:stickWood>, null]
]);


val fenceWoodTypes = {
	oak: {
		plank: <thebetweenlands:weedwood_planks>,
		log: <thebetweenlands:log_weedwood>
	},
	spruce: {
		plank: <thebetweenlands:rubber_tree_planks>,
		log: <thebetweenlands:log_rubber>
	},
	birch: {
		plank: <thebetweenlands:giant_root_planks>,
		log: <thebetweenlands:giant_root>
	},
	jungle: {
		plank: <thebetweenlands:hearthgrove_planks>,
		log: <thebetweenlands:log_hearthgrove:1>
	},
	acacia: {
		plank: <thebetweenlands:nibbletwig_planks>,
		log: <thebetweenlands:log_nibbletwig>
	},
	dark_oak: {
		plank: <thebetweenlands:rotten_planks>,
		log: <thebetweenlands:log_rotten_bark>
	}
} as IIngredient[string][string];

for wood in fenceWoodTypes {
	var itemName = itemUtils.getItem("mcwwindows:" ~ wood ~ "_window");
	recipes.remove(itemName);
	scripts.utils.addShaped(wood ~ "_window", itemName * 8, [
		[<mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>], 
		[<mcwwindows:window_centre_bar_base>, fenceWoodTypes[wood].log, <mcwwindows:window_centre_bar_base>], 
		[<mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>]
	]);

	itemName = itemUtils.getItem("mcwwindows:" ~ wood ~ "_plank_window");
	recipes.remove(itemName);
	scripts.utils.addShaped(wood ~ "_plank_window", itemName * 8, [
		[<mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>], 
		[<mcwwindows:window_centre_bar_base>, fenceWoodTypes[wood].plank, <mcwwindows:window_centre_bar_base>], 
		[<mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>]
	]);

	itemName = itemUtils.getItem("mcwwindows:" ~ wood ~ "_window2");
	recipes.remove(itemName);
	scripts.utils.addShaped(wood ~ "_window2", itemName * 8, [
		[<mcwwindows:window_base>, <mcwwindows:window_base>, <mcwwindows:window_base>], 
		[<mcwwindows:window_base>, fenceWoodTypes[wood].log, <mcwwindows:window_base>], 
		[<mcwwindows:window_base>, <mcwwindows:window_base>, <mcwwindows:window_base>]
	]);

	itemName = itemUtils.getItem("mcwwindows:" ~ wood ~ "_plank_window2");
	recipes.remove(itemName);
	scripts.utils.addShaped(wood ~ "_plank_window2", itemName * 8, [
		[<mcwwindows:window_base>, <mcwwindows:window_base>, <mcwwindows:window_base>], 
		[<mcwwindows:window_base>, fenceWoodTypes[wood].plank, <mcwwindows:window_base>], 
		[<mcwwindows:window_base>, <mcwwindows:window_base>, <mcwwindows:window_base>]
	]);
}


for window in loadedMods["mcwwindows"].items {
	window.displayName = window.displayName.replace("Spruce", "Rubber Tree");
	window.displayName = window.displayName.replace("Birch", "Giant Root");
	window.displayName = window.displayName.replace("Jungle", "Hearthgrove");
	window.displayName = window.displayName.replace("Acacia", "Nibbletwig");
	window.displayName = window.displayName.replace("Dark Oak", "Rotten");
	window.displayName = window.displayName.replace("Oak", "Weedwood");
}