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

recipes.addShaped("backpack", <quark:backpack>, [
	[<ore:leather>, <minecraft:tripwire_hook>, <ore:leather>],
	[<ore:leather>, <quark:custom_chest>, <ore:leather>],
	[<ore:leather>, <ore:leather>, <ore:leather>]
]);


val quarkChestPlank = [
	<thebetweenlands:rubber_tree_plank_slab>,
	<thebetweenlands:giant_root_plank_slab>,
	<thebetweenlands:hearthgrove_plank_slab>,
	<thebetweenlands:nibbletwig_plank_slab>,
	<thebetweenlands:rotten_plank_slab>
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
		[wood, <ore:nuggetSyrmorite>, wood],
		[wood, wood, wood]
	]);
}

/*
for i, wood in quarkChestLog {
	recipes.addShaped("convenience_custom_chest_" ~ i, <quark:custom_chest>.definition.makeStack(i) * 4, [
		[wood, wood, wood],
		[wood, null, wood],
		[wood, wood, wood]
	]);
}
*/

recipes.remove(<quark:chain>);
recipes.addShaped("chain", <quark:chain> * 3, [
	[<ore:nuggetSyrmorite>, <ore:nuggetSyrmorite>, null], 
	[<ore:nuggetSyrmorite>, <ore:ingotSyrmorite>, null], 
	[null, null, <ore:ingotSyrmorite>]
]);

recipes.remove(<quark:glass_item_frame>);
recipes.addShaped("glass_item_frame", <quark:glass_item_frame> * 2, [
	[<thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>], 
	[<thebetweenlands:silt_glass_pane>, <minecraft:item_frame>, <thebetweenlands:silt_glass_pane>], 
	[<thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>]
]);

recipes.remove(<quark:lit_lamp>);
recipes.addShapeless("quark-lit_lamp-modified", <quark:lit_lamp>, [<minecraft:redstone_lamp>, <minecraft:redstone_torch>]);

recipes.remove(<quark:redstone_randomizer>);
recipes.addShaped("redstone_randomizer", <quark:redstone_randomizer>, [
	[null, <minecraft:redstone_torch>, null],
	[<minecraft:redstone_torch>, <thebetweenlands:items_misc:47>, <minecraft:redstone_torch>],
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>]
]);

recipes.remove(<quark:tiny_potato>);
recipes.addHiddenShapeless("tiny_pebble", <quark:tiny_potato>, [<thebetweenlands:items_misc:50>, <thebetweenlands:items_misc:19>]);
recipes.addHiddenShapeless("angry_tiny_pebble", <quark:tiny_potato>.withTag({angery: 1 as byte}), [<thebetweenlands:angry_pebble>, <thebetweenlands:items_misc:19>]);

<quark:tiny_potato>.displayName = "Tiny Pebble";
<quark:tiny_potato>.withTag({angery: 1 as byte}).displayName = "Angry Tiny Pebble";

<quark:chain>.displayName = "Syrmorite Chain";
<quark:grate>.displayName = "Syrmorite Grate";

<quark:custom_chest:0>.displayName = "Rubber Tree Chest";
<quark:custom_chest:1>.displayName = "Giant Root Chest";
<quark:custom_chest:2>.displayName = "Hearthgrove Chest";
<quark:custom_chest:3>.displayName = "Nibbletwig Chest";
<quark:custom_chest:4>.displayName = "Rotten Bark Chest";

<quark:custom_chest_trap:0>.displayName = "Rubber Tree Trapped Chest";
<quark:custom_chest_trap:1>.displayName = "Giant Root Trapped Chest";
<quark:custom_chest_trap:2>.displayName = "Hearthgrove Trapped Chest";
<quark:custom_chest_trap:3>.displayName = "Nibbletwig Trapped Chest";
<quark:custom_chest_trap:4>.displayName = "Rotten Bark Trapped Chest";
