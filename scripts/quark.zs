import crafttweaker.item.IItemStack;

recipes.remove(<quark:pickarang>);
scripts.utils.addShaped("pickarang", <quark:pickarang>, [
	[<thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:4>, <thebetweenlands:life_crystal>], 
	[null, null, <thebetweenlands:items_misc:4>], 
	[null, null, <thebetweenlands:items_misc:19>]
]);
recipes.remove(<quark:paper_lantern>);
scripts.utils.addShaped("paper_lantern", <quark:paper_lantern>, [
	[<thebetweenlands:items_misc:32>, <ore:stickWood>, <thebetweenlands:items_misc:32>], 
	[<thebetweenlands:items_misc:32>, <thebetweenlands:critter>.withTag({Entity: {id: "thebetweenlands:firefly"}}), <thebetweenlands:items_misc:32>], 
	[<thebetweenlands:items_misc:32>, <ore:stickWood>, <thebetweenlands:items_misc:32>]
]);

recipes.remove(<quark:color_slime>);
scripts.utils.addShaped("color_slime", <quark:color_slime>, [
	[<thebetweenlands:sap_spit>, <thebetweenlands:sap_spit>], 
	[<thebetweenlands:sap_spit>, <thebetweenlands:sap_spit>]
]);

scripts.utils.addShaped("paper_lantern_candle", <quark:paper_lantern>, [[<thebetweenlands:items_misc:32>, <ore:stickWood>, <thebetweenlands:items_misc:32>], [<thebetweenlands:items_misc:32>, <ore:candles>, <thebetweenlands:items_misc:32>], [<thebetweenlands:items_misc:32>, <ore:stickWood>, <thebetweenlands:items_misc:32>]]);


scripts.utils.addShaped("backpack", <quark:backpack>, [
	[<ore:leather>, <minecraft:tripwire_hook>, <ore:leather>],
	[<ore:leather>, <ore:chest>, <ore:leather>],
	[<ore:leather>, <ore:leather>, <ore:leather>]
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
	<thebetweenlands:log_rotten_bark:*>
] as IItemStack[];


recipes.remove(<quark:custom_chest:*>);
recipes.remove(<quark:custom_bookshelf:*>);

for i, wood in quarkChestPlank {
	scripts.utils.addShaped("custom_chest_" ~ i, <quark:custom_chest>.definition.makeStack(i), [
		[wood, wood, wood],
		[wood, null, wood],
		[wood, wood, wood]
	]);

	scripts.utils.addShaped("custom_bookshelf_" ~ i, <quark:custom_bookshelf>.definition.makeStack(i), [
	[wood, wood, wood], 
	[<minecraft:book>, <minecraft:book>, <minecraft:book>], 
	[wood, wood, wood]
]);
}

recipes.remove(<quark:chain>);
scripts.utils.addShaped("chain", <quark:chain> * 3, [
	[<ore:nuggetSyrmorite>, <ore:nuggetSyrmorite>, null], 
	[<ore:nuggetSyrmorite>, <ore:ingotSyrmorite>, null], 
	[null, null, <ore:ingotSyrmorite>]
]);

recipes.remove(<quark:glass_item_frame>);
//scripts.utils.addShaped("glass_item_frame", <quark:glass_item_frame> * 2, [
//	[<thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>], 
//	[<thebetweenlands:silt_glass_pane>, <minecraft:item_frame>, <thebetweenlands:silt_glass_pane>], 
//	[<thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>]
//]);

recipes.remove(<quark:lit_lamp>);
scripts.utils.addShapeless("quark-lit_lamp-modified", <quark:lit_lamp>, [<minecraft:redstone_lamp>, <minecraft:redstone_torch>]);

recipes.remove(<quark:redstone_randomizer>);
scripts.utils.addShaped("redstone_randomizer", <quark:redstone_randomizer>, [
	[null, <minecraft:redstone_torch>, null],
	[<minecraft:redstone_torch>, <thebetweenlands:items_misc:47>, <minecraft:redstone_torch>],
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>]
]);

recipes.remove(<quark:tiny_potato>);
recipes.addHiddenShapeless("tiny_pebble", <quark:tiny_potato>, [<thebetweenlands:items_misc:50>, <thebetweenlands:items_misc:19>]);
recipes.addHiddenShapeless("angry_tiny_pebble", <quark:tiny_potato>.withTag({angery: 1 as byte}), [<thebetweenlands:angry_pebble>, <thebetweenlands:items_misc:19>]);

val sidingTypes = [
	<quark:vertical_planks>,
	<quark:vertical_planks:1>,
	<quark:vertical_planks:2>,
	<quark:vertical_planks:3>,
	<quark:vertical_planks:4>,
	<quark:vertical_planks:5>
] as IItemStack[];

val woodTypes = [
	<thebetweenlands:weedwood_planks>, 
	<thebetweenlands:rubber_tree_planks>,
	<thebetweenlands:giant_root_planks>,
	<thebetweenlands:hearthgrove_planks>,
	<thebetweenlands:nibbletwig_planks>,
	<thebetweenlands:rotten_planks>
] as IItemStack[];

for i, siding in sidingTypes {
  recipes.remove(siding);
  scripts.utils.addShaped("quark_modified_vertical_planks_" ~ i, siding, [
    [ woodTypes[i] ],
    [ woodTypes[i] ],
    [ woodTypes[i] ]
  ]);
}

<quark:vertical_planks>.displayName = "Weedwood Siding";
<quark:vertical_planks:1>.displayName = "Rubber Siding";
<quark:vertical_planks:2>.displayName = "Giant Root Siding";
<quark:vertical_planks:3>.displayName = "Hearthgrove Siding";
<quark:vertical_planks:4>.displayName = "Nibbletwig Siding";
<quark:vertical_planks:5>.displayName = "Rotten Siding";

<quark:tiny_potato>.displayName = "Tiny Pebble";
<quark:tiny_potato>.withTag({angery: 1 as byte}).displayName = "Angry Tiny Pebble";

<quark:chain>.displayName = "Syrmorite Chain";

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

<quark:custom_bookshelf>.displayName = "Rubber Tree Bookshelf";
<quark:custom_bookshelf:1>.displayName = "Giant Root Bookshelf";
<quark:custom_bookshelf:2>.displayName = "Hearthgrove Bookshelf";
<quark:custom_bookshelf:3>.displayName = "Nibbletwig Bookshelf";
<quark:custom_bookshelf:4>.displayName = "Rotten Bark Bookshelf";

<quark:color_slime>.displayName = "Block of Sap Spit";