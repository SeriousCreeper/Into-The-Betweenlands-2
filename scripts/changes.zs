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

//recipes.replaceAllOccurences(<minecraft:iron_nugget>, <thebetweenlands:items_misc:41>);
//recipes.replaceAllOccurences(<thaumcraft:nugget>, <thebetweenlands:items_misc:41>);
//recipes.replaceAllOccurences(<minecraft:gold_ingot>, <thebetweenlands:octine_ingot>);
//recipes.replaceAllOccurences(<minecraft:gold_nugget>, <thebetweenlands:items_misc:42>);
//recipes.replaceAllOccurences(<minecraft:redstone>, <ore:dustRedstone>);
//recipes.replaceAllOccurences(<minecraft:redstone_torch>, <coloredredstone:colored_redstone_torch_item:12>);
//recipes.replaceAllOccurences(<minecraft:paper>, <thebetweenlands:items_misc:32>);
//recipes.replaceAllOccurences(<minecraft:string>, <thebetweenlands:items_misc:7>);

recipes.replaceAllOccurences(<minecraft:redstone>, <betweenlandsredstone:scabyst_dust>);
recipes.replaceAllOccurences(<minecraft:redstone_block>, <betweenlandsredstone:scabyst_block>);
recipes.replaceAllOccurences(<minecraft:redstone_torch>, <betweenlandsredstone:scabyst_torch>);
recipes.replaceAllOccurences(<minecraft:repeater>, <betweenlandsredstone:scabyst_repeater>);
recipes.replaceAllOccurences(<minecraft:comparator>, <betweenlandsredstone:scabyst_comparator>);
recipes.replaceAllOccurences(<minecraft:piston>, <betweenlandsredstone:scabyst_piston>);
recipes.replaceAllOccurences(<minecraft:tripwire_hook>, <betweenlandsredstone:scabyst_tripwire_hook>);


// VANILLA
scripts.utils.removeAllExcept("minecraft", [
	<minecraft:lead>,
	<minecraft:armor_stand>,
	<minecraft:iron_bars>,
	<minecraft:trapped_chest>,
	<minecraft:string>,
	<minecraft:book>,
	<minecraft:writable_book>,
	<minecraft:dye:*>,
	<minecraft:bookshelf>,
	<minecraft:noteblock>,
	<minecraft:spawn_egg>,
	<minecraft:glass_bottle>,
	<minecraft:snowball>,
	<minecraft:iron_nugget>,
	<minecraft:iron_ingot>,
	<minecraft:iron_block>,
]);

furnace.remove(<minecraft:torch>);
furnace.remove(<minecraft:redstone>);
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

scripts.utils.addShapeless("dyePurple", <minecraft:dye:5> * 2, [<minecraft:dye:4>, <minecraft:dye:1>]);
scripts.utils.addShapeless("dyeCyan", <minecraft:dye:6> * 2, [<minecraft:dye:4>, <minecraft:dye:2>]);
scripts.utils.addShapeless("dyeLightGray", <minecraft:dye:7> * 3, [<minecraft:dye:0>, <minecraft:dye:15>, <minecraft:dye:15>]);
scripts.utils.addShapeless("dyeGray", <minecraft:dye:8> * 2, [<minecraft:dye:0>, <minecraft:dye:15>]);
scripts.utils.addShapeless("dyePink", <minecraft:dye:9> * 2, [<minecraft:dye:1>, <minecraft:dye:15>]);
scripts.utils.addShapeless("dyeLime", <minecraft:dye:10> * 2, [<minecraft:dye:2>, <minecraft:dye:15>]);
scripts.utils.addShapeless("dyeLightBlue", <minecraft:dye:12> * 2, [<minecraft:dye:4>, <minecraft:dye:15>]);
scripts.utils.addShapeless("dyeMagenta", <minecraft:dye:13> * 2, [<minecraft:dye:5>, <minecraft:dye:9>]);
scripts.utils.addShapeless("dyeOrange", <minecraft:dye:14> * 2, [<minecraft:dye:1>, <minecraft:dye:11>]);

recipes.remove(<minecraft:noteblock>);
scripts.utils.addShaped("minecraft_noteblock_modified", <minecraft:noteblock>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:dustRedstone>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);


//recipes.remove(<minecraft:hopper_minecart>);
//scripts.utils.addShaped("hopper_minecart", <minecraft:hopper_minecart>, [[<thebetweenlands:syrmorite_hopper>], [<minecraft:minecart>]]);

recipes.remove(<minecraft:trapped_chest>);
scripts.utils.addShapeless("trapped_chest", <minecraft:trapped_chest>, [<thebetweenlands:weedwood_chest>, <betweenlandsredstone:scabyst_tripwire_hook>]);

recipes.remove(<minecraft:item_frame>);
//scripts.utils.addShaped("item_frame", <minecraft:item_frame> * 2, [
//	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
//	[<ore:stickWood>, <thebetweenlands:items_misc:4>, <ore:stickWood>], 
//	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
//]);

recipes.remove(<minecraft:armor_stand>);
scripts.utils.addShaped("armor_stand", <minecraft:armor_stand>, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[null, <ore:stickWood>, null], 
	[<ore:stickWood>, <thebetweenlands:smooth_cragrock_slab>, <ore:stickWood>]
]);

/*
recipes.remove(<minecraft:observer>);
scripts.utils.addShaped("observer_1", <minecraft:observer>, [
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
	[<ore:dustRedstone>, <ore:dustRedstone>, <thebetweenlands:dentrothyst_shard_orange>], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
scripts.utils.addShaped("observer_2", <minecraft:observer>, [
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
	[<ore:dustRedstone>, <ore:dustRedstone>, <thebetweenlands:dentrothyst_shard_green>], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

recipes.remove(<minecraft:piston>);
scripts.utils.addShaped("minecraft-piston-remodified", <minecraft:piston>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:cobblestone>, <thebetweenlands:items_misc:11>, <ore:cobblestone>], [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]]);

recipes.remove(<minecraft:sticky_piston>);
scripts.utils.addShaped("sticky_piston", <minecraft:sticky_piston>, [[<thebetweenlands:sap_spit>], [<minecraft:piston>]]);


recipes.remove(<minecraft:dispenser>);
scripts.utils.addShaped("minecraft-dispenser-modified", <minecraft:dispenser>, [
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], 
	[<ore:cobblestone>, <thebetweenlands:weedwood_bow>, <ore:cobblestone>], 
	[<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]
]);

scripts.utils.addShapedMirrored("easier_dispenser", <minecraft:dispenser>, [
	[null, <thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:7>], 
	[<thebetweenlands:items_misc:20>, <minecraft:dropper>, <thebetweenlands:items_misc:7>], 
	[null, <thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:7>]
]);
*/

recipes.remove(<minecraft:lead>);
scripts.utils.addShaped("lead", <minecraft:lead> * 2, [
	[<thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:7>, null], 
	[<thebetweenlands:items_misc:7>, <thebetweenlands:sludge_ball>, null], 
	[null, null, <thebetweenlands:items_misc:7>]
]);
scripts.utils.addShaped("lead_2", <minecraft:lead> * 2, [
	[<thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:7>, null], 
	[<thebetweenlands:items_misc:7>, <thebetweenlands:sap_spit>, null], 
	[null, null, <thebetweenlands:items_misc:7>]
]);

/*
recipes.remove(<minecraft:minecart>);
scripts.utils.addShaped("minecraft-minecart-modified", <minecraft:minecart>, [
	[<thebetweenlands:weedwood_planks>, null, <thebetweenlands:weedwood_planks>], 
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>],
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>]
]);
*/

//recipes.remove(<minecraft:slime>);
//scripts.utils.addShaped("slime", <minecraft:slime>, [
//	[<thebetweenlands:sludge_ball>, <thebetweenlands:sludge_ball>],
//	[<thebetweenlands:sludge_ball>, <thebetweenlands:sludge_ball>]
//]);

/*
scripts.utils.addShaped("slime_2", <minecraft:slime>, [
	[<thebetweenlands:sap_spit>, <thebetweenlands:sap_spit>],
	[<thebetweenlands:sap_spit>, <thebetweenlands:sap_spit>]
]);

recipes.remove(<minecraft:flint_and_steel>);
scripts.utils.addShaped("flint_and_steel", <minecraft:flint_and_steel>, [
	[<thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:45>],
	[<thebetweenlands:items_misc:45>, <thebetweenlands:items_misc:47>]
]);
*/

recipes.remove(<minecraft:string>);
recipes.addShapeless("string", <minecraft:string> * 3, [<contenttweaker:silk>, <thebetweenlands:syrmorite_shears:*>.transformDamage(1)]);
recipes.addShapeless("string_2", <minecraft:string> * 2, [<contenttweaker:silk>, <thebetweenlands:silt_crab_claw>]);

recipes.remove(<minecraft:iron_bars>);
scripts.utils.addShaped("iron_bars", <minecraft:iron_bars> * 16, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>]
]);

/*
recipes.remove(<minecraft:golden_rail>);
scripts.utils.addShaped("golden_rail", <minecraft:golden_rail> * 6, [
	[<ore:ingotOctine>, null, <ore:ingotOctine>], 
	[<ore:ingotOctine>, <ore:stickWood>, <ore:ingotOctine>], 
	[<ore:ingotOctine>, <ore:dustRedstone>, <ore:ingotOctine>]
]);

recipes.remove(<minecraft:detector_rail>);
scripts.utils.addShaped("detector_rail", <minecraft:detector_rail> * 6, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <thebetweenlands:betweenstone_pressure_plate>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:dustRedstone>, <ore:ingotSyrmorite>]
]);

recipes.remove(<minecraft:rail>);
scripts.utils.addShaped("rail", <minecraft:rail> * 16, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:stickWood>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>]
]);

recipes.remove(<minecraft:activator_rail>);
scripts.utils.addShaped("activator_rail", <minecraft:activator_rail> * 6, [
	[<ore:ingotSyrmorite>, <ore:stickWood>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <minecraft:redstone_torch>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:stickWood>, <ore:ingotSyrmorite>]
]);

recipes.remove(<minecraft:tripwire_hook>);
scripts.utils.addShaped("tripwire_hook", <minecraft:tripwire_hook> * 2, [
	[<ore:ingotSyrmorite>], 
	[<ore:stickWood>], 
	[<ore:plankWood>]
]);

recipes.remove(<minecraft:comparator>);
scripts.utils.addShaped("comparator", <minecraft:comparator>, [
	[null, <minecraft:redstone_torch>, null], 
	[<minecraft:redstone_torch>, <thebetweenlands:dentrothyst_shard_green>, <minecraft:redstone_torch>], 
	[<ore:stone>, <ore:stone>, <ore:stone>]
]);
scripts.utils.addShaped("comparator_2", <minecraft:comparator>, [
	[null, <minecraft:redstone_torch>, null], 
	[<minecraft:redstone_torch>, <thebetweenlands:dentrothyst_shard_orange>, <minecraft:redstone_torch>], 
	[<ore:stone>, <ore:stone>, <ore:stone>]
]);
*/

recipes.remove(<minecraft:glass_bottle>);
scripts.utils.addShaped("glass_bottle", <minecraft:glass_bottle>, [
	[<thebetweenlands:silt_glass_pane>, null, <thebetweenlands:silt_glass_pane>],
	[null, <thebetweenlands:silt_glass_pane>, null]
]);




/*
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

	scripts.utils.addShaped("glass_" ~ stainedGlassColors[glass].metadata, glass * 8, [
		[<thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>], 
		[<thebetweenlands:filtered_silt_glass>, stainedGlassColors[glass], <thebetweenlands:filtered_silt_glass>], 
		[<thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>]
	]);
}
*/




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



furnace.remove(<ore:ingotCopper>);
furnace.remove(<ore:ingotTin>);
furnace.remove(<ore:ingotSilver>);
furnace.remove(<ore:ingotLead>);
furnace.remove(<ore:ingotAluminum>);
furnace.remove(<ore:ingotNickel>);



for metal in metals {
	furnace.remove(metals[metal].ingot);
	furnace.remove(metals[metal].nugget);

	recipes.remove(metals[metal].ingot);
	recipes.remove(metals[metal].nugget);

	scripts.utils.addShaped(metal ~ "_nugget_to_ingot", metals[metal].ingot, [
		[metals[metal].nugget, metals[metal].nugget, metals[metal].nugget],
		[metals[metal].nugget, metals[metal].nugget, metals[metal].nugget],
		[metals[metal].nugget, metals[metal].nugget, metals[metal].nugget]
	]);
}



// SCAFFOLD
JEI.removeAndHide(<notenoughscaffold:iron_scaffold>);

recipes.remove(<notenoughscaffold:wooden_scaffold>);
scripts.utils.addShaped("wooden_scaffold", <notenoughscaffold:wooden_scaffold> * 8, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
	[<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:20>], 
	[<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);




// PLATFORMS
recipes.remove(<platforms:platform:50>);
scripts.utils.addShaped("platforms-platformer-modified", <platforms:platform:50>, [
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:weedwood_planks>, <ore:workbench>, <thebetweenlands:weedwood_planks>], 
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>]
]);

recipes.remove(<platforms:wrench>);
scripts.utils.addShaped("platforms-wrench-modified", <platforms:wrench>, [
	[null, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[null, <ore:barsIron>, null], 
	[<ore:barsIron>, null, null]
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
	scripts.utils.addShaped("tallgate_" ~ i, <tallgates:tall_gate>.definition.makeStack(i), [
		[wood],
		[wood]
	]);
}




// BASE
recipes.remove(<base:wrench>);


// STATUES
recipes.remove(<statues:palette>);
scripts.utils.addShaped("palette", <statues:palette>, [[<thebetweenlands:items_crushed:32>, <thebetweenlands:items_crushed:45>], [<thebetweenlands:items_crushed:28>, <ore:plankWood>]]);




/*
// COLORED REDSTONE
recipes.remove(<coloredredstone:colored_redstone_comparator_item:12>);
scripts.utils.addShaped("light_blue_colored_redstone_comparator", <coloredredstone:colored_redstone_comparator_item:12>, [
	[null, <coloredredstone:colored_redstone_torch_item:12>, null],
	[<coloredredstone:colored_redstone_torch_item:12>, <thebetweenlands:dentrothyst_shard_orange> | <thebetweenlands:dentrothyst_shard_green>, <coloredredstone:colored_redstone_torch_item:12>],
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>]
]);


recipes.remove(<coloredredstone:colored_redstone_repeater_item:12>);
scripts.utils.addShaped("light_blue_colored_redstone_repeater", <coloredredstone:colored_redstone_repeater_item:12>, [
	[<coloredredstone:colored_redstone_torch_item:12>, <ore:dustRedstone>, <coloredredstone:colored_redstone_torch_item:12>], 
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>]
]);

recipes.remove(<coloredredstone:colored_redstone_lamp:12>);
scripts.utils.addShaped("light_blue_colored_redstone_lamp", <coloredredstone:colored_redstone_lamp:12> * 2, [
	[<ore:dustRedstone>, <thebetweenlands:silt_glass>, <ore:dustRedstone>],
	[<thebetweenlands:silt_glass>, <thebetweenlands:bulb_capped_mushroom_cap>, <thebetweenlands:silt_glass>],
	[<ore:dustRedstone>, <thebetweenlands:silt_glass>, <ore:dustRedstone>]
]);

recipes.remove(<ore:dustRedstone>);
recipes.remove(<coloredredstone:colored_redstone_block:12>);
*/



// REDSTONE PASTE
/*
recipes.remove(<redstonepaste:stickyrepeater>);
scripts.utils.addShapeless("stickyrepeater", <redstonepaste:stickyrepeater>, [<coloredredstone:colored_redstone_repeater_item:12>, <thebetweenlands:sap_spit> | <thebetweenlands:sludge_ball>]);

recipes.remove(<redstonepaste:stickycomparator>);
scripts.utils.addShapeless("stickycomparator", <redstonepaste:stickycomparator>, [<coloredredstone:colored_redstone_comparator_item:12>, <thebetweenlands:sap_spit> | <thebetweenlands:sludge_ball>]);
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
scripts.utils.addShaped("quest_book", <ftbquests:book>, [
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>],
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:4>]
]);
*/


// WEIRDING GADGETS
recipes.remove(<weirdinggadget:weirding_gadget>);
scripts.utils.addShaped("weirdinggadget-weirding_gadget-remodified", <weirdinggadget:weirding_gadget>, [
	[<thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>], 
	[<thebetweenlands:octine_block>, <thebetweenlands:life_crystal:0>, <thebetweenlands:octine_block>], 
	[<thebetweenlands:octine_block>, <thebetweenlands:items_misc:11>, <thebetweenlands:octine_block>]
]);



// UPPERS
recipes.remove(<uppers:upper>);
scripts.utils.addShapeless("upper_alt", <uppers:upper>, [<thebetweenlands:syrmorite_hopper>]);
scripts.utils.addShapeless("upper_alt_2", <thebetweenlands:syrmorite_hopper>, [<uppers:upper>]);


scripts.utils.addShapeless("ancient_tablet", <contenttweaker:book_stonetablet>, [<contenttweaker:book_stonetablet_top>, <contenttweaker:book_stonetablet_bottom>]);



// THE BETWEENLANDS


// DISPLAY NAMES & TOOLTIPS
<minecraft:minecart>.displayName = "Weedwood Minecart";
<minecraft:iron_bars>.displayName = "Syrmorite Bars";
<minecraft:iron_ingot>.displayName = "Wrought Iron Ingot";
<minecraft:iron_block>.displayName = "Block of Wrought Iron";
<minecraft:iron_nugget>.displayName = "Wrought Iron Nugget";

//<minecraft:flint_and_steel>.displayName = "Firestarter";

<tallgates:tall_gate:0>.displayName = "Tall Weedwood Plank Fence Gate";
<tallgates:tall_gate:1>.displayName = "Tall Rubber Tree Fence Gate";
<tallgates:tall_gate:2>.displayName = "Tall Giant Root Fence Gate";
<tallgates:tall_gate:3>.displayName = "Tall Hearthgrove Plank Fence Gate";
<tallgates:tall_gate:4>.displayName = "Tall Nibbletwig Plank Fence Gate";
<tallgates:tall_gate:5>.displayName = "Tall Rotten Plank Fence Gate";

<minecraft:redstone>.displayName = "Bluedust";
//<coloredredstone:colored_redstone_comparator_item:12>.displayName = "Bluedust Comparator";
//<coloredredstone:colored_redstone_repeater_item:12>.displayName = "Bluedust Repeater";
//<coloredredstone:colored_redstone_torch_item:12>.displayName = "Bluedust Torch";
//<coloredredstone:colored_redstone_block:12>.displayName = "Block of Bluedust";
//<coloredredstone:colored_redstone_lamp:12>.displayName = "Bluedust Lamp";

<uppers:upper>.displayName = "Syrmorite Upper";


<minecraft:slime>.displayName = "Block of Sludge";
<minecraft:dye>.displayName = "Black Dye";
<minecraft:dye:15>.displayName = "White Dye";
<minecraft:dye:3>.displayName = "Brown Dye";
<minecraft:dye:4>.displayName = "Blue Dye";
<minecraft:glass_bottle>.displayName = "Silt Glass Bottle";

<minecraft:dye:0>.displayName = <minecraft:dye:0>.displayName + " Powder";
<minecraft:dye:1>.displayName = <minecraft:dye:1>.displayName + " Powder";
<minecraft:dye:2>.displayName = <minecraft:dye:2>.displayName + " Powder";
<minecraft:dye:3>.displayName = <minecraft:dye:3>.displayName + " Powder";
<minecraft:dye:4>.displayName = <minecraft:dye:4>.displayName + " Powder";
<minecraft:dye:5>.displayName = <minecraft:dye:5>.displayName + " Powder";
<minecraft:dye:6>.displayName = <minecraft:dye:6>.displayName + " Powder";
<minecraft:dye:7>.displayName = <minecraft:dye:7>.displayName + " Powder";
<minecraft:dye:8>.displayName = <minecraft:dye:8>.displayName + " Powder";
<minecraft:dye:9>.displayName = <minecraft:dye:9>.displayName + " Powder";
<minecraft:dye:10>.displayName = <minecraft:dye:10>.displayName + " Powder";
<minecraft:dye:11>.displayName = <minecraft:dye:11>.displayName + " Powder";
<minecraft:dye:12>.displayName = <minecraft:dye:12>.displayName + " Powder";
<minecraft:dye:13>.displayName = <minecraft:dye:13>.displayName + " Powder";
<minecraft:dye:14>.displayName = <minecraft:dye:14>.displayName + " Powder";
<minecraft:dye:15>.displayName = <minecraft:dye:15>.displayName + " Powder";

<minecraft:paper>.displayName = "Identification Card";

<minecraft:wool>.displayName = "Bookshelf";

<minecraft:redstone_ore>.displayName = "Bluedust Ore";