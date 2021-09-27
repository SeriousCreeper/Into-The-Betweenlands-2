import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


function addStoneFences(result as IItemStack, bottomBlock as IIngredient, topBlock as IIngredient) {
	recipes.remove(result);
	recipes.addShaped(result * 6, [
		[bottomBlock, topBlock, bottomBlock], 
		[bottomBlock, bottomBlock, bottomBlock]
	]);
}

function addStoneRailings(result as IItemStack, bottomBlock as IIngredient) {
	recipes.remove(result);
	recipes.addShaped(result * 6, [
		[bottomBlock, <minecraft:iron_bars>, bottomBlock], 
		[bottomBlock, bottomBlock, bottomBlock]
	]);
}

addStoneFences(<mcwfences:modern_stone_brick_wall>, <thebetweenlands:betweenstone_bricks>, <thebetweenlands:betweenstone_tiles>);
addStoneFences(<mcwfences:modern_andesite_wall>, <thebetweenlands:cragrock_bricks>, <thebetweenlands:cragrock>);
addStoneFences(<mcwfences:modern_diorite_wall>, <thebetweenlands:limestone_bricks>, <thebetweenlands:limestone>);
addStoneFences(<mcwfences:modern_granite_wall>, <thebetweenlands:mud_bricks>, <thebetweenlands:mud_brick_shingles>);
addStoneFences(<mcwfences:modern_sandstone_wall>, <thebetweenlands:pitstone_bricks>, <thebetweenlands:pitstone>);
addStoneFences(<mcwfences:modern_red_sandstone_wall>, <thebetweenlands:mossy_betweenstone_bricks>, <thebetweenlands:mossy_betweenstone_tiles>);
//addStoneFences(<mcwfences:modern_nether_brick_wall>, <embers:archaic_bricks>, <embers:archaic_tile>);
//addStoneFences(<mcwfences:modern_end_brick_wall>, <embers:block_caminite_brick>, <soot:caminite_large_tile>);

addStoneRailings(<mcwfences:railing_stone_brick_wall>, <thebetweenlands:betweenstone_bricks>);
addStoneRailings(<mcwfences:railing_andesite_wall>, <thebetweenlands:cragrock_bricks>);
addStoneRailings(<mcwfences:railing_diorite_wall>, <thebetweenlands:limestone_bricks>);
addStoneRailings(<mcwfences:railing_granite_wall>, <thebetweenlands:mud_bricks>);
addStoneRailings(<mcwfences:railing_sandstone_wall>, <thebetweenlands:pitstone_bricks>);
addStoneRailings(<mcwfences:railing_red_sandstone_wall>, <thebetweenlands:mossy_betweenstone_bricks>);
//addStoneRailings(<mcwfences:railing_nether_brick_wall>, <embers:archaic_bricks>);
//addStoneRailings(<mcwfences:railing_end_brick_wall>, <embers:block_caminite_brick>);


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
	var itemName = itemUtils.getItem("mcwfences:" ~ wood ~ "_picket_fence");
	recipes.remove(itemName);
	recipes.addShaped(itemName * 3, [[fenceWoodTypes[wood].log, fenceWoodTypes[wood].plank, fenceWoodTypes[wood].log], [fenceWoodTypes[wood].log, <ore:stickWood>, fenceWoodTypes[wood].log]]);

	itemName = itemUtils.getItem("mcwfences:" ~ wood ~ "_stockade_fence");
	recipes.remove(itemName);
	recipes.addShaped(itemName * 3, [[fenceWoodTypes[wood].log, fenceWoodTypes[wood].plank, fenceWoodTypes[wood].log], [fenceWoodTypes[wood].log, fenceWoodTypes[wood].plank, fenceWoodTypes[wood].log]]);

	if(wood != "oak") {
		itemName = itemUtils.getItem("mcwfences:" ~ wood ~ "_horse_fence");
		recipes.remove(itemName);
		recipes.addShaped(itemName * 3, [[fenceWoodTypes[wood].log, <ore:stickWood>, fenceWoodTypes[wood].log], [fenceWoodTypes[wood].log, <ore:stickWood>, fenceWoodTypes[wood].log]]);
		
		itemName = itemUtils.getItem("mcwfences:" ~ wood ~ "_highley_gate");
		recipes.remove(itemName);
		recipes.addShaped(itemName * 1, [[<ore:stickWood>, fenceWoodTypes[wood].log, <ore:stickWood>], [<ore:stickWood>, fenceWoodTypes[wood].log, <ore:stickWood>]]);
	}

	itemName = itemUtils.getItem("mcwfences:" ~ wood ~ "_wired_fence");
	recipes.remove(itemName);
	recipes.addShaped(itemName * 3, [[<ore:stickWood>, <minecraft:iron_bars>, <ore:stickWood>], [<ore:stickWood>, fenceWoodTypes[wood].log, <ore:stickWood>]]);
}


recipes.remove(<mcwfences:oak_horse_fence>);
recipes.addShapeless(<mcwfences:oak_horse_fence>, [<thebetweenlands:weedwood_log_fence>]);
recipes.addShapeless(<thebetweenlands:weedwood_log_fence>, [<mcwfences:oak_horse_fence>]);

recipes.remove(<mcwfences:oak_highley_gate>);
recipes.addShapeless(<mcwfences:oak_highley_gate>, [<thebetweenlands:weedwood_log_fence_gate>]);
recipes.addShapeless(<thebetweenlands:weedwood_log_fence_gate>, [<mcwfences:oak_highley_gate>]);




for fence in loadedMods["mcwfences"].items {
	fence.displayName = fence.displayName.replace("Spruce", "Rubber Tree");
	fence.displayName = fence.displayName.replace("Birch", "Giant Root");
	fence.displayName = fence.displayName.replace("Jungle", "Hearthgrove");
	fence.displayName = fence.displayName.replace("Acacia", "Nibbletwig");
	fence.displayName = fence.displayName.replace("Dark Oak", "Rotten");
	fence.displayName = fence.displayName.replace("Oak", "Weedwood");

	fence.displayName = fence.displayName.replace("End Brick", "Caminite");
	fence.displayName = fence.displayName.replace("Nether Brick", "Archaic");
	fence.displayName = fence.displayName.replace("Red Sandstone", "Mossy Betweenstone");
	fence.displayName = fence.displayName.replace("Sandstone", "Pitstone");
	fence.displayName = fence.displayName.replace("Granite", "Mud Brick");
	fence.displayName = fence.displayName.replace("Diorite", "Limestone");
	fence.displayName = fence.displayName.replace("Andesite", "Cragrock");
	fence.displayName = fence.displayName.replace("Stone", "Betweenstone");
}


