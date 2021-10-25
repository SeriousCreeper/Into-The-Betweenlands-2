import mods.jei.JEI;
import crafttweaker.item.IItemStack;


JEI.removeAndHide(<mcwbridges:iron_platform>);


val stringItem = <thebetweenlands:items_misc:7>;


val bridgeTypes = [
	<mcwbridges:oak_log_bridge_middle>,
	<mcwbridges:birch_log_bridge_middle>,
	<mcwbridges:acacia_log_bridge_middle>,
	<mcwbridges:spruce_log_bridge_middle>,
	<mcwbridges:jungle_log_bridge_middle>,
	<mcwbridges:dark_oak_log_bridge_middle>,
] as IItemStack[];

val ropeBridgeEndTypes = [
	<mcwbridges:rope_oak_bridge_end>,
	<mcwbridges:rope_birch_bridge_end>,
	<mcwbridges:rope_acacia_bridge_end>,
	<mcwbridges:rope_spruce_bridge_end>,
	<mcwbridges:rope_jungle_bridge_end>,
	<mcwbridges:rope_dark_oak_bridge_end>,
] as IItemStack[];

val ropeBridgeTypes = [
	<mcwbridges:rope_oak_bridge>,
	<mcwbridges:rope_birch_bridge>,
	<mcwbridges:rope_acacia_bridge>,
	<mcwbridges:rope_spruce_bridge>,
	<mcwbridges:rope_jungle_bridge>,
	<mcwbridges:rope_dark_oak_bridge>,
] as IItemStack[];

val railBridgeTypes = [
	<mcwbridges:oak_rail_bridge>,
	<mcwbridges:birch_rail_bridge>,
	<mcwbridges:acacia_rail_bridge>,
	<mcwbridges:spruce_rail_bridge>,
	<mcwbridges:jungle_rail_bridge>,
	<mcwbridges:dark_oak_rail_bridge>,
] as IItemStack[];


val bridgeSlabTypes = [
	<thebetweenlands:weedwood_plank_slab>,
	<thebetweenlands:giant_root_plank_slab>,
	<thebetweenlands:nibbletwig_plank_slab>,
	<thebetweenlands:rubber_tree_plank_slab>,
	<thebetweenlands:hearthgrove_plank_slab>,
	<thebetweenlands:rotten_plank_slab>,
] as IItemStack[];

val bridgeFenceTypes = [
	<thebetweenlands:weedwood_log_fence>,
	<thebetweenlands:giant_root_plank_fence>,
	<thebetweenlands:nibbletwig_plank_fence>,
	<thebetweenlands:rubber_tree_plank_fence>,
	<thebetweenlands:hearthgrove_plank_fence>,
	<thebetweenlands:rotten_plank_fence>,
] as IItemStack[];


for i, bridge in bridgeTypes {
	recipes.remove(bridge);
	recipes.addShaped("mcwbridges-log_bridge_middle_" ~ i, bridge * 4, [
		[bridgeFenceTypes[i], null, bridgeFenceTypes[i]], 
		[bridgeSlabTypes[i], bridgeSlabTypes[i], bridgeSlabTypes[i]]
	]);

	recipes.remove(ropeBridgeEndTypes[i]);
	recipes.addShaped("mcwbridges-rope_end_" ~ i, ropeBridgeEndTypes[i] * 4, [
		[stringItem, null, stringItem], 
		[bridgeFenceTypes[i], null, bridgeFenceTypes[i]],
		[bridgeSlabTypes[i], bridgeSlabTypes[i], bridgeSlabTypes[i]]
	]);

	recipes.remove(ropeBridgeTypes[i]);
	recipes.addShaped("mcwbridges-rope_" ~ i, ropeBridgeTypes[i] * 4, [
		[stringItem, null, stringItem], 
		[bridgeSlabTypes[i], bridgeSlabTypes[i], bridgeSlabTypes[i]]
	]);

	recipes.remove(railBridgeTypes[i]);
	recipes.addShaped("mcwbridges-rail_bridge_" ~ i, railBridgeTypes[i] * 4, [
		[bridgeFenceTypes[i], null, bridgeFenceTypes[i]], 
		[bridgeFenceTypes[i], bridgeSlabTypes[i], bridgeFenceTypes[i]]
	]);
}


recipes.addShapeless("mcwbridges-oak_log_bridge_middle-back", <mcwbridges:oak_log_bridge_middle>, [<mcwbridges:oak_log_bridge_end>]);
recipes.addShapeless("mcwbridges-birch_log_bridge_middle-back", <mcwbridges:birch_log_bridge_middle>, [<mcwbridges:birch_log_bridge_end>]);
recipes.addShapeless("mcwbridges-acacia_log_bridge_middle-back", <mcwbridges:acacia_log_bridge_middle>, [<mcwbridges:acacia_log_bridge_end>]);
recipes.addShapeless("mcwbridges-spruce_log_bridge_middle-back", <mcwbridges:spruce_log_bridge_middle>, [<mcwbridges:spruce_log_bridge_end>]);
recipes.addShapeless("mcwbridges-jungle_log_bridge_middle-back", <mcwbridges:jungle_log_bridge_middle>, [<mcwbridges:jungle_log_bridge_end>]);
recipes.addShapeless("mcwbridges-dark_oak_log_bridge_middle-back", <mcwbridges:dark_oak_log_bridge_middle>, [<mcwbridges:dark_oak_log_bridge_end>]);


recipes.remove(<mcwbridges:stone_brick_bridge>);
recipes.addShaped("mcwbridges-stone_brick_bridge", <mcwbridges:stone_brick_bridge> * 4, [
	[<thebetweenlands:betweenstone_bricks_mirage>, null, <thebetweenlands:betweenstone_bricks_mirage>], 
	[<thebetweenlands:smooth_betweenstone_slab>, <thebetweenlands:smooth_betweenstone_slab>, <thebetweenlands:smooth_betweenstone_slab>]
]);
recipes.addShaped("mcwbridges-stone_brick_bridge_end-back", <mcwbridges:stone_brick_bridge>, [[<mcwbridges:stone_brick_bridge_end>]]);

recipes.remove(<mcwbridges:brick_bridge>);
recipes.addShaped("mcwbridges-brick_bridge", <mcwbridges:brick_bridge> * 4, [
	[<thebetweenlands:mud_bricks_carved>, null, <thebetweenlands:mud_bricks_carved>], 
	[<thebetweenlands:mud_brick_shingle_slab>, <thebetweenlands:mud_brick_shingle_slab>, <thebetweenlands:mud_brick_shingle_slab>]
]);
recipes.addShaped("mcwbridges-brick_bridge-back", <mcwbridges:brick_bridge>, [[<mcwbridges:brick_bridge_end>]]);


recipes.remove(<mcwbridges:sandstone_bridge>);
recipes.addShaped("mcwbridges-sandstone_bridge", <mcwbridges:sandstone_bridge> * 4, [
	[<thebetweenlands:pitstone_bricks>, null, <thebetweenlands:pitstone_bricks>], 
	[<thebetweenlands:smooth_pitstone_slab>, <thebetweenlands:smooth_pitstone_slab>, <thebetweenlands:smooth_pitstone_slab>]
]);
recipes.addShaped("mcwbridges-sandstone_bridge-back", <mcwbridges:sandstone_bridge>, [[<mcwbridges:sandstone_bridge_end>]]);

recipes.remove(<mcwbridges:orange_sandstone_bridge>);
recipes.addShaped("mcwbridges-orange_sandstone_bridge", <mcwbridges:orange_sandstone_bridge> * 4, [
	[<thebetweenlands:cragrock_bricks>, null, <thebetweenlands:cragrock_bricks>], 
	[<thebetweenlands:smooth_cragrock_slab>, <thebetweenlands:smooth_cragrock_slab>, <thebetweenlands:smooth_cragrock_slab>]
]);
recipes.addShaped("mcwbridges-orange_sandstone_bridge-back", <mcwbridges:orange_sandstone_bridge>, [[<mcwbridges:orange_sandstone_bridge_end>]]);


recipes.remove(<mcwbridges:bamboo_bridge>);
recipes.addShaped("mcwbridges-bamboo_bridge", <mcwbridges:bamboo_bridge> * 4, [
	[<thebetweenlands:items_misc:14>, stringItem, <thebetweenlands:items_misc:14>], 
	[<thebetweenlands:items_misc:14>, <thebetweenlands:items_misc:14>, <thebetweenlands:items_misc:14>]
]);

recipes.remove(<mcwbridges:most1>);
recipes.addShaped("mcwbridges-iron_bridge_middle", <mcwbridges:most1>, [
	[<mcwbridges:iron_armrest>, <immersiveengineering:metal:39>, <mcwbridges:iron_armrest>]
]);




<mcwbridges:oak_log_bridge_middle>.displayName = "Weedwood Bridge Middle";
<mcwbridges:oak_log_bridge_end>.displayName = "Weedwood Bridge End";
<mcwbridges:birch_log_bridge_middle>.displayName = "Giant Root Bridge Middle";
<mcwbridges:birch_log_bridge_end>.displayName = "Giant Root Bridge End";
<mcwbridges:acacia_log_bridge_middle>.displayName = "Nibbletwig Bridge Middle";
<mcwbridges:acacia_log_bridge_end>.displayName = "Nibbletwig Bridge End";
<mcwbridges:spruce_log_bridge_middle>.displayName = "Rubber Tree Bridge Middle";
<mcwbridges:spruce_log_bridge_end>.displayName = "Rubber Tree Bridge End";
<mcwbridges:jungle_log_bridge_middle>.displayName = "Hearthgrove Bridge Middle";
<mcwbridges:jungle_log_bridge_end>.displayName = "Hearthgrove Bridge End";
<mcwbridges:dark_oak_log_bridge_middle>.displayName = "Rotten Bridge Middle";
<mcwbridges:dark_oak_log_bridge_end>.displayName = "Rotten Bridge End";

<mcwbridges:rope_oak_bridge>.displayName = "Rope Weedwood Bridge";
<mcwbridges:rope_oak_bridge_end>.displayName = "Rope Weedwood Bridge End";
<mcwbridges:rope_birch_bridge>.displayName = "Rope Giant Root Bridge";
<mcwbridges:rope_birch_bridge_end>.displayName = "Rope Giant Root Bridge End";
<mcwbridges:rope_acacia_bridge>.displayName = "Rope Nibbletwig Bridge";
<mcwbridges:rope_acacia_bridge_end>.displayName = "Rope Nibbletwig Bridge End";
<mcwbridges:rope_spruce_bridge>.displayName = "Rope Rubber Tree Bridge";
<mcwbridges:rope_spruce_bridge_end>.displayName = "Rope Rubber Tree Bridge End";
<mcwbridges:rope_jungle_bridge>.displayName = "Rope Hearthgrove Bridge";
<mcwbridges:rope_jungle_bridge_end>.displayName = "Rope Hearthgrove Bridge End";
<mcwbridges:rope_dark_oak_bridge>.displayName = "Rope Rotten Bridge";
<mcwbridges:rope_dark_oak_bridge_end>.displayName = "Rope Rotten Bridge End";

<mcwbridges:stone_brick_bridge>.displayName = "Betweenstone Bridge";
<mcwbridges:stone_brick_bridge_end>.displayName = "Betweenstone Bridge End";
<mcwbridges:brick_bridge>.displayName = "Mud Brick Bridge";
<mcwbridges:brick_bridge_end>.displayName = "Mud Brick Bridge End";
<mcwbridges:sandstone_bridge>.displayName = "Pitstone Bridge";
<mcwbridges:sandstone_bridge_end>.displayName = "Pitstone Bridge End";
<mcwbridges:orange_sandstone_bridge>.displayName = "Cragrock Bridge";
<mcwbridges:orange_sandstone_bridge_end>.displayName = "Cragrock Bridge End";
<mcwbridges:bamboo_bridge>.displayName = "Slimy Bone Bridge";

<mcwbridges:oak_rail_bridge>.displayName = "Weedwood Rail Bridge";
<mcwbridges:oak_rail_bridge_powered>.displayName = "Powered Weedwood Rail Bridge";
<mcwbridges:spruce_rail_bridge>.displayName = "Rubber Tree Rail Bridge";
<mcwbridges:spruce_rail_bridge_powered>.displayName = "Powered Rubber Tree Rail Bridge";
<mcwbridges:birch_rail_bridge>.displayName = "Giant Root Rail Bridge";
<mcwbridges:birch_rail_bridge_powered>.displayName = "Powered Giant Root Rail Bridge";
<mcwbridges:jungle_rail_bridge>.displayName = "Hearthgrove Rail Bridge";
<mcwbridges:jungle_rail_bridge_powered>.displayName = "Powered Hearthgrove Rail Bridge";
<mcwbridges:acacia_rail_bridge>.displayName = "Nibbletwig Rail Bridge";
<mcwbridges:acacia_rail_bridge_powered>.displayName = "Powered Nibbletwig Rail Bridge";
<mcwbridges:dark_oak_rail_bridge>.displayName = "Rotten Rail Bridge";
<mcwbridges:dark_oak_rail_bridge_powered>.displayName = "Powered Rotten Rail Bridge";

<mcwbridges:iron_rod>.displayName = "Syrmorite Rod";
<mcwbridges:iron_armrest>.displayName = "Syrmorite Armrest";
<mcwbridges:most1>.displayName = "Syrmorite Bridge Middle";
<mcwbridges:most2>.displayName = "Syrmorite Bridge End";
