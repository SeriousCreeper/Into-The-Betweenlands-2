import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

recipes.remove(<mcwwindows:window_base>);
recipes.addShaped("mcwwindows_window_base", <mcwwindows:window_base> * 4, [
	[<ore:stick>, <ore:stick>, <ore:stick>], 
	[<ore:stick>, <thebetweenlands:silt_glass_pane>, <ore:stick>], 
	[<ore:stick>, <ore:stick>, <ore:stick>]
]);

recipes.remove(<mcwwindows:window_centre_bar_base>);
recipes.addShaped("mcwwindows_window_centre_bar_base", <mcwwindows:window_centre_bar_base> * 2, [
	[null, <ore:stick>, null], 
	[<ore:stick>, <mcwwindows:window_base>, <ore:stick>], 
	[null, <ore:stick>, null]
]);


val fenceWoodTypes = {
	oak: {
		plank: <thebetweenlands:weedwood_planks>,
		log: <thebetweenlands:log_weedwood> | <thebetweenlands:log_weedwood:12>
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
		log: <thebetweenlands:log_hearthgrove:1> | <thebetweenlands:log_hearthgrove:3>
	},
	acacia: {
		plank: <thebetweenlands:nibbletwig_planks>,
		log: <thebetweenlands:log_nibbletwig> | <thebetweenlands:log_nibbletwig:12>
	},
	dark_oak: {
		plank: <thebetweenlands:rotten_planks>,
		log: <thebetweenlands:log_rotten_bark>
	}
} as IIngredient[string][string];

for wood in fenceWoodTypes {
	var itemName = itemUtils.getItem("mcwwindows:" ~ wood ~ "_window");
	recipes.remove(itemName);
	recipes.addShaped(itemName * 8, [
		[<mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>], 
		[<mcwwindows:window_centre_bar_base>, fenceWoodTypes[wood].log, <mcwwindows:window_centre_bar_base>], 
		[<mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>]
	]);

	itemName = itemUtils.getItem("mcwwindows:" ~ wood ~ "_plank_window");
	recipes.remove(itemName);
	recipes.addShaped(itemName * 8, [
		[<mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>], 
		[<mcwwindows:window_centre_bar_base>, fenceWoodTypes[wood].plank, <mcwwindows:window_centre_bar_base>], 
		[<mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>, <mcwwindows:window_centre_bar_base>]
	]);

	itemName = itemUtils.getItem("mcwwindows:" ~ wood ~ "_window2");
	recipes.remove(itemName);
	recipes.addShaped(itemName * 8, [
		[<mcwwindows:window_base>, <mcwwindows:window_base>, <mcwwindows:window_base>], 
		[<mcwwindows:window_base>, fenceWoodTypes[wood].log, <mcwwindows:window_base>], 
		[<mcwwindows:window_base>, <mcwwindows:window_base>, <mcwwindows:window_base>]
	]);

	itemName = itemUtils.getItem("mcwwindows:" ~ wood ~ "_plank_window2");
	recipes.remove(itemName);
	recipes.addShaped(itemName * 8, [
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