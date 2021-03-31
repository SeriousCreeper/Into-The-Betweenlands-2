import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.recipes.IFurnaceRecipe;


// ORE DICT & FIXES
<ore:cobblestone>.remove(<minecraft:cobblestone>);
<ore:stickWood>.remove(<minecraft:stick>);
<ore:hopper>.add(<thebetweenlands:syrmorite_hopper>);
<ore:hopper>.add(<minecraft:hopper>);
<ore:logWood>.remove(<minecraft:log:*>);
<ore:logWood>.remove(<minecraft:log2:*>);

JEI.hideCategory("minecraft.brewing");
JEI.hideCategory("minecraft.anvil");
//JEI.hideCategory("jei.information");


// Colored Redstone
val redstoneItems = [
	<coloredredstone:colored_redstone_dust>,
	<coloredredstone:colored_redstone_block>,
	<coloredredstone:colored_redstone_torch_item>,
	<coloredredstone:colored_redstone_repeater_item>,
	<coloredredstone:colored_redstone_comparator_item>,
	<coloredredstone:colored_redstone_lamp>,
] as IItemStack[];


for item in redstoneItems {
	for i in 0 to 16 {
		val itemDef = item.definition;

		if(i != 12) {
			JEI.removeAndHide(itemDef.makeStack(i));
		}
	}
}

//JEI.removeAndHide(<coloredredstone:colored_redstone_lamp:12>);

recipes.removeByRecipeName("coloredredstone-golden_rail-modified");
recipes.removeByRecipeName("coloredredstone-detector_rail-modified");
recipes.removeByRecipeName("coloredredstone:light_blue_colored_redstone_dust");
recipes.removeByRecipeName("coloredredstone:light_blue_colored_redstone_block_with_dye");
recipes.removeByRecipeName("coloredredstone:light_blue_colored_redstone_torch_with_dye");
recipes.removeByRecipeName("coloredredstone:light_blue_colored_redstone_repeater_with_dye");
recipes.removeByRecipeName("coloredredstone:light_blue_colored_redstone_comparator_with_dye");
//recipes.removeByRecipeName("coloredredstone:light_blue_colored_redstone_lamp_with_dye");


recipes.replaceAllOccurences(<minecraft:iron_ingot>, <thebetweenlands:items_misc:11>);
recipes.replaceAllOccurences(<minecraft:iron_nugget>, <thebetweenlands:items_misc:41>);
recipes.replaceAllOccurences(<thaumcraft:nugget>, <thebetweenlands:items_misc:41>);
recipes.replaceAllOccurences(<minecraft:gold_ingot>, <thebetweenlands:octine_ingot>);
recipes.replaceAllOccurences(<minecraft:gold_nugget>, <thebetweenlands:items_misc:42>);
recipes.replaceAllOccurences(<minecraft:redstone>, <coloredredstone:colored_redstone_dust:12>);
recipes.replaceAllOccurences(<minecraft:redstone_torch>, <coloredredstone:colored_redstone_torch_item:12>);
recipes.replaceAllOccurences(<minecraft:wooden_pressure_plate>, <thebetweenlands:weedwood_plank_pressure_plate>);
recipes.replaceAllOccurences(<minecraft:ladder>, <thebetweenlands:weedwood_ladder>);
recipes.replaceAllOccurences(<minecraft:slime_ball>, <thebetweenlands:sap_spit> | <thebetweenlands:sludge_ball>);
//recipes.replaceAllOccurences(<minecraft:paper>, <thebetweenlands:items_misc:32>);
recipes.replaceAllOccurences(<minecraft:torch>, <thebetweenlands:sulfur_torch>);
recipes.replaceAllOccurences(<minecraft:glowstone_dust>, <thebetweenlands:wisp>);
recipes.replaceAllOccurences(<minecraft:leather>, <thebetweenlands:items_misc:4>);

//recipes.replaceAllOccurences(<minecraft:string>, <thebetweenlands:items_misc:7>);



// VANILLA
val minecraftItems = loadedMods["minecraft"].items;

val itemsToKeep = [
	<minecraft:golden_rail>,
	<minecraft:detector_rail>,
	<minecraft:dispenser>,
	<minecraft:sticky_piston>,
	<minecraft:piston>,
	<minecraft:observer>,
	<minecraft:dropper>,
	<minecraft:lead>,
	<minecraft:armor_stand>,
	<minecraft:minecart>,
	<minecraft:chest_minecart>,
	<minecraft:hopper_minecart>,
	<minecraft:iron_bars>,
	<minecraft:trapped_chest>,
	<minecraft:item_frame>,
	<minecraft:activator_rail>,
	<minecraft:rail>,
	//<minecraft:flint_and_steel>,
	<minecraft:tripwire_hook>,
	<minecraft:string>,
	<minecraft:slime>,
	<minecraft:anvil>,
	<minecraft:book>,
	<minecraft:writable_book>,
	<minecraft:dye:*>,
	<minecraft:name_tag>,
	<minecraft:bookshelf>,
	<minecraft:rotten_flesh>,
	<minecraft:noteblock>,
	<minecraft:milk_bucket>,
] as IItemStack[];


for item in minecraftItems {
	var skip = false;

    for wlItem in itemsToKeep {
    	if(wlItem.matches(item)) {
            skip = true;
            break;
        }
    }

    if(!skip) {
    	JEI.removeAndHide(item);
    	furnace.remove(item);
    }
}




furnace.remove(<minecraft:torch>);
/*
furnace.remove(<minecraft:dye:*>);
furnace.remove(<minecraft:stone>);
furnace.remove(<minecraft:sponge>);
furnace.remove(<minecraft:iron_nugget>);
furnace.remove(<minecraft:gold_nugget>);
furnace.remove(<minecraft:stained_hardened_clay:*>);
furnace.remove(<minecraft:hardened_clay>);
furnace.remove(<minecraft:cooked_fish:*>);
furnace.remove(<minecraft:coal>);
furnace.remove(<minecraft:brick>);
furnace.remove(<minecraft:quartz>);
*/



recipes.remove(<minecraft:dye:*>);



recipes.remove(<minecraft:hopper_minecart>);
recipes.addShaped("hopper_minecart", <minecraft:hopper_minecart>, [[<thebetweenlands:syrmorite_hopper>], [<minecraft:minecart>]]);

recipes.remove(<minecraft:trapped_chest>);
recipes.addShapeless("trapped_chest", <minecraft:trapped_chest>, [<thebetweenlands:weedwood_chest>, <minecraft:tripwire_hook>]);

recipes.remove(<minecraft:item_frame>);
recipes.addShaped("item_frame", <minecraft:item_frame> * 2, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <thebetweenlands:items_misc:4>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<minecraft:armor_stand>);
recipes.addShaped("armor_stand", <minecraft:armor_stand>, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[null, <ore:stickWood>, null], 
	[<ore:stickWood>, <thebetweenlands:smooth_cragrock_slab>, <ore:stickWood>]
]);

recipes.removeByRecipeName("coloredredstone:dropper");

recipes.remove(<minecraft:observer>);
recipes.addShaped("minecraft-observer-modified", <minecraft:observer>, [
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
	[<coloredredstone:colored_redstone_dust:12>, <coloredredstone:colored_redstone_dust:12>, <thebetweenlands:dentrothyst_shard_orange> | <thebetweenlands:dentrothyst_shard_green>], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

recipes.remove(<minecraft:piston>);
recipes.addShaped("minecraft-piston-remodified", <minecraft:piston>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, <thebetweenlands:items_misc:11>, <ore:cobblestone>], [<ore:cobblestone>, <coloredredstone:colored_redstone_dust:12>, <ore:cobblestone>]]);

recipes.remove(<minecraft:sticky_piston>);
recipes.addShaped("sticky_piston", <minecraft:sticky_piston>, [[<thebetweenlands:sap_spit> | <thebetweenlands:sludge_ball>], [<minecraft:piston>]]);

recipes.remove(<minecraft:dispenser>);
recipes.addShaped("minecraft-dispenser-modified", <minecraft:dispenser>, [
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
	[<ore:cobblestone>, <thebetweenlands:weedwood_bow>, <ore:cobblestone>], 
	[<ore:cobblestone>, <coloredredstone:colored_redstone_dust:12>, <ore:cobblestone>]
]);

recipes.addShapedMirrored("easier_dispenser", <minecraft:dispenser>, [
	[null, <thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:7>], 
	[<thebetweenlands:items_misc:20>, <minecraft:dropper>, <thebetweenlands:items_misc:7>], 
	[null, <thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:7>]
]);

recipes.remove(<minecraft:lead>);
recipes.addShaped("lead", <minecraft:lead> * 2, [
	[<thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:7>, null], 
	[<thebetweenlands:items_misc:7>, <thebetweenlands:sap_spit> | <thebetweenlands:sludge_ball>, null], 
	[null, null, <thebetweenlands:items_misc:7>]
]);

recipes.remove(<minecraft:minecart>);
recipes.addShaped("minecraft-minecart-modified", <minecraft:minecart>, [
	[<thebetweenlands:weedwood_planks>, null, <thebetweenlands:weedwood_planks>], 
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>],
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>]]);


recipes.remove(<minecraft:slime>);
recipes.addShaped("slime", <minecraft:slime>, [
	[<thebetweenlands:sludge_ball> | <thebetweenlands:sap_spit>, <thebetweenlands:sludge_ball> | <thebetweenlands:sap_spit>],
	[<thebetweenlands:sludge_ball> | <thebetweenlands:sap_spit>, <thebetweenlands:sludge_ball> | <thebetweenlands:sap_spit>]
]);

/*
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShaped("flint_and_steel", <minecraft:flint_and_steel>, [
	[<thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:45>],
	[<thebetweenlands:items_misc:45>, <thebetweenlands:items_misc:47>]
]);
*/

recipes.remove(<minecraft:anvil>);
recipes.addShaped("minecraft-anvil", <minecraft:anvil>, [
	[<thebetweenlands:syrmorite_block>, <thebetweenlands:syrmorite_block>, <thebetweenlands:syrmorite_block>], 
	[null, <thebetweenlands:items_misc:11>, null], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>]
]);







/*
// dye recipe removal
recipes.removeByRecipeName("minecraft:red_dye_from_tulip");
recipes.removeByRecipeName("minecraft:red_dye_from_beetroot");
recipes.removeByRecipeName("minecraft:red_dye_from_poppy");
recipes.removeByRecipeName("minecraft:red_dye_from_rose_bush");
recipes.removeByRecipeName("minecraft:lapis_lazuli");
recipes.removeByRecipeName("minecraft:light_gray_dye_from_oxeye_daisy");
recipes.removeByRecipeName("minecraft:light_gray_dye_from_azure_bluet");
recipes.removeByRecipeName("minecraft:light_gray_dye_from_white_tulip");
recipes.removeByRecipeName("minecraft:pink_dye_from_pink_tulip");
recipes.removeByRecipeName("minecraft:pink_dye_from_peony");
recipes.removeByRecipeName("minecraft:yellow_dye_from_dandelion");
recipes.removeByRecipeName("minecraft:yellow_dye_from_sunflower");
recipes.removeByRecipeName("minecraft:light_blue_dye_from_blue_orchid");
recipes.removeByRecipeName("minecraft:magenta_dye_from_lilac");
recipes.removeByRecipeName("minecraft:magenta_dye_from_allium");
recipes.removeByRecipeName("minecraft:orange_dye_from_orange_tulip");
recipes.removeByRecipeName("minecraft:bone_meal_from_block");
recipes.removeByRecipeName("minecraft:bone_meal_from_bone");
*/



// SCAFFOLD
JEI.removeAndHide(<notenoughscaffold:iron_scaffold>);

recipes.remove(<notenoughscaffold:wooden_scaffold>);
recipes.addShaped("wooden_scaffold", <notenoughscaffold:wooden_scaffold> * 8, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
	[<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:20>], 
	[<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);




// PLATFORMS
recipes.remove(<platforms:platform:50>);
recipes.addShaped("platforms-platformer-modified", <platforms:platform:50>, [
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:weedwood_planks>, <ore:workbench>, <thebetweenlands:weedwood_planks>], 
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>]
]);

recipes.remove(<platforms:wrench>);
recipes.addShaped("platforms-wrench-modified", <platforms:wrench>, [
	[null, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[null, <minecraft:iron_bars>, null], 
	[<minecraft:iron_bars>, null, null]
]);




// TALL GATES
val gateWoodTypes = [
	<thebetweenlands:weedwood_plank_fence_gate>,
	<thebetweenlands:rubber_tree_plank_fence_gate>,
	<thebetweenlands:giant_root_plank_fence_gate>,
	<thebetweenlands:hearthgrove_plank_fence_gate>,
	<thebetweenlands:nibbletwig_plank_fence_gate>,
	<thebetweenlands:rotten_plank_fence_gate>
] as IItemStack[];

for i, wood in gateWoodTypes {
	recipes.remove(<tallgates:tall_gate>.definition.makeStack(i));
	recipes.addShaped("tallgate_" ~ i, <tallgates:tall_gate>.definition.makeStack(i), [
		[wood],
		[wood]
	]);
}






// HOPPER DUCTS
recipes.remove(<hopperducts:gratedhopper>);
recipes.addShapeless("gratedhopper", <hopperducts:gratedhopper>, [<minecraft:iron_bars>, <thebetweenlands:syrmorite_hopper>]);




// EFFORTLESS BUILDING
JEI.removeAndHide(<effortlessbuilding:randomizer_bag>);
JEI.removeAndHide(<effortlessbuilding:reach_upgrade1>);
JEI.removeAndHide(<effortlessbuilding:reach_upgrade2>);
JEI.removeAndHide(<effortlessbuilding:reach_upgrade3>);




// STATUES
recipes.remove(<statues:palette>);
recipes.addShaped("palette", <statues:palette>, [[<thebetweenlands:items_crushed:32>, <thebetweenlands:items_crushed:45>], [<thebetweenlands:items_crushed:28>, <ore:plankWood>]]);




// COLORED REDSTONE
recipes.remove(<coloredredstone:colored_redstone_comparator_item:12>);
recipes.addShaped("light_blue_colored_redstone_comparator", <coloredredstone:colored_redstone_comparator_item:12>, [
	[null, <coloredredstone:colored_redstone_torch_item:12>, null],
	[<coloredredstone:colored_redstone_torch_item:12>, <thebetweenlands:dentrothyst_shard_orange> | <thebetweenlands:dentrothyst_shard_green>, <coloredredstone:colored_redstone_torch_item:12>],
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>]
]);


recipes.remove(<coloredredstone:colored_redstone_repeater_item:12>);
recipes.addShaped("light_blue_colored_redstone_repeater", <coloredredstone:colored_redstone_repeater_item:12>, [
	[<coloredredstone:colored_redstone_torch_item:12>, <coloredredstone:colored_redstone_dust:12>, <coloredredstone:colored_redstone_torch_item:12>], 
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>]
]);

recipes.remove(<coloredredstone:colored_redstone_lamp:12>);
recipes.addShaped("light_blue_colored_redstone_lamp", <coloredredstone:colored_redstone_lamp:12> * 2, [
	[<coloredredstone:colored_redstone_dust:12>, <thebetweenlands:silt_glass>, <coloredredstone:colored_redstone_dust:12>],
	[<thebetweenlands:silt_glass>, <thebetweenlands:bulb_capped_mushroom_cap>, <thebetweenlands:silt_glass>],
	[<coloredredstone:colored_redstone_dust:12>, <thebetweenlands:silt_glass>, <coloredredstone:colored_redstone_dust:12>]
]);




// REDSTONE PASTE
/*
recipes.remove(<redstonepaste:stickyrepeater>);
recipes.addShapeless("stickyrepeater", <redstonepaste:stickyrepeater>, [<coloredredstone:colored_redstone_repeater_item:12>, <thebetweenlands:sap_spit> | <thebetweenlands:sludge_ball>]);

recipes.remove(<redstonepaste:stickycomparator>);
recipes.addShapeless("stickycomparator", <redstonepaste:stickycomparator>, [<coloredredstone:colored_redstone_comparator_item:12>, <thebetweenlands:sap_spit> | <thebetweenlands:sludge_ball>]);
*/




// FAIRY LIGHTS
/*
recipes.remove(<fairylights:letter_bunting>);

for i in 112 to 223 {
	JEI.removeAndHide(<fairylights:light>.definition.makeStack(i));
}

recipes.remove(<fairylights:ladder>);
recipes.addShaped("stepladder", <fairylights:ladder>, [
	[<thebetweenlands:weedwood_ladder>, <ore:stickWood>], 
	[<thebetweenlands:weedwood_ladder>, <ore:stickWood>], 
	[<thebetweenlands:weedwood_ladder>, <ore:stickWood>]
]);
*/




// FTB QUESTS
/*
JEI.removeAndHide(<ftbquests:screen:*>);
JEI.removeAndHide(<ftbquests:progress_detector:*>);
JEI.removeAndHide(<ftbquests:detector:*>);
JEI.removeAndHide(<ftbquests:progress_screen:*>);
JEI.removeAndHide(<ftbquests:chest:*>);
JEI.removeAndHide(<ftbquests:loot_crate_storage:*>);
JEI.removeAndHide(<ftbquests:loot_crate_opener:*>);
JEI.removeAndHide(<ftbquests:barrier:*>);
JEI.removeAndHide(<ftbquests:reward_collector:*>);
JEI.removeAndHide(<itemfilters:filter>);
JEI.removeAndHide(<itemfilters:missing>);

recipes.remove(<ftbquests:book>);
recipes.addShaped("quest_book", <ftbquests:book>, [
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>],
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:4>]
]);
*/



// QUARK
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




// WEIRDING GADGETS
recipes.remove(<weirdinggadget:weirding_gadget>);
recipes.addShaped("weirdinggadget-weirding_gadget-remodified", <weirdinggadget:weirding_gadget>, [
	[<thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>], 
	[<thebetweenlands:octine_block>, <thebetweenlands:life_crystal:0>, <thebetweenlands:octine_block>], 
	[<thebetweenlands:octine_block>, <thebetweenlands:items_misc:11>, <thebetweenlands:octine_block>]
]);




// GRAVESTONE
JEI.removeAndHide(<gravestone:gravestone>);
JEI.removeAndHide(<gravestone:death_info>);




// UPPERS
recipes.remove(<uppers:upper>);
recipes.addShaped("uppers-upper-modified", <uppers:upper>, [
	[null, <thebetweenlands:items_misc:11>, null], 
	[<thebetweenlands:items_misc:11>, <ore:chestWood>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>]
]);

recipes.addShaped("uppers-upper-modified-2", <uppers:upper>, [
	[null, <thebetweenlands:items_misc:11>, null], 
	[<thebetweenlands:items_misc:11>, <ore:logWood>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <ore:logWood>, <thebetweenlands:items_misc:11>]
]);

recipes.addShapeless("upper_alt", <uppers:upper>, [<thebetweenlands:syrmorite_hopper>]);
recipes.addShapeless("upper_alt_2", <thebetweenlands:syrmorite_hopper>, [<uppers:upper>]);




// MACAW
JEI.removeAndHide(<mcwbridges:iron_platform>);
//JEI.removeAndHide(<mcwbridges:iron_rod>);
//JEI.removeAndHide(<mcwbridges:iron_armrest>);
//JEI.removeAndHide(<mcwbridges:most1>);
//JEI.removeAndHide(<mcwbridges:most2>);


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
		[<minecraft:string>, null, <minecraft:string>], 
		[bridgeFenceTypes[i], null, bridgeFenceTypes[i]],
		[bridgeSlabTypes[i], bridgeSlabTypes[i], bridgeSlabTypes[i]]
	]);

	recipes.remove(ropeBridgeTypes[i]);
	recipes.addShaped("mcwbridges-rope_" ~ i, ropeBridgeTypes[i] * 4, [
		[<minecraft:string>, null, <minecraft:string>], 
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
	[<thebetweenlands:items_misc:14>, <minecraft:string>, <thebetweenlands:items_misc:14>], 
	[<thebetweenlands:items_misc:14>, <thebetweenlands:items_misc:14>, <thebetweenlands:items_misc:14>]
]);

recipes.remove(<mcwbridges:most1>);
recipes.addShaped("mcwbridges-iron_bridge_middle", <mcwbridges:most1>, [
	[<mcwbridges:iron_armrest>, <embers:plate_iron>, <mcwbridges:iron_armrest>]
]);



// THE BETWEENLANDS
recipes.addShaped("more_weedwood_sticks", <thebetweenlands:items_misc:20> * 16, [
	[<thebetweenlands:log_weedwood:12> | <thebetweenlands:log_weedwood:0>], 
	[<thebetweenlands:log_weedwood:12> | <thebetweenlands:log_weedwood:0>]
]);

val weedWoodLogs = <thebetweenlands:weedwood> | <thebetweenlands:log_weedwood:12> | <thebetweenlands:log_weedwood:0>;

recipes.addShaped("more_weedwood_chests", <thebetweenlands:weedwood_chest> * 4, [
	[weedWoodLogs, weedWoodLogs, weedWoodLogs], 
	[weedWoodLogs, null, weedWoodLogs],
	[weedWoodLogs, weedWoodLogs, weedWoodLogs]
]);


furnace.addRecipe(<thebetweenlands:items_misc:13>, <ore:logWood>);

recipes.remove(<thebetweenlands:swamp_talisman>);

recipes.addShapeless("convenient_dual_furnace", <thebetweenlands:sulfur_furnace_dual>, [<thebetweenlands:sulfur_furnace>, <thebetweenlands:sulfur_furnace>]);

recipes.remove(<thebetweenlands:syrmorite_hopper>);
recipes.addShaped("syrmorite_hopper", <thebetweenlands:syrmorite_hopper>, [
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <ore:chestWood>, <thebetweenlands:items_misc:11>], 
	[null, <thebetweenlands:items_misc:11>, null]
]);

recipes.addShaped("syrmorite_hopper_2", <thebetweenlands:syrmorite_hopper>, [
	[<thebetweenlands:items_misc:11>, <ore:logWood>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <ore:logWood>, <thebetweenlands:items_misc:11>], 
	[null, <thebetweenlands:items_misc:11>, null]
]);

recipes.addShaped("mushroom_stalk", <thebetweenlands:bulb_capped_mushroom_stalk>, [
	[<thebetweenlands:bulb_capped_mushroom_cap>, <thebetweenlands:bulb_capped_mushroom_cap>],
	[<thebetweenlands:bulb_capped_mushroom_cap>, <thebetweenlands:bulb_capped_mushroom_cap>]
]);

recipes.remove(<thebetweenlands:gallery_frame_small>);
recipes.addShaped("thebetweenlands-gallery_frame_small", <thebetweenlands:gallery_frame_small>, [
	[null, <thebetweenlands:items_misc:20>, null], 
	[<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:20>], 
	[null, <thebetweenlands:items_misc:20>, null]
]);

recipes.remove(<minecraft:book>);
recipes.addShaped("book", <minecraft:book>, [
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>],
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:4>]
]);

recipes.remove(<minecraft:writable_book>);
recipes.addShapeless("writable_book", <minecraft:writable_book>, [<minecraft:book>, <thebetweenlands:items_misc:3>, <minecraft:dye>]);

recipes.remove(<minecraft:name_tag>);
recipes.addShaped("name_tag", <minecraft:name_tag>, [
	[null, null, <minecraft:string>],
	[null, <thebetweenlands:items_misc:32>, null],
	[<thebetweenlands:items_misc:32>, null, null]
]);

<ore:slimeball>.add(<thebetweenlands:sludge_ball>);

recipes.remove(<thebetweenlands:syrmorite_trapdoor>);
recipes.addShaped("thebetweenlands-syrmorite_trapdoor", <thebetweenlands:syrmorite_trapdoor>, [
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>]
]);

recipes.remove(<minecraft:bookshelf>);
recipes.addShaped("bookshelf", <minecraft:bookshelf>, [
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>],
	[<minecraft:book>, <minecraft:book>, <minecraft:book>],
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>]
]);


val dyeMap = {
	<minecraft:dye:0> : <thebetweenlands:items_crushed:20>,
/*

	<minecraft:dye:1> : <thebetweenlands:items_crushed:25>,
	<minecraft:dye:2> : <thebetweenlands:items_crushed:0>,
	<minecraft:dye:3> : <thebetweenlands:items_crushed:1>,
	<minecraft:dye:4> : <thebetweenlands:items_crushed:13>,
	<minecraft:dye:4> : <thebetweenlands:items_crushed:11>,
	<minecraft:dye:5> : <thebetweenlands:items_crushed:7>,
	<minecraft:dye:6> : <thebetweenlands:items_crushed:29>,
	<minecraft:dye:7> : <thebetweenlands:items_crushed:9>,
	<minecraft:dye:8> : <thebetweenlands:items_crushed:50>,
	<minecraft:dye:9> : <thebetweenlands:items_crushed:6>,
	<minecraft:dye:10> : <thebetweenlands:items_crushed:3>,
	<minecraft:dye:11> : <thebetweenlands:items_crushed:35>,
	<minecraft:dye:12> : <thebetweenlands:items_crushed:24>,
	<minecraft:dye:13> : <thebetweenlands:items_crushed:10>,
	<minecraft:dye:14> : <thebetweenlands:items_crushed:36>,
	<minecraft:dye:15> : <thebetweenlands:items_crushed:14>,
*/

} as IItemStack[IItemStack];


// CHANGE TO MORTAR RECIPE?
for dye in dyeMap {
//<thebetweenlands:items_crushed:20>

	//recipes.addShapeless(dye * 4, [<thebetweenlands:bl_bucket_rubber:0>.giveBack(<thebetweenlands:bl_bucket>) | <thebetweenlands:bl_bucket_rubber:1>.giveBack(<thebetweenlands:bl_bucket:1>), <thebetweenlands:items_misc:18>, dyeMap[dye]]);
}



// DISPLAY NAMES & TOOLTIPS
<minecraft:minecart>.displayName = "Weedwood Minecart";
<minecraft:iron_bars>.displayName = "Syrmorite Bars";
//<minecraft:flint_and_steel>.displayName = "Firestarter";

<tallgates:tall_gate:0>.displayName = "Tall Weedwood Plank Fence Gate";
<tallgates:tall_gate:1>.displayName = "Tall Rubber Tree Fence Gate";
<tallgates:tall_gate:2>.displayName = "Tall Giant Root Fence Gate";
<tallgates:tall_gate:3>.displayName = "Tall Hearthgrove Plank Fence Gate";
<tallgates:tall_gate:4>.displayName = "Tall Nibbletwig Plank Fence Gate";
<tallgates:tall_gate:5>.displayName = "Tall Rotten Plank Fence Gate";

<quark:lit_lamp>.displayName = "Lit Bluedust Lamp";
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

<coloredredstone:colored_redstone_dust:12>.displayName = "Bluedust";
<coloredredstone:colored_redstone_comparator_item:12>.displayName = "Bluedust Comparator";
<coloredredstone:colored_redstone_repeater_item:12>.displayName = "Bluedust Repeater";
<coloredredstone:colored_redstone_torch_item:12>.displayName = "Bluedust Torch";
<coloredredstone:colored_redstone_block:12>.displayName = "Block of Bluedust";
<coloredredstone:colored_redstone_lamp:12>.displayName = "Bluedust Lamp";

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


<minecraft:string>.displayName = "Swamp Reed Fiber";

<uppers:upper>.displayName = "Syrmorite Upper";

<thebetweenlands:weedwood_rowboat>.addTooltip(format.green("Clicking a boat with a Tar Drip will make it tarred.\nA tarred boat will stay in place and is easier to direct and control."));

/*
<minecraft:dye:15>.displayName = "White Dye";
<minecraft:dye:11>.displayName = "Yellow Dye";
<minecraft:dye:4>.displayName = "Blue Dye";
<minecraft:dye:3>.displayName = "Brown Dye";
<minecraft:dye>.displayName = "Black Dye";
*/

<minecraft:slime>.displayName = "Block of Sludge";
<minecraft:dye>.displayName = "Black Dye";
<minecraft:dye:15>.displayName = "White Dye";
<minecraft:dye:3>.displayName = "Brown Dye";
<minecraft:dye:4>.displayName = "Blue Dye";