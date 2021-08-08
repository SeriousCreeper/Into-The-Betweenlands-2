import mods.roots.Bark;
import mods.roots.Mortar;
import mods.roots.Fey;
import mods.roots.FlowerGrowth;
import mods.roots.Pyre;
import mods.roots.RunicShears;
import mods.roots.Ritual;
import mods.roots.Transmutation;
import mods.roots.predicates.PropertyPredicate;
import mods.roots.predicates.StatePredicate;
import mods.jei.JEI;
import crafttweaker.block.IBlockState;
import mods.roots.predicates.Predicates;
import mods.roots.predicates.BlockStateBelow;


// NORMAL --------------------------------------------------------------
recipes.addShaped("paperFromRootsBark", <minecraft:paper> * 9, [
	[<ore:rootsBark>, <ore:rootsBark>, <ore:rootsBark>]
]);




var knifeDict = <ore:knife>;

knifeDict.add(<roots:wood_knife:32767>);
knifeDict.add(<roots:stone_knife:32767>);
knifeDict.add(<roots:iron_knife:32767>);
knifeDict.add(<roots:diamond_knife:32767>);

//JEI.hide(<roots:wood_knife>);
JEI.removeAndHide(<roots:gold_knife>);
//JEI.hide(<roots:living_hoe>);
//JEI.hide(<roots:runed_hoe>);
//JEI.hide(<roots:terrastone_hoe>);

JEI.removeAndHide(<roots:wooden_shears>);
JEI.removeAndHide(<roots:fire_starter>);


recipes.remove(<roots:wooden_shears>);


recipes.remove(<roots:grove_stone>);
recipes.addShaped("roots_grove_stone", <roots:grove_stone>, [
	[null, <thebetweenlands:cragrock>, null], 
	[<roots:wildroot>, <thebetweenlands:cragrock>, <roots:terra_moss>], 
	[<thebetweenlands:cragrock_slab>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock_slab>]
]);


recipes.remove(<roots:wood_knife>);
recipes.addShaped("roots_wood_knife", <roots:wood_knife>, [
	[null, null, <thebetweenlands:weedwood_planks>], 
	[null, <thebetweenlands:weedwood_planks>, null], 
	[<ore:stickWood>, null, null]
]);

recipes.remove(<roots:stone_knife>);
recipes.addShaped("roots_stone_knife", <roots:stone_knife>, [
	[null, null, <thebetweenlands:items_misc:14>], 
	[null, <thebetweenlands:items_misc:14>, null], 
	[<ore:stickWood>, null, null]
]);

recipes.remove(<roots:iron_knife>);
recipes.addShaped("roots_iron_knife", <roots:iron_knife>, [
	[null, null, <thebetweenlands:octine_ingot>], 
	[null, <thebetweenlands:octine_ingot>, null], 
	[<ore:stickWood>, null, null]
]);

recipes.remove(<roots:diamond_knife>);
recipes.addShaped("roots_diamond_knife", <roots:diamond_knife>, [
	[null, null, <thebetweenlands:items_misc:19>], 
	[null, <thebetweenlands:items_misc:19>, null], 
	[<ore:stickWood>, null, null]
]);

recipes.remove(<roots:mortar>);
recipes.addShaped("roots_mortar", <roots:mortar>, [
	[<thebetweenlands:cragrock>, null, <thebetweenlands:cragrock>], 
	[<thebetweenlands:cragrock>, <thebetweenlands:items_misc:18>, <thebetweenlands:cragrock>], 
	[null, <thebetweenlands:cragrock>, null]
]);

recipes.remove(<roots:pestle>);
recipes.addShapedMirrored("roots_pestle", <roots:pestle>, [
	[null, null, <thebetweenlands:cragrock>], 
	[<thebetweenlands:cragrock>, <thebetweenlands:cragrock>, null], 
	[<thebetweenlands:cragrock>, <thebetweenlands:cragrock>, null]
]);


// Remove vanilla bark
Bark.removeRecipe(<roots:bark_oak>);
Bark.removeRecipe(<roots:bark_acacia>);
Bark.removeRecipe(<roots:bark_jungle>);
Bark.removeRecipe(<roots:bark_spruce>);
Bark.removeRecipe(<roots:bark_birch>);
Bark.removeRecipe(<roots:bark_dark_oak>);

// Add Betweenlands bark
Bark.addRecipe("bark_oak", <thebetweenlands:log_weedwood:0>, <roots:bark_oak>);
Bark.addRecipe("bark_oak", <thebetweenlands:log_weedwood:12>, <roots:bark_oak>);

Bark.addRecipe("rotten_bark_1", <thebetweenlands:log_rotten_bark:0>, <roots:bark_jungle>);
Bark.addRecipe("rotten_bark_2", <thebetweenlands:log_spreading_rotten_bark>, <roots:bark_jungle>);

Bark.addRecipe("hearthgrove_bark_1", <thebetweenlands:log_hearthgrove:1>, <roots:bark_acacia>);
Bark.addRecipe("hearthgrove_bark_2", <thebetweenlands:log_hearthgrove:5>, <roots:bark_acacia>);
Bark.addRecipe("hearthgrove_bark_3", <thebetweenlands:log_hearthgrove:3>, <roots:bark_acacia>);
Bark.addRecipe("hearthgrove_bark_4", <thebetweenlands:log_hearthgrove:7>, <roots:bark_acacia>);

Bark.addRecipe("nibbletwig_bark_1", <thebetweenlands:log_nibbletwig:0>, <roots:bark_spruce>);
Bark.addRecipe("nibbletwig_bark_2", <thebetweenlands:log_nibbletwig:12>, <roots:bark_spruce>);

Bark.addRecipe("saptree_bark_1", <thebetweenlands:log_sap:0>, <roots:bark_birch>);
Bark.addRecipe("saptree_bark_2", <thebetweenlands:log_sap:12>, <roots:bark_birch>);

Bark.addRecipe("saptree_bark_2", <thebetweenlands:giant_root>, <roots:bark_dark_oak>);



// Misc

// Mortar recipes
Mortar.removeRecipe(<roots:flour>);
Mortar.removeRecipe(<minecraft:sugar>);
Mortar.removeRecipe(<minecraft:string>);
Mortar.removeRecipe(<minecraft:dye>);
Mortar.removeRecipe(<minecraft:dye:12>);
Mortar.removeRecipe(<minecraft:dye:14>);
Mortar.removeRecipe(<minecraft:dye:15>);
Mortar.removeRecipe(<minecraft:flint>);
Mortar.removeRecipe(<minecraft:magma_cream>);
Mortar.removeRecipe(<minecraft:blaze_powder>);
Mortar.removeRecipe(<roots:petals>);


//Mortar.changeSpell("spell_supplication", [<ore:doorWood>, <thebetweenlands:cragrock:2>, <thebetweenlands:sapling_weedwood>, <roots:wildroot>, <thebetweenlands:items_misc:14>]);




// Fey Crafting
Fey.removeRecipe(<roots:runic_shears>);
Fey.addRecipe("runic_shears", <roots:runic_shears>, 
	[<thebetweenlands:sickle>, <roots:pereskia>, <roots:pereskia>, <roots:runestone>, <roots:runestone>]);

Fey.removeRecipe(<roots:sylvan_helmet>);
Fey.addRecipe("sylvan_helmet", <roots:sylvan_helmet>, 
	[<roots:fey_leather>, <thebetweenlands:moss>, <roots:bark_birch>, <thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:bone_helmet>]);

Fey.removeRecipe(<roots:sylvan_chestplate>);
Fey.addRecipe("sylvan_chestplate", <roots:sylvan_chestplate>, 
	[<roots:fey_leather>, <thebetweenlands:moss>, <roots:bark_birch>, <thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:bone_chestplate>]);

Fey.removeRecipe(<roots:sylvan_leggings>);
Fey.addRecipe("sylvan_leggings", <roots:sylvan_leggings>, 
	[<roots:fey_leather>, <thebetweenlands:moss>, <roots:bark_birch>, <thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:bone_leggings>]);

Fey.removeRecipe(<roots:sylvan_boots>);
Fey.addRecipe("sylvan_boots", <roots:sylvan_boots>, 
	[<roots:fey_leather>, <thebetweenlands:moss>, <roots:bark_birch>, <thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:bone_boots>]);



// Living Tools
//Fey.removeRecipe(<roots:living_hoe>);

Fey.removeRecipe(<roots:living_pickaxe>);
Fey.addRecipe("living_pickaxe", <roots:living_pickaxe>, 
	[<ore:ingotSyrmorite>, <thebetweenlands:weedwood_pickaxe>, <roots:wildroot>, <roots:bark_oak>, <roots:bark_oak>]);

Fey.removeRecipe(<roots:living_axe>);
Fey.addRecipe("living_axe", <roots:living_axe>, 
	[<ore:ingotSyrmorite>, <thebetweenlands:weedwood_axe>, <roots:wildroot>, <roots:bark_oak>, <roots:bark_oak>]);

Fey.removeRecipe(<roots:living_shovel>);
Fey.addRecipe("living_shovel", <roots:living_shovel>, 
	[<ore:ingotSyrmorite>, <thebetweenlands:weedwood_shovel>, <roots:wildroot>, <roots:bark_oak>, <roots:bark_oak>]);

Fey.removeRecipe(<roots:living_sword>);
Fey.addRecipe("living_sword", <roots:living_sword>, 
	[<ore:ingotSyrmorite>, <thebetweenlands:weedwood_sword>, <roots:wildroot>, <roots:bark_oak>, <roots:bark_oak>]);



// Terrastone Tools
Fey.removeRecipe(<roots:terrastone_hoe>);

Fey.removeRecipe(<roots:terrastone_pickaxe>);
Fey.addRecipe("terrastone_pickaxe", <roots:terrastone_pickaxe>, 
	[<ore:runestone>, <thebetweenlands:bone_pickaxe>, <roots:terra_moss>, <thebetweenlands:items_misc:19>, <thebetweenlands:cragrock:2>]);

Fey.removeRecipe(<roots:terrastone_axe>);
Fey.addRecipe("terrastone_axe", <roots:terrastone_axe>, 
	[<ore:runestone>, <thebetweenlands:bone_axe>, <roots:terra_moss>, <thebetweenlands:items_misc:19>, <thebetweenlands:cragrock:2>]);

Fey.removeRecipe(<roots:terrastone_shovel>);
Fey.addRecipe("terrastone_shovel", <roots:terrastone_shovel>, 
	[<ore:runestone>, <thebetweenlands:bone_shovel>, <roots:terra_moss>, <thebetweenlands:items_misc:19>, <thebetweenlands:cragrock:2>]);

Fey.removeRecipe(<roots:terrastone_sword>);
Fey.addRecipe("terrastone_sword", <roots:terrastone_sword>, 
	[<ore:runestone>, <thebetweenlands:bone_sword>, <roots:terra_moss>, <thebetweenlands:items_misc:19>, <thebetweenlands:cragrock:2>]);



// Runed Tools
Fey.removeRecipe(<roots:runed_hoe>);

Fey.removeRecipe(<roots:runed_pickaxe>);
Fey.addRecipe("runed_pickaxe", <roots:runed_pickaxe>, 
	[<thaumcraft:metal_void>, <thaumcraft:metal_void>, <thebetweenlands:valonite_pickaxe>, <roots:fey_leather>, <roots:stalicripe>]);

Fey.removeRecipe(<roots:runed_axe>);
Fey.addRecipe("runed_axe", <roots:runed_axe>, 
	[<thaumcraft:metal_void>, <thaumcraft:metal_void>, <thebetweenlands:valonite_axe>, <roots:fey_leather>, <roots:cloud_berry>]);

Fey.removeRecipe(<roots:runed_shovel>);
Fey.addRecipe("runed_shovel", <roots:runed_shovel>, 
	[<thaumcraft:metal_void>, <thaumcraft:metal_void>, <thebetweenlands:valonite_shovel>, <roots:fey_leather>, <roots:dewgonia>]);

Fey.removeRecipe(<roots:runed_sword>);
Fey.addRecipe("runed_sword", <roots:runed_sword>, 
	[<thaumcraft:metal_void>, <thaumcraft:metal_void>, <thebetweenlands:valonite_sword>, <roots:fey_leather>, <roots:infernal_bulb>]);

Fey.removeRecipe(<roots:runed_dagger>);
Fey.addRecipe("runed_dagger", <roots:runed_dagger>, 
	[<thaumcraft:metal_void>, <thaumcraft:metal_void>, <roots:diamond_knife>, <roots:fey_leather>, <roots:moonglow_leaf>]);



Fey.removeRecipe(<roots:component_pouch>);
Fey.addRecipe("component_pouch", <roots:component_pouch>, 
	[<thebetweenlands:weedwood_chest>, <thebetweenlands:shelf_fungus>, <thebetweenlands:shelf_fungus>, <roots:wildroot>, <ore:rootsBark>]);

Fey.removeRecipe(<roots:apothecary_pouch>);
Fey.addRecipe("apothecary_pouch", <roots:apothecary_pouch>, 
	[<arcanearchives:radiant_chest>, <roots:bark_wildwood>, <roots:bark_wildwood>, <roots:spirit_herb>, <roots:component_pouch>]);

Fey.removeRecipe(<roots:living_arrow>);
Fey.addRecipe("living_arrow", <roots:living_arrow> * 6, 
	[<ore:treeLeaves>, <ore:treeLeaves>, <ore:rootsBark>, <roots:wildroot>, <thebetweenlands:items_misc:21>]);

Fey.removeRecipe(<roots:elemental_soil>);
Fey.addRecipe("elemental_soil", <roots:elemental_soil>, 
	[<thebetweenlands:swamp_dirt>, <thebetweenlands:silt>, <roots:terra_moss>, <roots:wildroot>, <thebetweenlands:items_crushed:17>]);

Fey.removeRecipe(<roots:runestone>);
Fey.addRecipe("runestone", <roots:runestone> * 4, 
	[<thebetweenlands:dentrothyst_shard_green> | <thebetweenlands:items_misc:39>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock>]);

Fey.removeRecipe(<roots:unending_bowl>);
Fey.addRecipe("unending_bowl", <roots:unending_bowl>, 
	[<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "swamp_water", Amount: 1000}}), <roots:mortar>, <roots:dewgonia>, <roots:terra_moss>, <roots:dewgonia>]);



Fey.removeRecipe(<roots:wildwood_helmet>);
Fey.addRecipe("wildwood_helmet", <roots:wildwood_helmet>, 
	[<thebetweenlands:syrmorite_helmet>, <roots:bark_wildwood>, <roots:bark_wildwood>, <ore:plankWood>, <thebetweenlands:items_misc:19>]);

Fey.removeRecipe(<roots:wildwood_chestplate>);
Fey.addRecipe("wildwood_chestplate", <roots:wildwood_chestplate>, 
	[<thebetweenlands:syrmorite_chestplate>, <roots:bark_wildwood>, <roots:bark_wildwood>, <ore:plankWood>, <thebetweenlands:items_misc:19>]);

Fey.removeRecipe(<roots:wildwood_leggings>);
Fey.addRecipe("wildwood_leggings", <roots:wildwood_leggings>, 
	[<thebetweenlands:syrmorite_leggings>, <roots:bark_wildwood>, <roots:bark_wildwood>, <ore:plankWood>, <thebetweenlands:items_misc:19>]);

Fey.removeRecipe(<roots:wildwood_boots>);
Fey.addRecipe("wildwood_boots", <roots:wildwood_boots>, 
	[<thebetweenlands:syrmorite_boots>, <roots:bark_wildwood>, <roots:bark_wildwood>, <ore:plankWood>, <thebetweenlands:items_misc:19>]);

Fey.removeRecipe(<roots:wildwood_bow>);
Fey.addRecipe("wildwood_bow", <roots:wildwood_bow>, 
	[<thebetweenlands:weedwood_bow>, <roots:bark_wildwood>, <roots:bark_wildwood>, <roots:terra_moss>, <roots:spirit_herb>]);



Fey.removeRecipe(<minecraft:gunpowder>);



// Pyre Crafting
Pyre.addRecipe("embers_manual", <embers:codex>, 
	[<minecraft:book>, <ore:ingotOctine>, <ore:ingotOctine>, <thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:10>]);

Pyre.addRecipe("ember_shard", <embers:shard_ember> * 3, 
	[<thebetweenlands:log_hearthgrove:1>, <thebetweenlands:log_hearthgrove:1>, <thebetweenlands:log_hearthgrove:1>, <thebetweenlands:log_hearthgrove:1>, <thebetweenlands:log_hearthgrove:1>]);

Pyre.removeRecipe(<roots:cloud_berry> * 3);
Pyre.addRecipe("cloud_berry", <roots:cloud_berry>, 
	[<thebetweenlands:swamp_tallgrass>, <thebetweenlands:shelf_fungus>, <ore:treeLeaves>, <roots:terra_moss>, <roots:terra_moss>]);

Pyre.removeRecipe(<roots:baffle_cap_mushroom> * 3);
Pyre.addRecipe("baffle_cap", <roots:baffle_cap_mushroom> * 3, 
	[<roots:terra_moss>, <thebetweenlands:items_misc:30>, <thebetweenlands:yellow_dotted_fungus>, <thebetweenlands:flat_head_mushroom_item>, <thebetweenlands:black_hat_mushroom_item>]);

Pyre.removeRecipe(<roots:moonglow_leaf>* 3);
Pyre.addRecipe("moonglow_leaf", <roots:moonglow_leaf> * 3, 
	[<ore:treeLeaves>, <thebetweenlands:dentrothyst:1>, <thebetweenlands:dentrothyst_shard_orange> | <thebetweenlands:dentrothyst_shard_green>, <roots:bark_birch>, <roots:bark_birch>]);

Pyre.removeRecipe(<roots:pereskia>* 3);
Pyre.addRecipe("pereskia", <roots:pereskia> * 3, 
	[<roots:wildroot>, <thebetweenlands:yellow_dotted_fungus>, <thebetweenlands:items_misc:39>, <thebetweenlands:middle_fruit>, <thebetweenlands:swamp_reed_item>]);

Pyre.removeRecipe(<roots:dewgonia>* 3);
Pyre.addRecipe("dewgonia", <roots:dewgonia> * 3, 
	[<thebetweenlands:swamp_tallgrass>, <thebetweenlands:middle_fruit>, <thebetweenlands:items_misc:39>, <roots:terra_moss>, <thebetweenlands:algae>]);

Pyre.removeRecipe(<roots:stalicripe>* 3);
Pyre.addRecipe("stalicripe", <roots:stalicripe> * 3, 
	[<thebetweenlands:items_misc:27>, <thebetweenlands:smooth_betweenstone>, <roots:wildroot>, <thebetweenlands:items_misc:11>, <coloredredstone:colored_redstone_dust:12>]);


// Runic Shears
RunicShears.addEntityRecipe("pods_from_roots", <thebetweenlands:root_pod> * 2, <entity:thebetweenlands:root_sprite>, 120 * 20);
RunicShears.addEntityRecipe("lurkerskin_from_roots", <thebetweenlands:items_misc:4>, <entity:thebetweenlands:lurker>, 120 * 20);
RunicShears.addEntityRecipe("feyleather_from_geckos", <roots:fey_leather>, <entity:thebetweenlands:gecko>, 120 * 20);
RunicShears.addEntityRecipe("feyleather_from_toads", <roots:fey_leather>, <entity:thebetweenlands:toad>, 120 * 20);

RunicShears.removeRecipe(<roots:spirit_herb>);
RunicShears.addRecipe("spirit_herb", <roots:spirit_herb>, PropertyPredicate.create(<blockstate:thebetweenlands:middle_fruit_bush:age=15,decayed=false>, ["age","decayed"]), <blockstate:thebetweenlands:middle_fruit_bush:age=2>, <thebetweenlands:middle_fruit>);

RunicShears.removeRecipe(<roots:wildewheet>);
RunicShears.addRecipe("wildewheet", <roots:wildewheet>, StatePredicate.create(<blockstate:thebetweenlands:swamp_reed>), <blockstate:minecraft:air>, <thebetweenlands:swamp_reed_item>);






// RITUALS
/*
Ritual.modifyRitual("ritual_transmutation", 
	[<roots:chiseled_runestone>, <roots:cloud_berry>, <thaumcraft:salis_mundus>, <arcanearchives:radiant_dust>, <roots:bark_oak>]);
*/

Transmutation.addStateToStateRecipe("greatwood_sapling", StatePredicate.create(<blockstate:thebetweenlands:sapling_weedwood>), <blockstate:thaumcraft:sapling_greatwood>, null);
Transmutation.addStateToStateRecipe("silverwood_sapling", StatePredicate.create(<blockstate:thebetweenlands:sapling_spirit_tree>), <blockstate:thaumcraft:sapling_silverwood>, null);



//Transmutation.addBlockToBlockRecipe("greatwood_sapling", <blockstate:roots:wildwood_sapling>, <blockstate:thaumcraft:sapling_greatwood>);



// Flower Growth
FlowerGrowth.removeRecipe("dandelion");
FlowerGrowth.removeRecipe("poppy");
FlowerGrowth.removeRecipe("blue_orchid");
FlowerGrowth.removeRecipe("allium");
FlowerGrowth.removeRecipe("houstonia");
FlowerGrowth.removeRecipe("red_tulip");
FlowerGrowth.removeRecipe("orange_tulip");
FlowerGrowth.removeRecipe("white_tulip");
FlowerGrowth.removeRecipe("pink_tulip");
FlowerGrowth.removeRecipe("oxeye_daisy");

FlowerGrowth.addRecipeBlock("thebetweenlands_arrow_arum", <thebetweenlands:arrow_arum>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_blue_eyed_grass", <thebetweenlands:blue_eyed_grass>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_blue_iris", <thebetweenlands:blue_iris>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_boneset", <thebetweenlands:boneset>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_bottle_brush_grass", <thebetweenlands:bottle_brush_grass>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_button_bush", <thebetweenlands:button_bush>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_copper_iris", <thebetweenlands:copper_iris>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_marsh_hibiscus", <thebetweenlands:marsh_hibiscus>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_marsh_mallow", <thebetweenlands:marsh_mallow>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_milkweed", <thebetweenlands:milkweed>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_nettle", <thebetweenlands:nettle>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_nettle_flowered", <thebetweenlands:nettle_flowered>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_pickerel_weed", <thebetweenlands:pickerel_weed>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_shoots", <thebetweenlands:shoots>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_sludgecreep", <thebetweenlands:sludgecreep>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_soft_rush", <thebetweenlands:soft_rush>.asBlock(), 0);
FlowerGrowth.addRecipeBlock("thebetweenlands_dead_weedwood_bush", <thebetweenlands:dead_weedwood_bush>.asBlock(), 0);




// TRANSMUTATION RITUAL
//Transmutation.addBlockToBlockRecipe("weedwood_to_greatwood", <blockstate:thebetweenlands:sapling_weedwood>, <blockstate:thaumcraft:sapling_greatwood>);
//Transmutation.addBlockToBlockRecipe("nibbletwig_to_silverwood", <blockstate:thebetweenlands:sapling_nibbletwig>, <blockstate:thaumcraft:sapling_silverwood>);

//recipes.replaceAllOccurences(<mysticalworld:ink_bottle>, <mysticalworld:ink_bottle>.transformReplace(<thebetweenlands:dentrothyst_vial:1>));




// Names
<roots:bark_oak>.displayName = "Weedwood Bark";
<roots:bark_acacia>.displayName = "Hearthgrove Bark";
<roots:bark_jungle>.displayName = "Rotten Bark";
<roots:bark_spruce>.displayName = "Nibbletwig Bark";
<roots:bark_birch>.displayName = "Sap Tree Bark";
<roots:bark_dark_oak>.displayName = "Giant Root Bark";

<roots:wood_knife>.displayName = "Weedwood Knife";
<roots:stone_knife>.displayName = "Bone Knife";
<roots:iron_knife>.displayName = "Octine Knife";
<roots:diamond_knife>.displayName = "Valonite Knife";

<roots:mortar>.displayName = "Small Mortar";
<roots:pestle>.displayName = "Small Pestle";

<roots:terra_spores>.withLore(["Can turn Crag Rock into Mossy version"]);
<roots:wildroot>.addTooltip(format.green("Dropped when breaking roots with a knife"));

mods.jei.JEI.addDescription(<roots:terra_spores>, "Can turn Crag Rock into Mossy version");
