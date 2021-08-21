import crafttweaker.item.IItemStack;

recipes.remove(<quark:pickarang>);
recipes.addShaped("pickarang", <quark:pickarang>, [
	[<thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:4>, <thebetweenlands:life_crystal_fragment> | <thebetweenlands:life_crystal>], 
	[null, null, <thebetweenlands:items_misc:4>], 
	[null, null, <thebetweenlands:items_misc:19>]
]);

recipes.remove(<quark:paper_lantern>);
recipes.addShaped("quark-paper_lantern-modified", <quark:paper_lantern>, [
	[<thebetweenlands:items_misc:32>, <ore:stickWood>, <thebetweenlands:items_misc:32>], 
	[<thebetweenlands:items_misc:32>, <thebetweenlands:critter>.withTag({Entity: {id: "thebetweenlands:firefly"}}), <thebetweenlands:items_misc:32>], 
	[<thebetweenlands:items_misc:32>, <ore:stickWood>, <thebetweenlands:items_misc:32>]
]);


val quarkChestPlank = [
	<thebetweenlands:rubber_tree_planks>,
	<thebetweenlands:giant_root_planks>,
	<thebetweenlands:hearthgrove_planks>,
	<thebetweenlands:nibbletwig_planks>,
	<thebetweenlands:rotten_planks>
] as IItemStack[];

val quarkChestLog = [
	<thebetweenlands:log_rubber>,
	<thebetweenlands:giant_root>,
	<thebetweenlands:log_hearthgrove:*>,
	<thebetweenlands:log_nibbletwig:*>,
	<thebetweenlands:log_rotten_bark>
] as IItemStack[];


recipes.remove(<quark:custom_chest:*>);

for i, wood in quarkChestPlank {
	recipes.addShaped("custom_chest_" ~ i, <quark:custom_chest>.definition.makeStack(i), [
		[wood, wood, wood],
		[wood, null, wood],
		[wood, wood, wood]
	]);
}

for i, wood in quarkChestLog {
	recipes.addShaped("convenience_custom_chest_" ~ i, <quark:custom_chest>.definition.makeStack(i) * 4, [
		[wood, wood, wood],
		[wood, null, wood],
		[wood, wood, wood]
	]);
}

recipes.remove(<quark:glass_item_frame>);
recipes.addShaped("glass_item_frame", <quark:glass_item_frame> * 2, [
	[<thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>], 
	[<thebetweenlands:silt_glass_pane>, <minecraft:item_frame>, <thebetweenlands:silt_glass_pane>], 
	[<thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>]
]);

recipes.remove(<quark:lit_lamp>);
recipes.addShapeless("quark-lit_lamp-modified", <quark:lit_lamp>, [<coloredredstone:colored_redstone_lamp:12>, <coloredredstone:colored_redstone_torch_item:12>]);

recipes.remove(<quark:redstone_randomizer>);
recipes.addShaped("redstone_randomizer", <quark:redstone_randomizer>, [
	[null, <coloredredstone:colored_redstone_torch_item:12>, null],
	[<coloredredstone:colored_redstone_torch_item:12>, <thebetweenlands:items_misc:47>, <coloredredstone:colored_redstone_torch_item:12>],
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>]
]);
