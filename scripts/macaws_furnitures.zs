import crafttweaker.item.IItemStack;

recipes.remove(<mcwfurnitures:oak_plate>);
recipes.remove(<mcwfurnitures:spruce_plate>);
recipes.remove(<mcwfurnitures:birch_plate>);
recipes.remove(<mcwfurnitures:jungle_plate>);
recipes.remove(<mcwfurnitures:acacia_plate>);
recipes.remove(<mcwfurnitures:dark_oak_plate>);
recipes.remove(<mcwfurnitures:cabinet_door>);

recipes.addShaped("mcwfurnitures_oak_plate", <mcwfurnitures:oak_plate> * 8, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <thebetweenlands:log_weedwood> | <thebetweenlands:log_weedwood:12>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped("mcwfurnitures_spruce_plate", <mcwfurnitures:spruce_plate> * 8, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <thebetweenlands:log_rubber>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped("mcwfurnitures_birch_plate", <mcwfurnitures:birch_plate> * 8, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <thebetweenlands:giant_root>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped("mcwfurnitures_jungle_plate", <mcwfurnitures:jungle_plate> * 8, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <thebetweenlands:log_hearthgrove:1> | <thebetweenlands:log_hearthgrove:3>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped("mcwfurnitures_acacia_plate", <mcwfurnitures:acacia_plate> * 8, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <thebetweenlands:log_nibbletwig> | <thebetweenlands:log_nibbletwig:12>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped("mcwfurnitures_dark_oak_plate", <mcwfurnitures:dark_oak_plate> * 8, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <thebetweenlands:log_rotten_bark>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped("mcwfurnitures_cabinet_door", <mcwfurnitures:cabinet_door>, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:chest>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<mcwfurnitures:iron_handle>);
recipes.addShaped("iron_handle", <mcwfurnitures:iron_handle>, [
	[<ore:nuggetSyrmorite>, <ore:nuggetSyrmorite>]
]);



// Furnitures
// oak
recipes.remove(<mcwfurnitures:nightstand_8>);
recipes.remove(<mcwfurnitures:nightstand_9>);
recipes.remove(<mcwfurnitures:nightstand_11>);
recipes.remove(<mcwfurnitures:dresser_14>);
recipes.remove(<mcwfurnitures:dresser_15>);
recipes.remove(<mcwfurnitures:dresser_16>);
recipes.remove(<mcwfurnitures:dresser_18>);
recipes.remove(<mcwfurnitures:desk4>);
recipes.remove(<mcwfurnitures:desk_8>);
recipes.remove(<mcwfurnitures:desk_9>);
recipes.remove(<mcwfurnitures:furniture_4>);
recipes.remove(<mcwfurnitures:furniture_8>);

recipes.remove(<mcwfurnitures:spruce_nightstand_8>);
recipes.remove(<mcwfurnitures:spruce_nightstand_9>);
recipes.remove(<mcwfurnitures:spruce_nightstand_11>);
recipes.remove(<mcwfurnitures:spruce_dresser_14>);
recipes.remove(<mcwfurnitures:spruce_dresser_15>);
recipes.remove(<mcwfurnitures:spruce_dresser_16>);
recipes.remove(<mcwfurnitures:spruce_dresser_18>);
recipes.remove(<mcwfurnitures:spruce_desk4>);
recipes.remove(<mcwfurnitures:spruce_desk_8>);
recipes.remove(<mcwfurnitures:spruce_desk_9>);
recipes.remove(<mcwfurnitures:spruce_furniture_4>);
recipes.remove(<mcwfurnitures:spruce_furniture_8>);

recipes.remove(<mcwfurnitures:birch_nightstand_8>);
recipes.remove(<mcwfurnitures:birch_nightstand_9>);
recipes.remove(<mcwfurnitures:birch_nightstand_11>);
recipes.remove(<mcwfurnitures:birch_dresser_14>);
recipes.remove(<mcwfurnitures:birch_dresser_15>);
recipes.remove(<mcwfurnitures:birch_dresser_16>);
recipes.remove(<mcwfurnitures:birch_dresser_18>);
recipes.remove(<mcwfurnitures:birch_desk4>);
recipes.remove(<mcwfurnitures:birch_desk_8>);
recipes.remove(<mcwfurnitures:birch_desk_9>);
recipes.remove(<mcwfurnitures:birch_furniture_4>);
recipes.remove(<mcwfurnitures:birch_furniture_8>);

recipes.remove(<mcwfurnitures:jungle_nightstand_8>);
recipes.remove(<mcwfurnitures:jungle_nightstand_9>);
recipes.remove(<mcwfurnitures:jungle_nightstand_11>);
recipes.remove(<mcwfurnitures:jungle_dresser_14>);
recipes.remove(<mcwfurnitures:jungle_dresser_15>);
recipes.remove(<mcwfurnitures:jungle_dresser_16>);
recipes.remove(<mcwfurnitures:jungle_dresser_18>);
recipes.remove(<mcwfurnitures:jungle_desk4>);
recipes.remove(<mcwfurnitures:jungle_desk_8>);
recipes.remove(<mcwfurnitures:jungle_desk_9>);
recipes.remove(<mcwfurnitures:jungle_furniture_4>);
recipes.remove(<mcwfurnitures:jungle_furniture_8>);

recipes.remove(<mcwfurnitures:acacia_nightstand_8>);
recipes.remove(<mcwfurnitures:acacia_nightstand_9>);
recipes.remove(<mcwfurnitures:acacia_nightstand_11>);
recipes.remove(<mcwfurnitures:acacia_dresser_14>);
recipes.remove(<mcwfurnitures:acacia_dresser_15>);
recipes.remove(<mcwfurnitures:acacia_dresser_16>);
recipes.remove(<mcwfurnitures:acacia_dresser_18>);
recipes.remove(<mcwfurnitures:acacia_desk4>);
recipes.remove(<mcwfurnitures:acacia_desk_8>);
recipes.remove(<mcwfurnitures:acacia_desk_9>);
recipes.remove(<mcwfurnitures:acacia_furniture_4>);
recipes.remove(<mcwfurnitures:acacia_furniture_8>);

recipes.remove(<mcwfurnitures:dark_oak_nightstand_8>);
recipes.remove(<mcwfurnitures:dark_oak_nightstand_9>);
recipes.remove(<mcwfurnitures:dark_oak_nightstand_11>);
recipes.remove(<mcwfurnitures:dark_oak_dresser_14>);
recipes.remove(<mcwfurnitures:dark_oak_dresser_15>);
recipes.remove(<mcwfurnitures:dark_oak_dresser_16>);
recipes.remove(<mcwfurnitures:dark_oak_dresser_18>);
recipes.remove(<mcwfurnitures:dark_oak_desk4>);
recipes.remove(<mcwfurnitures:dark_oak_desk_8>);
recipes.remove(<mcwfurnitures:dark_oak_desk_9>);
recipes.remove(<mcwfurnitures:dark_oak_furniture_4>);
recipes.remove(<mcwfurnitures:dark_oak_furniture_8>);


var tempFence = <thebetweenlands:weedwood_log_fence>;
var log1 = <thebetweenlands:log_weedwood>;
var log2 = <thebetweenlands:log_weedwood:12>;

recipes.addShaped("mcwfurnitures_oak_nightstand_8", <mcwfurnitures:nightstand_8>, [[<mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>], [<mcwfurnitures:iron_handle>, <thebetweenlands:silt_glass_pane>, <mcwfurnitures:oak_plate>], [<mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>]]);
recipes.addShaped("mcwfurnitures_oak_nightstand_9", <mcwfurnitures:nightstand_9>, [[<mcwfurnitures:nightstand_11>], [tempFence]]);
recipes.addShaped("mcwfurnitures_oak_nightstand_11", <mcwfurnitures:nightstand_11>, [[<mcwfurnitures:oak_plate>], [tempFence]]);
recipes.addShaped("mcwfurnitures_oak_dresser_14", <mcwfurnitures:dresser_14>, [[<mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>], [log1 | log2, null, log1 | log2], [<mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>]]);
recipes.addShaped("mcwfurnitures_oak_dresser_15", <mcwfurnitures:dresser_15>, [[<mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>, null], [<thebetweenlands:sapling_weedwood>, <thebetweenlands:mud_flower_pot>, <mcwfurnitures:box_2>], [<mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>, null]]);
recipes.addShaped("mcwfurnitures_oak_dresser_16", <mcwfurnitures:dresser_16>, [[null, <mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>], [<mcwfurnitures:box>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>]]);
recipes.addShaped("mcwfurnitures_oak_dresser_18", <mcwfurnitures:dresser_18>, [[null, <mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>], [<mcwfurnitures:nightstand_2>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>]]);
recipes.addShaped("mcwfurnitures_oak_desk4", <mcwfurnitures:desk4>, [[<mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>], [tempFence, null, tempFence]]);
recipes.addShaped("mcwfurnitures_oak_desk_8", <mcwfurnitures:desk_8>, [[<mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>, <mcwfurnitures:oak_plate>], [null, log1 | log2, null]]);
recipes.addShaped("mcwfurnitures_oak_desk_9", <mcwfurnitures:desk_9>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:desk_7>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_oak_furniture_4", <mcwfurnitures:furniture_4>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:furniture_3>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_oak_furniture_8", <mcwfurnitures:furniture_8>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:furniture_9>, <thebetweenlands:silt_glass_pane>]]);

tempFence = <thebetweenlands:rubber_tree_plank_fence>;
log1 = <thebetweenlands:log_rubber>;
log2 = <thebetweenlands:log_rubber>;

recipes.addShaped("mcwfurnitures_spruce_nightstand_8", <mcwfurnitures:spruce_nightstand_8>, [[<mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>], [<mcwfurnitures:iron_handle>, <thebetweenlands:silt_glass_pane>, <mcwfurnitures:spruce_plate>], [<mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>]]);
recipes.addShaped("mcwfurnitures_spruce_nightstand_9", <mcwfurnitures:spruce_nightstand_9>, [[<mcwfurnitures:spruce_nightstand_11>], [tempFence]]);
recipes.addShaped("mcwfurnitures_spruce_nightstand_11", <mcwfurnitures:spruce_nightstand_11>, [[<mcwfurnitures:spruce_plate>], [tempFence]]);
recipes.addShaped("mcwfurnitures_spruce_dresser_14", <mcwfurnitures:spruce_dresser_14>, [[<mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>], [log1 | log2, null, log1 | log2], [<mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>]]);
recipes.addShaped("mcwfurnitures_spruce_dresser_15", <mcwfurnitures:spruce_dresser_15>, [[<mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>, null], [<thebetweenlands:sapling_weedwood>, <thebetweenlands:mud_flower_pot>, <mcwfurnitures:box_2>], [<mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>, null]]);
recipes.addShaped("mcwfurnitures_spruce_dresser_16", <mcwfurnitures:spruce_dresser_16>, [[null, <mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>], [<mcwfurnitures:box>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>]]);
recipes.addShaped("mcwfurnitures_spruce_dresser_18", <mcwfurnitures:spruce_dresser_18>, [[null, <mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>], [<mcwfurnitures:spruce_nightstand_2>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>]]);
recipes.addShaped("mcwfurnitures_spruce_desk4", <mcwfurnitures:spruce_desk4>, [[<mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>], [tempFence, null, tempFence]]);
recipes.addShaped("mcwfurnitures_spruce_desk_8", <mcwfurnitures:spruce_desk_8>, [[<mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>, <mcwfurnitures:spruce_plate>], [null, log1 | log2, null]]);
recipes.addShaped("mcwfurnitures_spruce_desk_9", <mcwfurnitures:spruce_desk_9>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:spruce_desk_7>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_spruce_furniture_4", <mcwfurnitures:spruce_furniture_4>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:spruce_furniture_3>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_spruce_furniture_8", <mcwfurnitures:spruce_furniture_8>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:spruce_furniture_9>, <thebetweenlands:silt_glass_pane>]]);

tempFence = <thebetweenlands:giant_root_plank_fence>;
log1 = <thebetweenlands:giant_root>;
log2 = <thebetweenlands:giant_root>;

recipes.addShaped("mcwfurnitures_birch_nightstand_8", <mcwfurnitures:birch_nightstand_8>, [[<mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>], [<mcwfurnitures:iron_handle>, <thebetweenlands:silt_glass_pane>, <mcwfurnitures:birch_plate>], [<mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>]]);
recipes.addShaped("mcwfurnitures_birch_nightstand_9", <mcwfurnitures:birch_nightstand_9>, [[<mcwfurnitures:birch_nightstand_11>], [tempFence]]);
recipes.addShaped("mcwfurnitures_birch_nightstand_11", <mcwfurnitures:birch_nightstand_11>, [[<mcwfurnitures:birch_plate>], [tempFence]]);
recipes.addShaped("mcwfurnitures_birch_dresser_14", <mcwfurnitures:birch_dresser_14>, [[<mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>], [log1 | log2, null, log1 | log2], [<mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>]]);
recipes.addShaped("mcwfurnitures_birch_dresser_15", <mcwfurnitures:birch_dresser_15>, [[<mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>, null], [<thebetweenlands:sapling_weedwood>, <thebetweenlands:mud_flower_pot>, <mcwfurnitures:box_2>], [<mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>, null]]);
recipes.addShaped("mcwfurnitures_birch_dresser_16", <mcwfurnitures:birch_dresser_16>, [[null, <mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>], [<mcwfurnitures:box>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>]]);
recipes.addShaped("mcwfurnitures_birch_dresser_18", <mcwfurnitures:birch_dresser_18>, [[null, <mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>], [<mcwfurnitures:birch_nightstand_2>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>]]);
recipes.addShaped("mcwfurnitures_birch_desk4", <mcwfurnitures:birch_desk4>, [[<mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>], [tempFence, null, tempFence]]);
recipes.addShaped("mcwfurnitures_birch_desk_8", <mcwfurnitures:birch_desk_8>, [[<mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>, <mcwfurnitures:birch_plate>], [null, log1 | log2, null]]);
recipes.addShaped("mcwfurnitures_birch_desk_9", <mcwfurnitures:birch_desk_9>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:birch_desk_7>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_birch_furniture_4", <mcwfurnitures:birch_furniture_4>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:birch_furniture_3>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_birch_furniture_8", <mcwfurnitures:birch_furniture_8>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:birch_furniture_9>, <thebetweenlands:silt_glass_pane>]]);

tempFence = <thebetweenlands:hearthgrove_plank_fence>;
log1 = <thebetweenlands:log_hearthgrove:1>;
log2 = <thebetweenlands:log_hearthgrove:3>;

recipes.addShaped("mcwfurnitures_jungle_nightstand_8", <mcwfurnitures:jungle_nightstand_8>, [[<mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>], [<mcwfurnitures:iron_handle>, <thebetweenlands:silt_glass_pane>, <mcwfurnitures:jungle_plate>], [<mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>]]);
recipes.addShaped("mcwfurnitures_jungle_nightstand_9", <mcwfurnitures:jungle_nightstand_9>, [[<mcwfurnitures:jungle_nightstand_11>], [tempFence]]);
recipes.addShaped("mcwfurnitures_jungle_nightstand_11", <mcwfurnitures:jungle_nightstand_11>, [[<mcwfurnitures:jungle_plate>], [tempFence]]);
recipes.addShaped("mcwfurnitures_jungle_dresser_14", <mcwfurnitures:jungle_dresser_14>, [[<mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>], [log1 | log2, null, log1 | log2], [<mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>]]);
recipes.addShaped("mcwfurnitures_jungle_dresser_15", <mcwfurnitures:jungle_dresser_15>, [[<mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>, null], [<thebetweenlands:sapling_weedwood>, <thebetweenlands:mud_flower_pot>, <mcwfurnitures:box_2>], [<mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>, null]]);
recipes.addShaped("mcwfurnitures_jungle_dresser_16", <mcwfurnitures:jungle_dresser_16>, [[null, <mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>], [<mcwfurnitures:box>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>]]);
recipes.addShaped("mcwfurnitures_jungle_dresser_18", <mcwfurnitures:jungle_dresser_18>, [[null, <mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>], [<mcwfurnitures:jungle_nightstand_2>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>]]);
recipes.addShaped("mcwfurnitures_jungle_desk4", <mcwfurnitures:jungle_desk4>, [[<mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>], [tempFence, null, tempFence]]);
recipes.addShaped("mcwfurnitures_jungle_desk_8", <mcwfurnitures:jungle_desk_8>, [[<mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>, <mcwfurnitures:jungle_plate>], [null, log1 | log2, null]]);
recipes.addShaped("mcwfurnitures_jungle_desk_9", <mcwfurnitures:jungle_desk_9>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:jungle_desk_7>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_jungle_furniture_4", <mcwfurnitures:jungle_furniture_4>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:jungle_furniture_3>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_jungle_furniture_8", <mcwfurnitures:jungle_furniture_8>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:jungle_furniture_9>, <thebetweenlands:silt_glass_pane>]]);

tempFence = <thebetweenlands:nibbletwig_plank_fence>;
log1 = <thebetweenlands:log_nibbletwig>;
log2 = <thebetweenlands:log_nibbletwig:12>;

recipes.addShaped("mcwfurnitures_acacia_nightstand_8", <mcwfurnitures:acacia_nightstand_8>, [[<mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>], [<mcwfurnitures:iron_handle>, <thebetweenlands:silt_glass_pane>, <mcwfurnitures:acacia_plate>], [<mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>]]);
recipes.addShaped("mcwfurnitures_acacia_nightstand_9", <mcwfurnitures:acacia_nightstand_9>, [[<mcwfurnitures:acacia_nightstand_11>], [tempFence]]);
recipes.addShaped("mcwfurnitures_acacia_nightstand_11", <mcwfurnitures:acacia_nightstand_11>, [[<mcwfurnitures:acacia_plate>], [tempFence]]);
recipes.addShaped("mcwfurnitures_acacia_dresser_14", <mcwfurnitures:acacia_dresser_14>, [[<mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>], [log1 | log2, null, log1 | log2], [<mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>]]);
recipes.addShaped("mcwfurnitures_acacia_dresser_15", <mcwfurnitures:acacia_dresser_15>, [[<mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>, null], [<thebetweenlands:sapling_weedwood>, <thebetweenlands:mud_flower_pot>, <mcwfurnitures:box_2>], [<mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>, null]]);
recipes.addShaped("mcwfurnitures_acacia_dresser_16", <mcwfurnitures:acacia_dresser_16>, [[null, <mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>], [<mcwfurnitures:box>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>]]);
recipes.addShaped("mcwfurnitures_acacia_dresser_18", <mcwfurnitures:acacia_dresser_18>, [[null, <mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>], [<mcwfurnitures:acacia_nightstand_2>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>]]);
recipes.addShaped("mcwfurnitures_acacia_desk4", <mcwfurnitures:acacia_desk4>, [[<mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>], [tempFence, null, tempFence]]);
recipes.addShaped("mcwfurnitures_acacia_desk_8", <mcwfurnitures:acacia_desk_8>, [[<mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>, <mcwfurnitures:acacia_plate>], [null, log1 | log2, null]]);
recipes.addShaped("mcwfurnitures_acacia_desk_9", <mcwfurnitures:acacia_desk_9>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:acacia_desk_7>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_acacia_furniture_4", <mcwfurnitures:acacia_furniture_4>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:acacia_furniture_3>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_acacia_furniture_8", <mcwfurnitures:acacia_furniture_8>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:acacia_furniture_9>, <thebetweenlands:silt_glass_pane>]]);

tempFence = <thebetweenlands:rotten_plank_fence>;
log1 = <thebetweenlands:log_rotten_bark>;
log2 = <thebetweenlands:log_rotten_bark>;

recipes.addShaped("mcwfurnitures_dark_oak_nightstand_8", <mcwfurnitures:dark_oak_nightstand_8>, [[<mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>], [<mcwfurnitures:iron_handle>, <thebetweenlands:silt_glass_pane>, <mcwfurnitures:dark_oak_plate>], [<mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>]]);
recipes.addShaped("mcwfurnitures_dark_oak_nightstand_9", <mcwfurnitures:dark_oak_nightstand_9>, [[<mcwfurnitures:dark_oak_nightstand_11>], [tempFence]]);
recipes.addShaped("mcwfurnitures_dark_oak_nightstand_11", <mcwfurnitures:dark_oak_nightstand_11>, [[<mcwfurnitures:dark_oak_plate>], [tempFence]]);
recipes.addShaped("mcwfurnitures_dark_oak_dresser_14", <mcwfurnitures:dark_oak_dresser_14>, [[<mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>], [log1 | log2, null, log1 | log2], [<mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>]]);
recipes.addShaped("mcwfurnitures_dark_oak_dresser_15", <mcwfurnitures:dark_oak_dresser_15>, [[<mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>, null], [<thebetweenlands:sapling_weedwood>, <thebetweenlands:mud_flower_pot>, <mcwfurnitures:box_2>], [<mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>, null]]);
recipes.addShaped("mcwfurnitures_dark_oak_dresser_16", <mcwfurnitures:dark_oak_dresser_16>, [[null, <mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>], [<mcwfurnitures:box>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>]]);
recipes.addShaped("mcwfurnitures_dark_oak_dresser_18", <mcwfurnitures:dark_oak_dresser_18>, [[null, <mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>], [<mcwfurnitures:dark_oak_nightstand_2>, <thebetweenlands:mud_flower_pot>, <thebetweenlands:sapling_weedwood>], [null, <mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>]]);
recipes.addShaped("mcwfurnitures_dark_oak_desk4", <mcwfurnitures:dark_oak_desk4>, [[<mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>], [tempFence, null, tempFence]]);
recipes.addShaped("mcwfurnitures_dark_oak_desk_8", <mcwfurnitures:dark_oak_desk_8>, [[<mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>, <mcwfurnitures:dark_oak_plate>], [null, log1 | log2, null]]);
recipes.addShaped("mcwfurnitures_dark_oak_desk_9", <mcwfurnitures:dark_oak_desk_9>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:dark_oak_desk_7>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_dark_oak_furniture_4", <mcwfurnitures:dark_oak_furniture_4>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:dark_oak_furniture_3>, <thebetweenlands:silt_glass_pane>]]);
recipes.addShaped("mcwfurnitures_dark_oak_furniture_8", <mcwfurnitures:dark_oak_furniture_8>, [[<thebetweenlands:silt_glass_pane>, <mcwfurnitures:dark_oak_furniture_9>, <thebetweenlands:silt_glass_pane>]]);



for furniture in loadedMods["mcwfurnitures"].items {
	furniture.displayName = furniture.displayName.replace("Spruce", "Rubber Tree");
	furniture.displayName = furniture.displayName.replace("Birch", "Giant Root");
	furniture.displayName = furniture.displayName.replace("Jungle", "Hearthgrove");
	furniture.displayName = furniture.displayName.replace("Acacia", "Nibbletwig");
	furniture.displayName = furniture.displayName.replace("Dark Oak", "Rotten");
	furniture.displayName = furniture.displayName.replace("Oak", "Weedwood");
}


<mcwfurnitures:oak_plate>.displayName = "Weedwood Plate";
<mcwfurnitures:spruce_plate>.displayName = "Rubber Tree Plate";
<mcwfurnitures:birch_plate>.displayName = "Giant Root Plate";
<mcwfurnitures:jungle_plate>.displayName = "Hearthgrove Plate";
<mcwfurnitures:acacia_plate>.displayName = "Nibbletwig Plate";
<mcwfurnitures:dark_oak_plate>.displayName = "Rotten Bark Plate";
<mcwfurnitures:iron_handle>.displayName = "Syrmorite Handle";