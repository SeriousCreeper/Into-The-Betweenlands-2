import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.recipes.IFurnaceRecipe;
import thaumcraft.aspect.CTAspectStack;



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
			itemDef.makeStack(i).removeAspects(allAspects);
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


//recipes.replaceAllOccurences(<minecraft:iron_ingot>, <thebetweenlands:items_misc:11>);
//recipes.replaceAllOccurences(<minecraft:iron_nugget>, <thebetweenlands:items_misc:41>);
//recipes.replaceAllOccurences(<thaumcraft:nugget>, <thebetweenlands:items_misc:41>);
//recipes.replaceAllOccurences(<minecraft:gold_ingot>, <thebetweenlands:octine_ingot>);
//recipes.replaceAllOccurences(<minecraft:gold_nugget>, <thebetweenlands:items_misc:42>);
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
	//<minecraft:name_tag>,
	<minecraft:bookshelf>,
	<minecraft:noteblock>,
	//<minecraft:milk_bucket>,
	//<minecraft:water_bucket>,
	<minecraft:paper>,
	<minecraft:stained_glass:*>,
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
    	item.removeAspects(allAspects);
    }
}



furnace.remove(<minecraft:torch>);

furnace.remove(<minecraft:dye:*>);
/*
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
recipes.remove(<minecraft:paper>);

recipes.addShapeless("dyePurple", <minecraft:dye:5> * 2, [<minecraft:dye:4>, <minecraft:dye:1>]);
recipes.addShapeless("dyeCyan", <minecraft:dye:6> * 2, [<minecraft:dye:4>, <minecraft:dye:2>]);
recipes.addShapeless("dyeLightGray", <minecraft:dye:7> * 3, [<minecraft:dye:0>, <minecraft:dye:15>, <minecraft:dye:15>]);
recipes.addShapeless("dyeGray", <minecraft:dye:8> * 2, [<minecraft:dye:0>, <minecraft:dye:15>]);
recipes.addShapeless("dyePink", <minecraft:dye:9> * 2, [<minecraft:dye:1>, <minecraft:dye:15>]);
recipes.addShapeless("dyeLime", <minecraft:dye:10> * 2, [<minecraft:dye:2>, <minecraft:dye:15>]);
recipes.addShapeless("dyeLightBlue", <minecraft:dye:12> * 2, [<minecraft:dye:4>, <minecraft:dye:15>]);
recipes.addShapeless("dyeMagenta", <minecraft:dye:13> * 2, [<minecraft:dye:5>, <minecraft:dye:9>]);
recipes.addShapeless("dyeOrange", <minecraft:dye:14> * 2, [<minecraft:dye:1>, <minecraft:dye:11>]);

recipes.remove(<minecraft:noteblock>);
recipes.addShaped("minecraft_noteblock_modified", <minecraft:noteblock>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <coloredredstone:colored_redstone_dust:12>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);



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

recipes.remove(<minecraft:string>);
recipes.addShapeless("string", <minecraft:string> * 3, [<dawnoftimebuilder:silk>, <mysticalworld:spindle>]);

recipes.remove(<minecraft:iron_bars>);
recipes.addShaped("iron_bars", <minecraft:iron_bars> * 16, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<minecraft:golden_rail>);
recipes.addShaped("golden_rail", <minecraft:golden_rail> * 6, [
	[<ore:ingotOctine>, null, <ore:ingotOctine>], 
	[<ore:ingotOctine>, <ore:stickWood>, <ore:ingotOctine>], 
	[<ore:ingotOctine>, <ore:dustColoredRedstone>, <ore:ingotOctine>]
]);

recipes.remove(<minecraft:detector_rail>);
recipes.addShaped("detector_rail", <minecraft:detector_rail> * 6, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <thebetweenlands:betweenstone_pressure_plate>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:dustColoredRedstone>, <ore:ingotSyrmorite>]
]);

recipes.remove(<minecraft:rail>);
recipes.addShaped("rail", <minecraft:rail> * 16, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:stickWood>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>]
]);

recipes.remove(<minecraft:activator_rail>);
recipes.addShaped("activator_rail", <minecraft:activator_rail> * 6, [
	[<ore:ingotSyrmorite>, <ore:stickWood>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <coloredredstone:colored_redstone_torch_item:12>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:stickWood>, <ore:ingotSyrmorite>]
]);

recipes.remove(<minecraft:tripwire_hook>);
recipes.addShaped("tripwire_hook", <minecraft:tripwire_hook> * 2, [
	[<ore:ingotSyrmorite>], 
	[<ore:stickWood>], 
	[<ore:plankWood>]
]);









val stainedGlassColors = {
	<minecraft:stained_glass:0> : <minecraft:dye:15>,
	<minecraft:stained_glass:1> : <minecraft:dye:14>,
	<minecraft:stained_glass:2> : <minecraft:dye:13>,
	<minecraft:stained_glass:3> : <minecraft:dye:12>,
	<minecraft:stained_glass:4> : <minecraft:dye:11>,
	<minecraft:stained_glass:5> : <minecraft:dye:10>,
	<minecraft:stained_glass:6> : <minecraft:dye:9>,
	<minecraft:stained_glass:7> : <minecraft:dye:8>,
	<minecraft:stained_glass:8> : <minecraft:dye:7>,
	<minecraft:stained_glass:9> : <minecraft:dye:6>,
	<minecraft:stained_glass:10> : <minecraft:dye:5>,
	<minecraft:stained_glass:11> : <minecraft:dye:4>,
	<minecraft:stained_glass:12> : <minecraft:dye:3>,
	<minecraft:stained_glass:13> : <minecraft:dye:2>,
	<minecraft:stained_glass:14> : <minecraft:dye:1>,
	<minecraft:stained_glass:15> : <minecraft:dye:0>,
} as IItemStack[IItemStack];


for glass in stainedGlassColors {
	recipes.remove(glass);

	recipes.addShaped(glass * 8, [
		[<thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>], 
		[<thebetweenlands:filtered_silt_glass>, stainedGlassColors[glass], <thebetweenlands:filtered_silt_glass>], 
		[<thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>]
	]);
}





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



// CRAFTING TABLE ON STICK
recipes.remove(<portablecraftingtable:portable_crafting_table>);
recipes.addShaped("portable_crafting_table", <portablecraftingtable:portable_crafting_table>, [
	[null, null, <thebetweenlands:weedwood_workbench>], 
	[null, <ore:stickWood>, null], 
	[<ore:stickWood>, null, null]
]);




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




// BASE
recipes.remove(<base:wrench>);




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



// WEIRDING GADGETS
recipes.remove(<weirdinggadget:weirding_gadget>);
recipes.addShaped("weirdinggadget-weirding_gadget-remodified", <weirdinggadget:weirding_gadget>, [
	[<thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>], 
	[<thebetweenlands:octine_block>, <thebetweenlands:life_crystal:0>, <thebetweenlands:octine_block>], 
	[<thebetweenlands:octine_block>, <thebetweenlands:items_misc:11>, <thebetweenlands:octine_block>]
]);



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




// THE BETWEENLANDS
val weedWoodLogs = <thebetweenlands:weedwood> | <thebetweenlands:log_weedwood:12> | <thebetweenlands:log_weedwood:0>;


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
recipes.addShapeless("book", <minecraft:book>, 
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:4>]
);

recipes.remove(<minecraft:writable_book>);
recipes.addShapeless("writable_book", <minecraft:writable_book>, [<minecraft:book>, <thebetweenlands:items_misc:3>, <minecraft:dye>]);

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

<uppers:upper>.displayName = "Syrmorite Upper";

scripts.utils.addInfoTooltip(<thebetweenlands:sulfur_torch_extinguished>, "Can be relit with an octine ingot.");


<minecraft:slime>.displayName = "Block of Sludge";
<minecraft:dye>.displayName = "Black Dye";
<minecraft:dye:15>.displayName = "White Dye";
<minecraft:dye:3>.displayName = "Brown Dye";
<minecraft:dye:4>.displayName = "Blue Dye";
<minecraft:paper>.displayName = "Research Paper";