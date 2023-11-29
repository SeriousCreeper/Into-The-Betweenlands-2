import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockState;
import mods.jei.JEI;
import mods.roots.Bark;
import mods.roots.Mortar;
import mods.roots.Fey;
import mods.roots.FlowerGrowth;
import mods.roots.Pyre;
import mods.roots.RunicShears;
import mods.roots.Ritual;
import mods.roots.Rituals;
import mods.roots.Transmutation;
import mods.roots.AnimalHarvest;
import mods.roots.Pacifist;
import mods.roots.predicates.PropertyPredicate;
import mods.roots.predicates.StatePredicate;
import mods.roots.predicates.Predicates;
import mods.roots.predicates.BlockStateBelow;
import mods.roots.Spells;
import mods.roots.Spell;
import mods.roots.Costs;
import mods.roots.Herbs;
import mods.roots.Modifiers;
import mods.roots.SummonCreatures;
import mods.roots.Chrysopoeia;



// NORMAL --------------------------------------------------------------


<roots:living_pickaxe>.maxDamage = 600;
<roots:living_shovel>.maxDamage = 600;
<roots:living_axe>.maxDamage = 600;
<roots:living_sword>.maxDamage = 600;

<roots:terrastone_pickaxe>.maxDamage = 1200;
<roots:terrastone_shovel>.maxDamage = 1200;
<roots:terrastone_axe>.maxDamage = 1200;
<roots:terrastone_sword>.maxDamage = 1200;




var knifeDict = <ore:knife>;

knifeDict.add(<roots:wood_knife:32767>);
knifeDict.add(<roots:stone_knife:32767>);
knifeDict.add(<roots:iron_knife:32767>);
knifeDict.add(<roots:diamond_knife:32767>);

<ore:toolKnife>.add(<roots:wood_knife:32767>);
<ore:toolKnife>.add(<roots:stone_knife:32767>);
<ore:toolKnife>.add(<roots:iron_knife:32767>);
<ore:toolKnife>.add(<roots:diamond_knife:32767>);

val itemsToRemove = [
	<roots:gold_knife>,
	<roots:wooden_shears>,
	<roots:fire_starter>,
	<roots:salmon_of_knowledge>,
	<roots:flour>,
	<roots:reliquary>,
	<roots:glass_eye>,
	<roots:living_hoe>,
	<roots:runed_hoe>,
	<roots:terrastone_hoe>,
	<roots:baffle_cap_mushroom>,
	<roots:baffle_cap_huge_stem>,
	<roots:baffle_cap_huge_top>,
	<roots:wildroot_stew>,
	<roots:elemental_soil>,
	<roots:elemental_soil_earth>,
	<roots:elemental_soil_water>,
	<roots:elemental_soil_fire>,
	<roots:elemental_soil_air>,
	<roots:wildewheet>,
	<roots:wildewheet_seed>,
	<roots:wildewheet_bread>,
	<roots:life_essence>,
	<roots:ritual_transmutation>,
	<roots:runestone_trample>,
] as IItemStack[];


for item in itemsToRemove {
	JEI.removeAndHide(item);
	item.removeAspects(allAspects);
}



recipes.remove(<roots:grove_stone>);
scripts.utils.addShaped("roots_grove_stone", <roots:grove_stone>, [
	[null, <thebetweenlands:cragrock>, null], 
	[<roots:wildroot>, <thebetweenlands:cragrock>, <roots:terra_moss>], 
	[<thebetweenlands:cragrock_slab>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock_slab>]
]);

recipes.remove(<roots:wood_knife>);
scripts.utils.addShaped("roots_wood_knife", <roots:wood_knife>, [
	[null, null, <thebetweenlands:weedwood_planks>], 
	[null, <thebetweenlands:weedwood_planks>, null], 
	[<ore:stickWood>, null, null]
]);

recipes.remove(<roots:stone_knife>);
scripts.utils.addShaped("roots_stone_knife", <roots:stone_knife>, [
	[null, null, <thebetweenlands:items_misc:14>], 
	[null, <thebetweenlands:items_misc:14>, null], 
	[<ore:stickWood>, null, null]
]);

recipes.remove(<roots:iron_knife>);

recipes.remove(<roots:mortar>);
scripts.utils.addShaped("roots_mortar", <roots:mortar>, [
	[<thebetweenlands:cragrock>, null, <thebetweenlands:cragrock>], 
	[<thebetweenlands:cragrock>, <thebetweenlands:items_misc:18>, <thebetweenlands:cragrock>], 
	[null, <thebetweenlands:cragrock>, null]
]);

recipes.remove(<roots:pestle>);
scripts.utils.addShapedMirrored("roots_pestle", <roots:pestle>, [
	[<ore:stickWood>], 
	[<thebetweenlands:cragrock>]
]);

recipes.remove(<roots:herb_pouch>);
scripts.utils.addShaped("herb_pouch", <roots:herb_pouch>.withTag({"color": 0}), [
	[null, <thebetweenlands:shelf_fungus>, null], 
	[<thebetweenlands:shelf_fungus>, null, <thebetweenlands:shelf_fungus>], 
	[<thebetweenlands:shelf_fungus>, <thebetweenlands:shelf_fungus>, <thebetweenlands:shelf_fungus>]
]);

scripts.utils.addShapeless("terra_spores", <roots:terra_spores>, [<roots:terra_moss>]);



// Remove vanilla bark
Bark.removeRecipe(<roots:bark_oak>);
Bark.removeRecipe(<roots:bark_acacia>);
Bark.removeRecipe(<roots:bark_jungle>);
Bark.removeRecipe(<roots:bark_spruce>);
Bark.removeRecipe(<roots:bark_birch>);
Bark.removeRecipe(<roots:bark_dark_oak>);

// Add Betweenlands bark
Bark.addRecipe("bark_oak_1", <thebetweenlands:log_weedwood:0>, <roots:bark_oak>);
Bark.addRecipe("bark_oak_2", <thebetweenlands:log_weedwood:12>, <roots:bark_oak>);
Bark.addRecipe("bark_oak_3", <thebetweenlands:weedwood:0>, <roots:bark_oak>);

Bark.addRecipe("rotten_bark_1", <thebetweenlands:log_rotten_bark:0>, <roots:bark_jungle>);
Bark.addRecipe("rotten_bark_2", <thebetweenlands:log_rotten_bark:12>, <roots:bark_jungle>);

Bark.addRecipe("hearthgrove_bark_1", <thebetweenlands:log_hearthgrove:1>, <roots:bark_acacia>);
Bark.addRecipe("hearthgrove_bark_2", <thebetweenlands:log_hearthgrove:5>, <roots:bark_acacia>);
Bark.addRecipe("hearthgrove_bark_3", <thebetweenlands:log_hearthgrove:3>, <roots:bark_acacia>);
Bark.addRecipe("hearthgrove_bark_4", <thebetweenlands:log_hearthgrove:7>, <roots:bark_acacia>);

Bark.addRecipe("nibbletwig_bark_1", <thebetweenlands:log_nibbletwig:0>, <roots:bark_spruce>);
Bark.addRecipe("nibbletwig_bark_2", <thebetweenlands:log_nibbletwig:12>, <roots:bark_spruce>);

Bark.addRecipe("saptree_bark_1", <thebetweenlands:log_sap:0>, <roots:bark_birch>);
//Bark.addRecipe("saptree_bark_2", <thebetweenlands:log_sap:12>, <roots:bark_birch>);

Bark.addRecipe("giantroot_bark_1", <thebetweenlands:giant_root:0>, <roots:bark_dark_oak>);

Bark.addRecipe("wildroot", <thebetweenlands:root>, <roots:wildroot>);

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
Mortar.removeRecipe(<mysticalworld:silk_thread>);
//Mortar.addRecipe("petals", <roots:petals>, [<ore:allFlowers>]);


Mortar.changeSpell("spell_geas", [
	<thebetweenlands:weedwood_fishing_rod>,
	<minecraft:lead>,
	<roots:terra_spores>,
	<thebetweenlands:yellow_dotted_fungus>,
	<thebetweenlands:items_misc:14>
]);

Mortar.changeSpell("spell_rose_thorns", [
	<thebetweenlands:nettle_flowered>,
	<thebetweenlands:thorns>,
	<thebetweenlands:items_misc:20>,
	<roots:terra_moss>,
	<thebetweenlands:items_misc:59>
]);

Mortar.changeSpell("spell_aqua_bubble", [
	<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "clean_water", Amount: 1000}}),
	<roots:dewgonia>,
	<minecraft:snowball>,
	<thebetweenlands:filtered_silt_glass>,
	<thebetweenlands:dentrothyst_shard_orange>
]);

Mortar.changeSpell("spell_sanctuary", [
	<thebetweenlands:repeller>,
	<roots:pereskia>,
	<roots:bark_spruce>,
	<roots:wildroot>,
	<thebetweenlands:shimmer_stone>
]);

Mortar.changeSpell("spell_growth_infusion", [
	<ore:treeSapling>,
	<ore:allFlowers>,
	<roots:terra_moss>,
	<thebetweenlands:swamp_reed_item>,
	<thebetweenlands:compost_block>
]);

Mortar.changeSpell("spell_wild_fire", [
	<thebetweenlands:items_misc:45>,
	<embers:wildfire_core>,
	<thebetweenlands:items_misc:18>,
	<roots:infernal_bulb>,
	<embers:dust_ember>
]);

Mortar.changeSpell("spell_natures_scythe", [
	<roots:wildroot>,
	<roots:wildroot>,
	<ore:ns_tallgrass>,
	<thebetweenlands:middle_fruit>,
	<thebetweenlands:syrmorite_shears>
]);

Mortar.changeSpell("spell_shatter", [
	<roots:living_pickaxe>,
	<roots:stalicripe>,
	<thebetweenlands:pitstone>,
	<thebetweenlands:sulfur_block>,
	<thebetweenlands:octine_ingot>
]);

Mortar.changeSpell("spell_acid_cloud", [
	<thebetweenlands:yellow_dotted_fungus>,
	<minecraft:dye:10>,
	<thebetweenlands:items_misc:14>,
	<thebetweenlands:poison_ivy>,
	<roots:runic_dust>
]);

Mortar.changeSpell("spell_radiance", [
	<roots:pereskia>,
	<roots:cloud_berry>,
	<arcanearchives:shaped_quartz>,
	<arcanearchives:quartz_sliver>,
	<embers:ingot_dawnstone>
]);

Mortar.changeSpell("spell_fey_light", [
	<thaumcraft:lamp_arcane>,
	<arcanearchives:quartz_sliver>,
	<roots:cloud_berry>,
	<ore:rootsBark>,
	<roots:cloud_berry>
]);

Mortar.changeSpell("spell_desaturate", [
	<roots:petals>,
	<roots:spirit_herb>,
	<thebetweenlands:items_misc:14>,
	<thebetweenlands:items_misc:55>,
	<thebetweenlands:items_misc:22>
]);

Mortar.changeSpell("spell_life_drain", [
	<thebetweenlands:yellow_dotted_fungus>,
	<roots:moonglow_leaf>,
	<thaumcraft:void_sword>,
	<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "victus"}]}),
	<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "mortuus"}]})
]);

Mortar.changeSpell("spell_petal_shell", [
	<roots:petals>,
	<thebetweenlands:middle_fruit>,
	<roots:spirit_herb>,
	<thebetweenlands:octine_shield>,
	<roots:pereskia>
]);




// Fey Crafting
Fey.removeRecipe(<roots:runic_shears>);
Fey.addRecipe("runic_shears", <roots:runic_shears>, 
	[<thebetweenlands:sickle>, <roots:pereskia>, <roots:pereskia>, <roots:runestone>, <roots:runestone>]);

recipes.removeByRegex("thebetweenlands:sickle");
Fey.addRecipe("sickle", <thebetweenlands:sickle>, 
	[<thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:7>, <ore:stickWood>]);

Fey.addRecipe("sapling_silverwood", <thaumcraft:sapling_silverwood>, 
	[<roots:bark_wildwood>, <roots:bark_wildwood>, <roots:bark_wildwood>, <thebetweenlands:sapling_sap>, <thaumcraft:salis_mundus>]);

Fey.addRecipe("sapling_greatwood", <thaumcraft:sapling_greatwood>, 
	[<roots:bark_wildwood>, <roots:bark_wildwood>, <roots:bark_wildwood>, <thebetweenlands:sapling_weedwood>, <thaumcraft:salis_mundus>]);



// Sylvan Armor
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
Fey.removeRecipe(<roots:living_hoe>);

Fey.removeRecipe(<roots:living_pickaxe>);
Fey.addRecipe("living_pickaxe", <roots:living_pickaxe>, 
	[<thebetweenlands:items_misc:14>, <thebetweenlands:weedwood_pickaxe>, <roots:wildroot>, <roots:bark_oak>, <roots:bark_oak>]);

Fey.removeRecipe(<roots:living_axe>);
Fey.addRecipe("living_axe", <roots:living_axe>, 
	[<thebetweenlands:items_misc:14>, <thebetweenlands:weedwood_axe>, <roots:wildroot>, <roots:bark_oak>, <roots:bark_oak>]);

Fey.removeRecipe(<roots:living_shovel>);
Fey.addRecipe("living_shovel", <roots:living_shovel>, 
	[<thebetweenlands:items_misc:14>, <thebetweenlands:weedwood_shovel>, <roots:wildroot>, <roots:bark_oak>, <roots:bark_oak>]);

Fey.removeRecipe(<roots:living_sword>);
Fey.addRecipe("living_sword", <roots:living_sword>, 
	[<thebetweenlands:items_misc:14>, <thebetweenlands:weedwood_sword>, <roots:wildroot>, <roots:bark_oak>, <roots:bark_oak>]);



// Terrastone Tools
Fey.removeRecipe(<roots:terrastone_hoe>);

Fey.removeRecipe(<roots:terrastone_pickaxe>);
Fey.addRecipe("terrastone_pickaxe", <roots:terrastone_pickaxe>, 
	[<ore:runestone>, <thaumcraft:thaumium_pick>, <roots:terra_moss>, <thebetweenlands:items_misc:19>, <thebetweenlands:cragrock:2>]);

Fey.removeRecipe(<roots:terrastone_axe>);
Fey.addRecipe("terrastone_axe", <roots:terrastone_axe>, 
	[<ore:runestone>, <thaumcraft:thaumium_axe>, <roots:terra_moss>, <thebetweenlands:items_misc:19>, <thebetweenlands:cragrock:2>]);

Fey.removeRecipe(<roots:terrastone_shovel>);
Fey.addRecipe("terrastone_shovel", <roots:terrastone_shovel>, 
	[<ore:runestone>, <thaumcraft:thaumium_shovel>, <roots:terra_moss>, <thebetweenlands:items_misc:19>, <thebetweenlands:cragrock:2>]);

Fey.removeRecipe(<roots:terrastone_sword>);
Fey.addRecipe("terrastone_sword", <roots:terrastone_sword>, 
	[<ore:runestone>, <thaumcraft:thaumium_sword>, <roots:terra_moss>, <thebetweenlands:items_misc:19>, <thebetweenlands:cragrock:2>]);



// Runed Tools
Fey.removeRecipe(<roots:runed_hoe>);

Fey.removeRecipe(<roots:runed_pickaxe>);
Fey.addRecipe("runed_pickaxe", <roots:runed_pickaxe>, 
	[<roots:runed_obsidian>, <roots:runed_obsidian>, <thebetweenlands:valonite_pickaxe>, <roots:fey_leather>, <roots:stalicripe>]);

Fey.removeRecipe(<roots:runed_axe>);
Fey.addRecipe("runed_axe", <roots:runed_axe>, 
	[<roots:runed_obsidian>, <roots:runed_obsidian>, <thebetweenlands:valonite_axe>, <roots:fey_leather>, <roots:cloud_berry>]);

Fey.removeRecipe(<roots:runed_shovel>);
Fey.addRecipe("runed_shovel", <roots:runed_shovel>, 
	[<roots:runed_obsidian>, <roots:runed_obsidian>, <thebetweenlands:valonite_shovel>, <roots:fey_leather>, <roots:dewgonia>]);

Fey.removeRecipe(<roots:runed_sword>);
Fey.addRecipe("runed_sword", <roots:runed_sword>, 
	[<roots:runed_obsidian>, <roots:runed_obsidian>, <thebetweenlands:valonite_sword>, <roots:fey_leather>, <roots:infernal_bulb>]);

Fey.removeRecipe(<roots:runed_dagger>);
Fey.addRecipe("runed_dagger", <roots:runed_dagger>, 
	[<roots:runed_obsidian>, <roots:runed_obsidian>, <roots:diamond_knife>, <roots:fey_leather>, <roots:moonglow_leaf>]);



Fey.removeRecipe(<roots:component_pouch>);
Fey.addRecipe("component_pouch", <roots:component_pouch>.withTag({"color": 0}), 
	[<thebetweenlands:lurker_skin_pouch>, <thebetweenlands:shelf_fungus>, <thebetweenlands:shelf_fungus>, <roots:wildroot>, <ore:rootsBark>]);

Fey.removeRecipe(<roots:apothecary_pouch>);
Fey.addRecipe("apothecary_pouch", <roots:apothecary_pouch>.withTag({"color": 0}), 
	[<arcanearchives:radiant_chest>, <roots:bark_wildwood>, <roots:bark_wildwood>, <roots:spirit_herb>, <roots:component_pouch>]);

Fey.removeRecipe(<roots:living_arrow>);
Fey.addRecipe("living_arrow", <roots:living_arrow> * 6, 
	[<ore:treeLeaves>, <ore:treeLeaves>, <ore:rootsBark>, <roots:wildroot>, <thebetweenlands:items_misc:21>]);

Fey.removeRecipe(<roots:elemental_soil>);
Fey.addRecipe("elemental_soil", <roots:elemental_soil>, 
	[<thebetweenlands:swamp_dirt>, <thebetweenlands:silt>, <roots:terra_moss>, <roots:wildroot>, <thebetweenlands:items_crushed:17>]);

Fey.removeRecipe(<roots:runestone>);
Fey.addRecipe("runestone", <roots:runestone> * 4, 
	[<thebetweenlands:items_misc:39>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock>]);
Fey.addRecipe("runestone_2", <roots:runestone> * 8, 
	[<thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock>, <thebetweenlands:cragrock>]);

Fey.removeRecipe(<roots:unending_bowl>);
Fey.addRecipe("unending_bowl", <roots:unending_bowl>, 
	[<thaumcraft:everfull_urn>, <roots:mortar>, <roots:dewgonia>, <roots:terra_moss>, <roots:dewgonia>]);

Fey.removeRecipe(<roots:runed_obsidian>);
Fey.addRecipe("runed_obsidian", <roots:runed_obsidian> * 4, 
	[<roots:runic_dust>, <thaumcraft:ingot:1>, <thaumcraft:ingot:1>, <ore:runestone>, <ore:runestone>]);

recipes.remove(<thaumcraft:salis_mundus>);
Fey.addRecipe("salismundus", <thaumcraft:salis_mundus>, 
	[<arcanearchives:raw_quartz>, <ore:dustRedstone>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>]);

Fey.addRecipe("sporeling_spores", <thebetweenlands:spores>, 
	[<roots:terra_spores>, <thebetweenlands:items_misc:18>, <thebetweenlands:dentrothyst:1>, <thebetweenlands:shelf_fungus>, <thebetweenlands:bulb_capped_mushroom_item>]);

Fey.addRecipe("caminite_blend", <embers:blend_caminite> * 4, 
	[<roots:runic_dust>, <pyrotech:material:4>, <pyrotech:material:4>, <pyrotech:material:4>, <pyrotech:material:4>]);

Fey.addRecipe("caminite_brick", <embers:brick_caminite> * 2, 
	[<roots:runic_dust>, <roots:runic_dust>, <roots:runic_dust>, <pyrotech:material:5>, <pyrotech:material:5>]);

Fey.addRecipe("caminite_bricks", <embers:block_caminite_brick>, 
	[<roots:runic_dust>, <roots:runic_dust>, <roots:runic_dust>, <roots:runic_dust>, <pyrotech:refractory_brick_block>]);




Fey.removeRecipe(<minecraft:gunpowder>);
Fey.removeRecipe(<roots:salmon_of_knowledge>);
Fey.removeRecipe(<minecraft:clay_ball>);
Fey.removeRecipe(<roots:elemental_soil>);
Fey.removeRecipe(<minecraft:dirt:*>);
Fey.removeRecipe(<minecraft:gravel>);
Fey.removeRecipe(<minecraft:sand:*>);
Fey.removeRecipe(<minecraft:sand>);
Fey.removeRecipe(<minecraft:mycelium>);




// WILDROOT
Fey.removeRecipe(<roots:wildwood_helmet>);
Fey.addRecipe("wildwood_helmet", <roots:wildwood_helmet>, 
	[<thaumcraft:thaumium_helm>, <roots:bark_wildwood>, <roots:bark_wildwood>, <ore:plankWood>, <thebetweenlands:items_misc:19>]);

Fey.removeRecipe(<roots:wildwood_chestplate>);
Fey.addRecipe("wildwood_chestplate", <roots:wildwood_chestplate>, 
	[<thaumcraft:thaumium_chest>, <roots:bark_wildwood>, <roots:bark_wildwood>, <ore:plankWood>, <thebetweenlands:items_misc:19>]);

Fey.removeRecipe(<roots:wildwood_leggings>);
Fey.addRecipe("wildwood_leggings", <roots:wildwood_leggings>, 
	[<thaumcraft:thaumium_legs>, <roots:bark_wildwood>, <roots:bark_wildwood>, <ore:plankWood>, <thebetweenlands:items_misc:19>]);

Fey.removeRecipe(<roots:wildwood_boots>);
Fey.addRecipe("wildwood_boots", <roots:wildwood_boots>, 
	[<thaumcraft:thaumium_boots>, <roots:bark_wildwood>, <roots:bark_wildwood>, <ore:plankWood>, <thebetweenlands:items_misc:19>]);

Fey.removeRecipe(<roots:wildwood_bow>);
Fey.addRecipe("wildwood_bow", <roots:wildwood_bow>, 
	[<thebetweenlands:weedwood_bow>, <roots:bark_wildwood>, <roots:bark_wildwood>, <roots:terra_moss>, <roots:spirit_herb>]);



// Pyre Crafting
Pyre.removeRecipe(<roots:cloud_berry> * 3);
Pyre.addRecipe("cloud_berry", <roots:cloud_berry>, 
	[<thebetweenlands:swamp_tallgrass>, <thebetweenlands:shelf_fungus>, <ore:treeLeaves>, <roots:terra_moss>, <roots:terra_moss>]);

Pyre.removeRecipe(<roots:baffle_cap_mushroom> * 3);

Pyre.removeRecipe(<roots:moonglow_leaf> * 3);
Pyre.addRecipe("moonglow_leaf", <roots:moonglow_leaf> * 3, 
	[<ore:treeLeaves>, <thebetweenlands:dentrothyst:1>, <thebetweenlands:dentrothyst_shard_orange> | <thebetweenlands:dentrothyst_shard_green>, <roots:bark_birch>, <roots:bark_birch>]);

Pyre.removeRecipe(<roots:pereskia> * 3);
Pyre.addRecipe("pereskia", <roots:pereskia> * 3, 
	[<roots:wildroot>, <thebetweenlands:yellow_dotted_fungus>, <thebetweenlands:items_misc:39>, <thebetweenlands:middle_fruit>, <thebetweenlands:swamp_reed_item>]);

Pyre.removeRecipe(<roots:dewgonia> * 3);
Pyre.addRecipe("dewgonia", <roots:dewgonia> * 3, 
	[<thebetweenlands:swamp_tallgrass>, <thebetweenlands:middle_fruit>, <thebetweenlands:items_misc:39>, <roots:terra_moss>, <thebetweenlands:algae>]);

Pyre.removeRecipe(<roots:stalicripe> * 3);
Pyre.addRecipe("stalicripe", <roots:stalicripe> * 3, 
	[<thebetweenlands:items_misc:27>, <thebetweenlands:smooth_betweenstone>, <roots:wildroot>, <thebetweenlands:items_misc:11>, <ore:dustRedstone>]);

Pyre.removeRecipe(<roots:infernal_bulb> * 3);
Pyre.addRecipe("infernal_bulb", <roots:infernal_bulb>, 
	[<roots:wildroot>, <thebetweenlands:items_misc:45>, <thebetweenlands:items_misc:45>, <thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:18>]);

Pyre.removeRecipe(<roots:cooked_pereskia> * 5);


// Runic Shears
val defaultDelay = 6000;


RunicShears.removeRecipe(<roots:fey_leather>);
RunicShears.removeRecipe(<mysticalworld:aubergine>);
RunicShears.removeRecipe(<roots:spirit_bag>);

RunicShears.addEntityRecipe("pods_from_roots", <thebetweenlands:root_pod>, <entity:thebetweenlands:root_sprite>, defaultDelay);
RunicShears.addEntityRecipe("lurkerskin_from_roots", <thebetweenlands:items_misc:4>, <entity:thebetweenlands:lurker>, defaultDelay);
//RunicShears.addEntityRecipe("feyleather_from_geckos", <roots:fey_leather>, <entity:thebetweenlands:gecko>, defaultDelay);
RunicShears.addEntityRecipe("feyleather_from_toads", <roots:fey_leather>, <entity:thebetweenlands:toad>, defaultDelay);

RunicShears.removeRecipe(<roots:spirit_herb>);
RunicShears.addRecipe("spirit_herb", <roots:spirit_herb>, PropertyPredicate.create(<blockstate:thebetweenlands:middle_fruit_bush:age=15,decayed=false>, ["age","decayed"]), <blockstate:thebetweenlands:middle_fruit_bush:age=2>, <thebetweenlands:middle_fruit>);
RunicShears.addRecipe("tea_seed", <teastory:tea_seeds>, StatePredicate.create(<blockstate:thaumcraft:leaves_silverwood>), <blockstate:minecraft:air>, <thaumcraft:leaves_silverwood>);


RunicShears.removeRecipe(<thebetweenlands:weeping_blue_petal>);
//RunicShears.addRecipe("wildewheet", <roots:wildewheet>, StatePredicate.create(<blockstate:thebetweenlands:swamp_reed>), <blockstate:minecraft:air>, <thebetweenlands:swamp_reed_item>);

RunicShears.removeRecipe(<roots:mystic_feather>);
RunicShears.addEntityRecipe("mystic_feather", <roots:mystic_feather>, <entity:thebetweenlands:dragonfly>, defaultDelay);

RunicShears.removeRecipe(<roots:strange_ooze>);
RunicShears.addEntityRecipe("strange_ooze_1", <roots:strange_ooze>, <entity:thebetweenlands:frog>, defaultDelay);

RunicShears.addEntityRecipe("sporeling_spores", <thebetweenlands:spores>, <entity:thebetweenlands:sporeling>, defaultDelay);
RunicShears.addEntityRecipe("ochre_shells", <thebetweenlands:items_misc:1>, <entity:thebetweenlands:mire_snail>, defaultDelay);
RunicShears.addEntityRecipe("pheromone_thorax", <thebetweenlands:pheromone_thorax>, <entity:thebetweenlands:swarm>, defaultDelay);

RunicShears.removeEntityRecipe(<entity:minecraft:zombie_pigman>);
RunicShears.removeEntityRecipe(<entity:minecraft:wolf>);
RunicShears.removeEntityRecipe(<entity:minecraft:silverfish>);
RunicShears.removeEntityRecipe(<entity:minecraft:spider>);
RunicShears.removeEntityRecipe(<entity:minecraft:zombie_horse>);
RunicShears.removeEntityRecipe(<entity:minecraft:ocelot>);
RunicShears.removeEntityRecipe(<entity:minecraft:polar_bear>);
RunicShears.removeEntityRecipe(<entity:minecraft:snowman>);
RunicShears.removeEntityRecipe(<entity:minecraft:cave_spider>);
RunicShears.removeEntityRecipe(<entity:minecraft:villager_golem>);
RunicShears.removeEntityRecipe(<entity:minecraft:skeleton_horse>);

RunicShears.removeEntityRecipe(<entity:mysticalworld:entity_sprout>);
RunicShears.removeEntityRecipe(<entity:mysticalworld:entity_clam>);
RunicShears.removeEntityRecipe(<entity:mysticalworld:entity_hell_sprout>);
RunicShears.removeEntityRecipe(<entity:mysticalworld:entity_lava_cat>);




// RITUALS
Rituals.modifyRitual("ritual_grove_supplication", [
	<ore:doorWood>, 
	<ore:treeSapling>, 
	<roots:petals>, 
	<roots:wildroot>, 
	<thebetweenlands:cragrock:1> | <thebetweenlands:cragrock:2>
]);

Rituals.modifyRitual("ritual_divine_protection", [
	<roots:pereskia>,
	<roots:cloud_berry>,
	<roots:bark_oak>,
	<thebetweenlands:items_misc:47>,
	<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "ordo"}]})
]);

Rituals.modifyRitual("ritual_fire_storm", [
	<roots:bark_acacia>,
	<roots:bark_acacia>,
	<roots:infernal_bulb>,
	<thebetweenlands:items_misc:45>,
	<thebetweenlands:items_misc:18>
]);

Rituals.modifyRitual("ritual_windwall", [
	<roots:moonglow_leaf>,
	<ore:rootsBark>,
	<ore:rootsBark>,
	<ore:allFlowers>,
	<roots:runestone>
]);

Rituals.modifyRitual("ritual_warding_protection", [
	<roots:stalicripe>,
	<roots:wildroot>,
	<ore:rootsBark>,
	<thebetweenlands:weedwood_shield>,
	<thebetweenlands:sap_ball>
]);

Rituals.modifyRitual("ritual_germination", [
	<roots:spirit_herb>,
	<roots:wildroot>,
	<ore:rootsBark>,
	<thebetweenlands:middle_fruit>,
	<thebetweenlands:items_crushed:17>
]);

Rituals.modifyRitual("ritual_purity", [
	<roots:terra_moss>,
	<thebetweenlands:middle_fruit>,
	<thebetweenlands:yellow_dotted_fungus>,
	<thebetweenlands:tangled_root>,
	<simpledifficulty:purified_water_bottle>
]);

/*
Rituals.modifyRitual("ritual_animal_harvest", [
	<thebetweenlands:items_misc:6>,
	<thebetweenlands:black_hat_mushroom_item>,
	<roots:wildroot>,
	<ore:slimeball>,
	<thebetweenlands:items_misc:56>
]);
*/

Rituals.modifyRitual("ritual_summon_creatures", [
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}),
	<thebetweenlands:items_misc:14>,
	<thebetweenlands:rock_snot_pearl>,
	<thebetweenlands:items_misc:18>,
	<arcanearchives:quartz_sliver>
]);

Rituals.modifyRitual("ritual_overgrowth", [
	<roots:terra_moss>,
	<ore:rootsBark>,
	<ore:rootsBark>,
	<thebetweenlands:swamp_reed_item>,
	<thebetweenlands:swamp_double_tallgrass>
]);

Rituals.modifyRitual("ritual_gathering", [
	<ore:slimeball>,
	<thebetweenlands:items_misc:6>,
	<roots:moonglow_seed>,
	<thebetweenlands:items_misc:11>,
	<ore:dustRedstone>
]);

Rituals.modifyRitual("ritual_frost_lands", [
	<ore:sugarcane>,
	<thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "gelum"}]}),
	<roots:dewgonia>,
	<roots:bark_spruce>,
	<roots:bark_spruce>
]);

Rituals.modifyRitual("ritual_heavy_storms", [
	<embers:ingot_copper>,
	<roots:dewgonia>,
	<ore:vine>,
	<roots:cloud_berry>,
	<ore:snowball>
]);

Rituals.modifyRitual("ritual_animal_harvest", [
	<thebetweenlands:anadia_meat_raw>,
	<roots:dewgonia>,
	<thebetweenlands:swamp_kelp_item>,
	<thebetweenlands:algae>,
	<thebetweenlands:mire_coral>
]);

var animal_harvest = Rituals.getRitual("animal_harvest") as Ritual;
animal_harvest.setInteger("fish_count", 3);
animal_harvest.setInteger("interval", 300);




// Summoning
SummonCreatures.clearLifeEssence();

SummonCreatures.removeEntity(<entity:minecraft:cow>);
SummonCreatures.removeEntity(<entity:minecraft:witch>);
SummonCreatures.removeEntity(<entity:minecraft:spider>);
SummonCreatures.removeEntity(<entity:minecraft:donkey>);
SummonCreatures.removeEntity(<entity:minecraft:pig>);
SummonCreatures.removeEntity(<entity:minecraft:ocelot>);
SummonCreatures.removeEntity(<entity:minecraft:rabbit>);
SummonCreatures.removeEntity(<entity:minecraft:mooshroom>);
SummonCreatures.removeEntity(<entity:minecraft:chicken>);
SummonCreatures.removeEntity(<entity:minecraft:creeper>);
SummonCreatures.removeEntity(<entity:minecraft:stray>);
SummonCreatures.removeEntity(<entity:minecraft:parrot>);
SummonCreatures.removeEntity(<entity:minecraft:zombie>);
SummonCreatures.removeEntity(<entity:minecraft:squid>);
SummonCreatures.removeEntity(<entity:minecraft:zombie_pigman>);
SummonCreatures.removeEntity(<entity:minecraft:skeleton>);
SummonCreatures.removeEntity(<entity:minecraft:horse>);
SummonCreatures.removeEntity(<entity:minecraft:wolf>);
SummonCreatures.removeEntity(<entity:minecraft:sheep>);
SummonCreatures.removeEntity(<entity:minecraft:polar_bear>);
SummonCreatures.removeEntity(<entity:minecraft:llama>);
SummonCreatures.removeEntity(<entity:minecraft:mule>);
SummonCreatures.removeEntity(<entity:minecraft:husk>);
SummonCreatures.removeEntity(<entity:minecraft:bat>);

SummonCreatures.removeEntity(<entity:mysticalworld:entity_fox>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_owl>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_beetle>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_deer>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_frog>);
SummonCreatures.removeEntity(<entity:mysticalworld:entity_sprout>);




// Animal Harvest
AnimalHarvest.removeFish(<minecraft:fish:0>);
AnimalHarvest.removeFish(<minecraft:fish:1>);
AnimalHarvest.removeFish(<minecraft:fish:2>);
AnimalHarvest.removeFish(<minecraft:fish:3>);

AnimalHarvest.addFish("swamp_kelp_item", <thebetweenlands:swamp_kelp_item>, 1000);

AnimalHarvest.addFish("anadia_meat_raw", <thebetweenlands:anadia_meat_raw>, 200);
AnimalHarvest.addFish("angler_tooth", <thebetweenlands:items_misc:21>, 100);

AnimalHarvest.addFish("crimson_middle_gem", <thebetweenlands:crimson_middle_gem>, 10);
AnimalHarvest.addFish("aqua_middle_gem", <thebetweenlands:aqua_middle_gem>, 10);
AnimalHarvest.addFish("green_middle_gem", <thebetweenlands:green_middle_gem>, 10);

AnimalHarvest.addFish("life_crystal_fragment", <thebetweenlands:life_crystal_fragment>, 3);

AnimalHarvest.addEntity(<entity:thebetweenlands:mire_snail>);
AnimalHarvest.addEntity(<entity:thebetweenlands:lurker>);
AnimalHarvest.addEntity(<entity:thebetweenlands:root_sprite>);
AnimalHarvest.addEntity(<entity:thebetweenlands:sporeling>);
AnimalHarvest.addEntity(<entity:thebetweenlands:dragonfly>);
AnimalHarvest.addEntity(<entity:thebetweenlands:frog>);




// Pacifist Animals
Pacifist.addEntity(<entity:thebetweenlands:lurker>);
Pacifist.addEntity(<entity:thebetweenlands:root_sprite>);
Pacifist.addEntity(<entity:thebetweenlands:sporeling>);
Pacifist.addEntity(<entity:thebetweenlands:dragonfly>);
Pacifist.addEntity(<entity:thebetweenlands:frog>);
Pacifist.addEntity(<entity:thebetweenlands:firefly>);
Pacifist.addEntity(<entity:thebetweenlands:mire_snail>);
Pacifist.addEntity(<entity:thebetweenlands:gecko>);
Pacifist.addEntity(<entity:thebetweenlands:greebling>);
Pacifist.addEntity(<entity:thebetweenlands:emberling>);
Pacifist.addEntity(<entity:thebetweenlands:chiromaw_tame>);
Pacifist.addEntity(<entity:thebetweenlands:chiromaw_hatchling>);
Pacifist.addEntity(<entity:mod_lavacow:raven>);


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



// Spells
var natures_scythe = Spells.getSpell("natures_scythe") as Spell;
natures_scythe.setString("web_dictionary", "ns_webs");
natures_scythe.setString("grass_dictionary", "ns_tallgrass");
natures_scythe.setString("web_dictionary", "ns_webs");

var shatter = Spells.getSpell("shatter") as Spell;

Chrysopoeia.removeRecipeByOutput(<minecraft:leather>);
Chrysopoeia.removeRecipeByOutput(<minecraft:iron_ingot>);
Chrysopoeia.removeRecipeByOutput(<minecraft:iron_nugget>);
Chrysopoeia.removeRecipeByOutput(<minecraft:gold_ingot>);
Chrysopoeia.removeRecipeByOutput(<minecraft:gold_nugget>);




// Modifiers
Modifiers.disableModifier("false_night");
Modifiers.disableModifier("moonfall");
Modifiers.disableModifier("unholy_command");
Modifiers.disableModifier("false_night");
Modifiers.disableModifier("embiggening");
Modifiers.disableModifier("incubation");
Modifiers.disableModifier("ore_infusion");
Modifiers.disableModifier("hydration");



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

<roots:mystic_feather>.displayName = "Mystic Wing";

<roots:runed_acacia>.displayName = "Runed Nibbletwig";
<roots:runed_dark_oak>.displayName = "Runed Rotten Bark";
<roots:runed_oak>.displayName = "Runed Weedwood";
<roots:runed_birch>.displayName = "Runed Giant Root";
<roots:runed_jungle>.displayName = "Runed Hearthgrove";
<roots:runed_spruce>.displayName = "Runed Sap Tree";

<roots:terra_spores>.withLore(["Can turn Crag Rock into Mossy version"]);

scripts.utils.addInfoTooltip(<roots:wildroot>, "Dropped when breaking roots with a knife");

mods.jei.JEI.addDescription(<roots:terra_spores>, "Can turn Crag Rock into Mossy version");
mods.jei.JEI.addDescription(<roots:elemental_soil_fire>, "Created by tossing a piece of Elemental Soil into fire.");
