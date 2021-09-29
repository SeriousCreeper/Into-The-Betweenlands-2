import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import mods.pyrotech.SoakingPot;
import mods.pyrotech.PitKiln;
import mods.pyrotech.Burn;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.IroncladAnvil;
import mods.pyrotech.StoneSawmill;
import mods.pyrotech.BrickSawmill;
import mods.pyrotech.Chopping;
import mods.pyrotech.Bloomery;
import mods.pyrotech.BrickOven;
import mods.pyrotech.StoneOven;


JEI.hideCategory("pyrotech.crude.drying");
JEI.hideCategory("pyrotech.drying");
JEI.hideCategory("pyrotech.worktable");
JEI.hideCategory("pyrotech.compost.bin");
JEI.hideCategory("pyrotech.pit.kiln");



val itemsToRemove = [
	<pyrotech:bow_drill>,
	<pyrotech:flint_and_tinder>,
	<pyrotech:sawmill_blade_stone>,
	<pyrotech:sawmill_blade_flint>,
	<pyrotech:sawmill_blade_iron>,
	<pyrotech:crude_axe>,
	<pyrotech:crude_hoe>,
	<pyrotech:crude_pickaxe>,
	<pyrotech:crude_shovel>,
	<pyrotech:crude_fishing_rod>,
	<pyrotech:bone_axe>,
	<pyrotech:bone_hoe>,
	<pyrotech:bone_pickaxe>,
	<pyrotech:bone_shovel>,
	<pyrotech:bone_sword>,
	<pyrotech:flint_axe>,
	<pyrotech:flint_hoe>,
	<pyrotech:flint_pickaxe>,
	<pyrotech:flint_shovel>,
	<pyrotech:flint_sword>,
	<pyrotech:redstone_axe>,
	<pyrotech:redstone_hoe>,
	<pyrotech:obsidian_shovel>,
	<pyrotech:obsidian_pickaxe>,
	<pyrotech:obsidian_hoe>,
	<pyrotech:obsidian_axe>,
	<pyrotech:quartz_sword>,
	<pyrotech:quartz_shovel>,
	<pyrotech:quartz_pickaxe>,
	<pyrotech:quartz_hoe>,
	<pyrotech:quartz_axe>,
	<pyrotech:redstone_sword>,
	<pyrotech:redstone_shovel>,
	<pyrotech:redstone_pickaxe>,
	<pyrotech:obsidian_sword>,
	<pyrotech:unfired_clay_shears>,
	<pyrotech:clay_shears>,
	<pyrotech:stone_shears>,
	<pyrotech:bone_shears>,
	<pyrotech:flint_shears>,
	<pyrotech:gold_shears>,
	<pyrotech:diamond_shears>,
	<pyrotech:obsidian_shears>,
	<pyrotech:cog_stone>,
	<pyrotech:cog_flint>,
	<pyrotech:cog_iron>,
	<pyrotech:drying_rack>,
	<pyrotech:drying_rack:1>,
	<pyrotech:marshmallow>,
	<pyrotech:marshmallow_roasted>,
	<pyrotech:marshmallow_stick_empty>,
	<pyrotech:marshmallow_burned>,
	<pyrotech:torch_fiber>,
	<pyrotech:torch_stone>,
	<pyrotech:stone_tank>,
	<pyrotech:brick_tank>,
	<pyrotech:kiln_pit>,
	<pyrotech:worktable>,
	<pyrotech:worktable_stone>,
	<pyrotech:compost_bin>,
	<pyrotech:mulch>,
	<pyrotech:strange_tuber>,
	<pyrotech:beetroot_roasted>,
	<pyrotech:mushroom_red_roasted>,
	<pyrotech:mushroom_brown_roasted>,
	<pyrotech:egg_roasted>,
	<pyrotech:carrot_roasted>,
	<pyrotech:apple_baked>,
	<pyrotech:material:37>,
	<pyrotech:material:33>,
	<pyrotech:material:31>,
	<pyrotech:material:26>,
	<pyrotech:material:24>,
	<pyrotech:material:22>,
	<pyrotech:material:21>,
	<pyrotech:material:19>,
	<pyrotech:material:17>,
	<pyrotech:material:15>,
	<pyrotech:material:14>,
	<pyrotech:material:13>,
	<pyrotech:material:12>,
	<pyrotech:material:10>,
	<pyrotech:material:2>,
	<pyrotech:material:3>,
	<pyrotech:dense_quartz_ore_rocks>,
	<pyrotech:dense_quartz_ore_small>,
	<pyrotech:dense_quartz_ore_large>,
	<pyrotech:charcoal_block>,
	<pyrotech:wool_tarred>,
	<pyrotech:farmland_mulched>,
	<pyrotech:cobblestone:3>,
	<pyrotech:cobblestone:2>,
	<pyrotech:cobblestone:1>,
	<pyrotech:cobblestone>,
	<pyrotech:dense_nether_coal_ore>,
	<pyrotech:dense_coal_ore>,
	<pyrotech:fossil_ore>,
	<pyrotech:limestone>,
	<pyrotech:thatch>,
	<pyrotech:coal_coke_block>,
	<pyrotech:straw_bed>,
	<pyrotech:rock_netherrack>,
	<pyrotech:rock_grass>,
	<pyrotech:rock:10>,
	<pyrotech:rock:9>,
	<pyrotech:rock:8>,
	<pyrotech:rock:6>,
	<pyrotech:rock:5>,
	<pyrotech:rock:4>,
	<pyrotech:rock:3>,
	<pyrotech:rock:2>,
	<pyrotech:rock:1>,
	<pyrotech:rock>,
	<pyrotech:fluid.liquid_clay>,
	<pyrotech:crude_hammer>,
	<pyrotech:stone_hammer>,
	<pyrotech:flint_hammer>,
	<pyrotech:iron_hammer>,
	<pyrotech:tongs_stone>,
	<pyrotech:tongs_flint>,
	<pyrotech:tongs_iron>,
	<pyrotech:chopping_block>,
] as IItemStack[];


for item in itemsToRemove {
	JEI.removeAndHide(item);
	furnace.remove(item);
	item.removeAspects(allAspects);
}


// RECIPES
recipes.remove(<pyrotech:matchstick>);
recipes.addShapeless("matchstick", <pyrotech:matchstick>, [
	<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:27>, <thebetweenlands:items_misc:18>, <thebetweenlands:items_misc:23> 
]);

recipes.remove(<pyrotech:material:4>);
recipes.addShaped("refractory_clay_ball_from_refractory_clay_lump", <pyrotech:material:4>, [[<pyrotech:material:35>, <pyrotech:material:35>], [<pyrotech:material:35>, <pyrotech:material:35>]]);
recipes.addShaped("refractory_clay_ball", <pyrotech:material:4> * 5, [
	[<thebetweenlands:mud>, <pyrotech:material>, <thebetweenlands:mud>], 
	[<pyrotech:material:8>, <thebetweenlands:silt>, <pyrotech:material:8>], 
	[<thebetweenlands:mud>, <pyrotech:material>, <thebetweenlands:mud>]
]);

recipes.remove(<pyrotech:anvil_granite>);
recipes.addShaped("tech/basic/anvil_granite", <pyrotech:anvil_granite>, [
	[<thebetweenlands:polished_limestone>], 
	[<thebetweenlands:betweenstone_bricks>]
]);

recipes.remove(<pyrotech:tinder>);
recipes.addShaped("tech/basic/tinder", <pyrotech:tinder>, [
	[<thebetweenlands:items_misc:6>, <ore:stickWood>], 
	[<ore:stickWood>, <thebetweenlands:items_misc:6>]
]);

recipes.remove(<pyrotech:stone_kiln>);
recipes.addShaped("tech/machine/stone_kiln", <pyrotech:stone_kiln>, [
	[<pyrotech:stone_bricks>, <pyrotech:material:16>, <pyrotech:stone_bricks>], 
	[<pyrotech:stone_bricks>, <thebetweenlands:reed_mat>, <pyrotech:stone_bricks>], 
	[<pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>]
]);

recipes.remove(<pyrotech:log_pile>);
recipes.addShaped("log_pile", <pyrotech:log_pile>, [
	[<thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>],
	[<thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>],
	[<thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>]
]);

recipes.remove(<pyrotech:stone_sawmill>);
recipes.addShaped("tech/machine/stone_sawmill", <pyrotech:stone_sawmill>, [
	[<pyrotech:stone_bricks>, <pyrotech:material:16>, <pyrotech:stone_bricks>], 
	[<pyrotech:stone_bricks>, <ore:slabWood>, <pyrotech:stone_bricks>], 
	[<pyrotech:stone_bricks>, <pyrotech:stone_bricks>, <pyrotech:stone_bricks>]
]);

recipes.remove(<pyrotech:sawmill_blade_bone>);
recipes.addShaped("tech/machine/sawmill_blade_bone", <pyrotech:sawmill_blade_bone>, [
	[<pyrotech:material:11>, <pyrotech:material:11>, <pyrotech:material:11>], 
	[<pyrotech:material:11>, <thebetweenlands:cragrock>, <pyrotech:material:11>], 
	[<pyrotech:material:11>, <pyrotech:material:11>, <pyrotech:material:11>]
]);

recipes.remove(<pyrotech:bone_hammer>);
recipes.addShaped("bone_hammer", <pyrotech:bone_hammer>, [
	[null, <thebetweenlands:items_misc:14>, <thebetweenlands:items_misc:7>], 
	[null, <ore:stickWood>, <thebetweenlands:items_misc:14>], 
	[<ore:stickWood>, null, null]
]);

recipes.remove(<pyrotech:gold_hammer>);
recipes.addShaped("gold_hammer", <pyrotech:gold_hammer>, [
	[null, <thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:7>], 
	[null, <ore:stickWood>, <thebetweenlands:octine_ingot>], 
	[<ore:stickWood>, null, null]
]);

recipes.remove(<pyrotech:faucet_stone>);
recipes.addShaped("storage/faucet_stone", <pyrotech:faucet_stone>, [
	[<pyrotech:material:16>, null, <pyrotech:material:16>], 
	[null, <pyrotech:material:16>, null]
]);

recipes.remove(<pyrotech:anvil_iron_plated>);
recipes.addShaped("tech/basic/anvil_iron_plated", <pyrotech:anvil_iron_plated>, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
	[<thebetweenlands:pitstone_brick_slab>, <thebetweenlands:pitstone_brick_slab>, <thebetweenlands:pitstone_brick_slab>]
]);

recipes.remove(<pyrotech:compacting_bin>);
recipes.addShaped("tech/basic/compacting_bin", <pyrotech:compacting_bin>, [
	[<thebetweenlands:smooth_cragrock_slab>, null, <thebetweenlands:smooth_cragrock_slab>], 
	[<ore:plankWood>, null, <ore:plankWood>], 
	[<thebetweenlands:smooth_cragrock_slab>, <ore:slabWood>, <thebetweenlands:smooth_cragrock_slab>]
]);




recipes.remove(<pyrotech:obsidian_hammer>);
recipes.remove(<pyrotech:tongs_obsidian>);
recipes.remove(<pyrotech:sawmill_blade_obsidian>);
recipes.remove(<pyrotech:cog_obsidian>);





// SOAKING POT
SoakingPot.removeRecipes(<pyrotech:material:8>);
SoakingPot.addRecipe("slaked_lime", <pyrotech:material:8>, <liquid:swamp_water> * 125, <thebetweenlands:items_misc:27>, 7 * 60 * 20);

SoakingPot.removeRecipes(<pyrotech:material:25>);
SoakingPot.addRecipe("pulp_from_wood_chips", <pyrotech:material:25>, <liquid:swamp_water> * 500, <pyrotech:rock:7>, true, 7 * 60 * 20);
SoakingPot.addRecipe("pulp_from_dry_bark", <pyrotech:material:25> * 3, <liquid:swamp_water> * 125, <thebetweenlands:items_misc:13>, 2 * 60 * 20);
SoakingPot.addRecipe("pulp_from_swamp_reed", <pyrotech:material:25>, <liquid:swamp_water> * 125, <thebetweenlands:swamp_reed_item>, 4 * 60 * 20);
SoakingPot.addRecipe("pulp_from_bark", <pyrotech:material:25>, <liquid:swamp_water> * 125, <ore:rootsBark>, 3 * 60 * 20);






// SAWMILL
StoneSawmill.removeAllRecipes();
BrickSawmill.removeAllRecipes();
Chopping.removeAllRecipes();



function stoneSawmillRecipeBuilder(name as string, itemOut as IItemStack, itemIn as IIngredient, countBone as int, countOctine as int, countDiamond as int) {
	StoneSawmill.addRecipe(name ~ "_sawmill_bone", itemOut * countBone, itemIn, 200, <pyrotech:sawmill_blade_bone:*>, 2, true);
	StoneSawmill.addRecipe(name ~ "_sawmill_octine", itemOut * countOctine, itemIn, 120, <pyrotech:sawmill_blade_gold:*>, 1, true);
	StoneSawmill.addRecipe(name ~ "_sawmill_valonite", itemOut * countDiamond, itemIn, 180, <pyrotech:sawmill_blade_diamond:*>.or(<pyrotech:sawmill_blade_obsidian:*>), 1, true);
}

function brickSawmillRecipeBuilder(name as string, itemOut as IItemStack, itemIn as IIngredient, countOctine as int, countDiamond as int, dropSawDust as bool) {
	var multiplier = 1 as int;

	if(dropSawDust == false) {
		multiplier = 0;
	}

	recipes.remove(itemOut);

	GraniteAnvil.removeRecipes(itemOut);
	GraniteAnvil.addRecipe(name ~ "_anvil", itemOut * 2, itemIn, 8, "pickaxe", true);

	BrickSawmill.addRecipe(name ~ "_sawmill_octine", itemOut * countOctine, itemIn, 1200, <pyrotech:sawmill_blade_gold:*>, 1 * multiplier);
	BrickSawmill.addRecipe(name ~ "_sawmill_valonite", itemOut * countDiamond, itemIn, 600, <pyrotech:sawmill_blade_diamond:*>.or(<pyrotech:sawmill_blade_obsidian:*>), 1 * multiplier);
}


function slabRecipe(name as string, itemOut as IItemStack, itemIn as IIngredient, countBone as int, countOctine as int, countDiamond as int) {
	recipes.remove(itemOut);
	recipes.addShaped(name, itemOut * 3, [[itemIn, itemIn, itemIn]]);
	stoneSawmillRecipeBuilder(name, itemOut, itemIn, countBone, countOctine, countDiamond);
}

function planksRecipe(name as string, itemOut as IItemStack, itemIn as IIngredient, countBone as int, countOctine as int, countDiamond as int) {
	recipes.remove(itemOut);
	recipes.addShapeless(name, itemOut * 2, [itemIn]);
	stoneSawmillRecipeBuilder(name, itemOut, itemIn, countBone, countOctine, countDiamond);
}


slabRecipe("weedwood_slab", <thebetweenlands:weedwood_plank_slab>, <thebetweenlands:weedwood_planks>, 2, 3, 3);
slabRecipe("rubber_tree_slab", <thebetweenlands:rubber_tree_plank_slab>, <thebetweenlands:rubber_tree_planks>, 2, 3, 3);
slabRecipe("giant_root_slab", <thebetweenlands:giant_root_plank_slab>, <thebetweenlands:giant_root_planks>, 2, 3, 3);
slabRecipe("hearthgrove_slab", <thebetweenlands:hearthgrove_plank_slab>, <thebetweenlands:hearthgrove_planks>, 2, 3, 3);
slabRecipe("nibbletwig_slab", <thebetweenlands:nibbletwig_plank_slab>, <thebetweenlands:nibbletwig_planks>, 2, 3, 3);
slabRecipe("rotten_slab", <thebetweenlands:rotten_plank_slab>, <thebetweenlands:rotten_planks>, 2, 3, 3);
slabRecipe("greatwood_slab", <thaumcraft:slab_greatwood>, <thaumcraft:plank_greatwood>, 2, 3, 3);
slabRecipe("silverwood_slab", <thaumcraft:slab_silverwood>, <thaumcraft:plank_silverwood>, 2, 3, 3);
slabRecipe("wildwood_slab", <roots:wildwood_slab>, <roots:wildwood_planks>, 2, 3, 3);
slabRecipe("treatedwood_slab_2", <immersiveengineering:treated_wood_slab:2>, <immersiveengineering:treated_wood:2>, 2, 3, 3);
slabRecipe("treatedwood_slab_1", <immersiveengineering:treated_wood_slab:1>, <immersiveengineering:treated_wood:1>, 2, 3, 3);
slabRecipe("treatedwood_slab_0", <immersiveengineering:treated_wood_slab:0>, <immersiveengineering:treated_wood:0>, 2, 3, 3);

planksRecipe("weedwood_planks", <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood:*> | <thebetweenlands:log_weedwood:*>, 4, 5, 6);
planksRecipe("rubber_tree_planks", <thebetweenlands:rubber_tree_planks>, <thebetweenlands:log_rubber:*>, 4, 5, 6);
planksRecipe("giant_root_planks", <thebetweenlands:giant_root_planks>, <thebetweenlands:giant_root:*>, 4, 5, 6);
planksRecipe("hearthgrove_planks", <thebetweenlands:hearthgrove_planks>, <thebetweenlands:log_hearthgrove:*>, 4, 5, 6);
planksRecipe("nibbletwig_planks", <thebetweenlands:nibbletwig_planks>, <thebetweenlands:log_nibbletwig:*>, 4, 5, 6);
planksRecipe("rotten_planks", <thebetweenlands:rotten_planks>, <thebetweenlands:log_rotten_bark:*>, 4, 5, 6);
planksRecipe("greatwood_planks", <thaumcraft:plank_greatwood>, <thaumcraft:log_greatwood:*>, 4, 5, 6);
planksRecipe("silverwood_planks", <thaumcraft:plank_silverwood>, <thaumcraft:log_silverwood:*>, 4, 5, 6);
planksRecipe("wildwood_planks", <roots:wildwood_planks>, <roots:wildwood_log:*>, 4, 5, 6);

brickSawmillRecipeBuilder("pyrotech_material_16", <pyrotech:material:16>, <thebetweenlands:betweenstone_brick_slab>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_slab_decay_4", <thebetweenlands:mud_brick_slab_decay_4>, <thebetweenlands:mud_bricks_carved:13>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_slab_decay_3", <thebetweenlands:mud_brick_slab_decay_3>, <thebetweenlands:mud_bricks_carved:12>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_slab_decay_2", <thebetweenlands:mud_brick_slab_decay_2>, <thebetweenlands:mud_bricks_carved:11>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_slab_decay_1", <thebetweenlands:mud_brick_slab_decay_1>, <thebetweenlands:mud_bricks_carved:10>, 2, 2, false);
brickSawmillRecipeBuilder("scabyst_brick_slab", <thebetweenlands:scabyst_brick_slab>, <thebetweenlands:scabyst_bricks>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab", <thebetweenlands:mud_brick_shingle_slab>, <thebetweenlands:mud_brick_shingles>, 2, 2, false);
brickSawmillRecipeBuilder("cracked_betweenstone_brick_slab", <thebetweenlands:cracked_betweenstone_brick_slab>, <thebetweenlands:cracked_betweenstone_bricks>, 2, 2, false);
brickSawmillRecipeBuilder("mossy_smooth_betweenstone_slab", <thebetweenlands:mossy_smooth_betweenstone_slab>, <thebetweenlands:mossy_betweenstone_tiles>, 2, 2, false);
brickSawmillRecipeBuilder("mossy_betweenstone_brick_slab", <thebetweenlands:mossy_betweenstone_brick_slab>, <thebetweenlands:mossy_betweenstone_bricks>, 2, 2, false);
brickSawmillRecipeBuilder("pitstone_brick_slab", <thebetweenlands:pitstone_brick_slab>, <thebetweenlands:pitstone_bricks>, 2, 2, false);
brickSawmillRecipeBuilder("polished_limestone_slab", <thebetweenlands:polished_limestone_slab>, <thebetweenlands:polished_limestone>, 2, 2, false);
brickSawmillRecipeBuilder("smooth_cragrock_slab", <thebetweenlands:smooth_cragrock_slab>, <thebetweenlands:smooth_cragrock>, 2, 2, false);
brickSawmillRecipeBuilder("smooth_betweenstone_slab", <thebetweenlands:smooth_betweenstone_slab>, <thebetweenlands:smooth_betweenstone>, 2, 2, false);
brickSawmillRecipeBuilder("limestone_slab", <thebetweenlands:limestone_slab>, <thebetweenlands:limestone>, 2, 2, false);
brickSawmillRecipeBuilder("limestone_brick_slab", <thebetweenlands:limestone_brick_slab>, <thebetweenlands:limestone_bricks>, 2, 2, false);
brickSawmillRecipeBuilder("cragrock_brick_slab", <thebetweenlands:cragrock_brick_slab>, <thebetweenlands:cragrock_bricks>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_slab", <thebetweenlands:mud_brick_slab>, <thebetweenlands:mud_bricks>, 2, 2, false);
brickSawmillRecipeBuilder("betweenstone_brick_slab", <thebetweenlands:betweenstone_brick_slab>, <thebetweenlands:betweenstone_bricks>, 2, 2, false);
brickSawmillRecipeBuilder("tar_solid_slab", <thebetweenlands:tar_solid_slab>, <thebetweenlands:tar_solid>, 2, 2, false);
brickSawmillRecipeBuilder("smooth_pitstone_slab", <thebetweenlands:smooth_pitstone_slab>, <thebetweenlands:smooth_pitstone>, 2, 2, false);
brickSawmillRecipeBuilder("betweenstone_slab", <thebetweenlands:betweenstone_slab>, <thebetweenlands:betweenstone>, 2, 2, false);
brickSawmillRecipeBuilder("pitstone_slab", <thebetweenlands:pitstone_slab>, <thebetweenlands:pitstone>, 2, 2, false);
brickSawmillRecipeBuilder("cragrock_slab", <thebetweenlands:cragrock_slab>, <thebetweenlands:cragrock>, 2, 2, false);
brickSawmillRecipeBuilder("slab", <thaumicaugmentation:slab>, <thaumcraft:stone_ancient_tile>, 2, 2, false);
brickSawmillRecipeBuilder("slab_eldritch", <thaumcraft:slab_eldritch>, <thaumcraft:stone_eldritch_tile>, 2, 2, false);
brickSawmillRecipeBuilder("slab_ancient", <thaumcraft:slab_ancient>, <thaumcraft:stone_ancient>, 2, 2, false);
brickSawmillRecipeBuilder("slab_arcane_brick", <thaumcraft:slab_arcane_brick>, <thaumcraft:stone_arcane_brick>, 2, 2, false);
brickSawmillRecipeBuilder("slab_arcane_stone", <thaumcraft:slab_arcane_stone>, <thaumcraft:stone_arcane>, 2, 2, false);
brickSawmillRecipeBuilder("runed_obsidian_brick_alt_slab", <roots:runed_obsidian_brick_alt_slab>, <roots:runed_obsidian_brick_alt>, 2, 2, false);
brickSawmillRecipeBuilder("runed_obsidian_brick_slab", <roots:runed_obsidian_brick_slab>, <roots:runed_obsidian_brick>, 2, 2, false);
brickSawmillRecipeBuilder("runed_obsidian_slab", <roots:runed_obsidian_slab>, <roots:runed_obsidian>, 2, 2, false);
brickSawmillRecipeBuilder("runestone_brick_alt_slab", <roots:runestone_brick_alt_slab>, <roots:runestone_brick_alt>, 2, 2, false);
brickSawmillRecipeBuilder("runestone_brick_slab", <roots:runestone_brick_slab>, <roots:runestone_brick>, 2, 2, false);
brickSawmillRecipeBuilder("runestone_slab", <roots:runestone_slab>, <roots:runestone>, 2, 2, false);
brickSawmillRecipeBuilder("metal_decoration1_slab_7", <immersiveengineering:metal_decoration1_slab:7>, <immersiveengineering:metal_decoration1:7>, 2, 2, false);
brickSawmillRecipeBuilder("metal_decoration1_slab_6", <immersiveengineering:metal_decoration1_slab:6>, <immersiveengineering:metal_decoration1:6>, 2, 2, false);
brickSawmillRecipeBuilder("metal_decoration1_slab_5", <immersiveengineering:metal_decoration1_slab:5>, <immersiveengineering:metal_decoration1:5>, 2, 2, false);
brickSawmillRecipeBuilder("metal_decoration1_slab_3", <immersiveengineering:metal_decoration1_slab:3>, <immersiveengineering:metal_decoration1:3>, 2, 2, false);
brickSawmillRecipeBuilder("metal_decoration1_slab_2", <immersiveengineering:metal_decoration1_slab:2>, <immersiveengineering:metal_decoration1:2>, 2, 2, false);
brickSawmillRecipeBuilder("metal_decoration1_slab_1", <immersiveengineering:metal_decoration1_slab:1>, <immersiveengineering:metal_decoration1:1>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_10", <immersiveengineering:sheetmetal_slab:10>, <immersiveengineering:sheetmetal:10>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_9", <immersiveengineering:sheetmetal_slab:9>, <immersiveengineering:sheetmetal:9>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_8", <immersiveengineering:sheetmetal_slab:8>, <immersiveengineering:sheetmetal:8>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_7", <immersiveengineering:sheetmetal_slab:7>, <immersiveengineering:sheetmetal:7>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_6", <immersiveengineering:sheetmetal_slab:6>, <immersiveengineering:sheetmetal:6>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_5", <immersiveengineering:sheetmetal_slab:5>, <immersiveengineering:sheetmetal:5>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_4", <immersiveengineering:sheetmetal_slab:4>, <immersiveengineering:sheetmetal:4>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_3", <immersiveengineering:sheetmetal_slab:3>, <immersiveengineering:sheetmetal:3>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_2", <immersiveengineering:sheetmetal_slab:2>, <immersiveengineering:sheetmetal:2>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_1", <immersiveengineering:sheetmetal_slab:1>, <immersiveengineering:sheetmetal:1>, 2, 2, false);
brickSawmillRecipeBuilder("sheetmetal_slab_0", <immersiveengineering:sheetmetal_slab:0>, <immersiveengineering:sheetmetal:0>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_10", <immersiveengineering:stone_decoration_slab:10>, <immersiveengineering:stone_decoration:10>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_7", <immersiveengineering:stone_decoration_slab:7>, <immersiveengineering:stone_decoration:7>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_6", <immersiveengineering:stone_decoration_slab:6>, <immersiveengineering:stone_decoration:6>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_5", <immersiveengineering:stone_decoration_slab:5>, <immersiveengineering:stone_decoration:5>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_4", <immersiveengineering:stone_decoration_slab:4>, <immersiveengineering:stone_decoration:4>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_2", <immersiveengineering:stone_decoration_slab:2>, <immersiveengineering:stone_decoration:2>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_1", <immersiveengineering:stone_decoration_slab:1>, <immersiveengineering:stone_decoration:1>, 2, 2, false);
brickSawmillRecipeBuilder("storage_slab_8", <immersiveengineering:storage_slab:8>, <immersiveengineering:storage:8>, 2, 2, false);
brickSawmillRecipeBuilder("storage_slab_7", <immersiveengineering:storage_slab:7>, <immersiveengineering:storage:7>, 2, 2, false);
brickSawmillRecipeBuilder("storage_slab_6", <immersiveengineering:storage_slab:6>, <immersiveengineering:storage:6>, 2, 2, false);
brickSawmillRecipeBuilder("storage_slab_5", <immersiveengineering:storage_slab:5>, <immersiveengineering:storage:5>, 2, 2, false);
brickSawmillRecipeBuilder("storage_slab_4", <immersiveengineering:storage_slab:4>, <immersiveengineering:storage:4>, 2, 2, false);
brickSawmillRecipeBuilder("storage_slab_3", <immersiveengineering:storage_slab:3>, <immersiveengineering:storage:3>, 2, 2, false);
brickSawmillRecipeBuilder("storage_slab_2", <immersiveengineering:storage_slab:2>, <immersiveengineering:storage:2>, 2, 2, false);
brickSawmillRecipeBuilder("storage_slab_1", <immersiveengineering:storage_slab:1>, <immersiveengineering:storage:1>, 2, 2, false);
brickSawmillRecipeBuilder("storage_slab_0", <immersiveengineering:storage_slab:0>, <immersiveengineering:storage:0>, 2, 2, false);


stoneSawmillRecipeBuilder("boards", <pyrotech:material:20>, <ore:slabWood>, 1, 2, 3); // boards
stoneSawmillRecipeBuilder("treated_boards", <pyrotech:material:23>, <immersiveengineering:treated_wood_slab>, 1, 2, 3); // tarred boards

//recipes.remove(<thebetweenlands:items_misc:20>); // sticks
//recipes.addShaped("weedwood_sticks", <thebetweenlands:items_misc:20> * 2, [[<thebetweenlands:weedwood_planks>], [<thebetweenlands:weedwood_planks>]]);
//stoneSawmillRecipeBuilder("weedwood_sticks", <thebetweenlands:items_misc:20>, <thebetweenlands:weedwood_planks>, 2, 4, 6);




// ANVIL
GraniteAnvil.removeRecipes(<minecraft:gold_nugget>);
GraniteAnvil.removeRecipes(<immersiveengineering:metal:29>);

GraniteAnvil.removeRecipes(<pyrotech:material:11>);
GraniteAnvil.addRecipe("bone_shard_from_bone", <pyrotech:material:11> * 3, <thebetweenlands:items_misc:14>, 4, "pickaxe", true);
GraniteAnvil.addRecipe("bone_shard_from_block", <pyrotech:material:11> * 27, <thebetweenlands:slimy_bone_block>, 8, "pickaxe", true);

GraniteAnvil.removeRecipes(<pyrotech:material:18>);
GraniteAnvil.addRecipe("diamond_shard", <pyrotech:material:18> * 9, <thebetweenlands:items_misc:19>, 16, "pickaxe", true);

GraniteAnvil.removeRecipes(<pyrotech:material:34>);
GraniteAnvil.addRecipe("octine_shard", <pyrotech:material:34> * 9, <thebetweenlands:octine_ingot>, 8, "pickaxe", true);
GraniteAnvil.addRecipe("octine_shard_from_nugget", <pyrotech:material:34>, <thebetweenlands:items_misc:42>, 4, "hammer", true);


function nuggetAnvilRecipeBuilder(name as string, output as IItemStack, input as IIngredient, hits as int) {
	recipes.remove(output);
	IroncladAnvil.addRecipe(name, output, input, hits, "hammer");
}

nuggetAnvilRecipeBuilder("syrmorite_nugget", <thebetweenlands:items_misc:41> * 9, <thebetweenlands:items_misc:11>, 8);
nuggetAnvilRecipeBuilder("octine_nugget", <thebetweenlands:items_misc:42>, <pyrotech:material:34>, 8);

IroncladAnvil.addRecipe("syrmorite_ingot", <thebetweenlands:items_misc:11> * 9, <thebetweenlands:syrmorite_block>, 8, "pickaxe");
IroncladAnvil.addRecipe("octine_ingot", <thebetweenlands:octine_ingot> * 9, <thebetweenlands:octine_block>, 8, "pickaxe");




// BURN
Burn.removeRecipes(<pyrotech:material:15>);
Burn.removeRecipes(<pyrotech:material:1>);

Burn.removeRecipes(<minecraft:coal:1>);
Burn.createBuilder("sulfur_from_hearthgrove", <thebetweenlands:items_misc:18>, "pyrotech:log_pile:*")
    .setBurnStages(2)
    .setTotalBurnTimeTicks(1 * 60 * 20)
    .setFluidProduced(<liquid:creosote> * 500)
    .setFailureChance(0.15)
    .addFailureItem(<immersiveengineering:material:25>)
    .addFailureItem(<immersiveengineering:material:25> * 2)
    .addFailureItem(<immersiveengineering:material:25> * 4)
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(true)
    .register();

Burn.createBuilder("coke_from_sulfur", <immersiveengineering:material:6>, "thebetweenlands:sulfur_block:*")
    .setBurnStages(10)
    .setTotalBurnTimeTicks(1 * 60 * 20)
    .setFluidProduced(<liquid:tar> * 50)
    .setFailureChance(0.15)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(true)
    .register();





// BLOOMERY
Bloomery.removeBloomeryRecipes(<immersiveengineering:metal:29>);
Bloomery.removeBloomeryRecipes(<thebetweenlands:items_misc:42>);
Bloomery.createBloomeryBuilder(
        "bloom_from_octine_ore",   // recipe name
        <thebetweenlands:items_misc:42>, // output
        <thebetweenlands:octine_ore>     // input
    )
    .setAnvilTiers(["ironclad"])
    .setBurnTimeTicks(24 * 60 * 20)
    .setFailureChance(0.25)
    .setBloomYield(12, 15)
    .setSlagItem(<pyrotech:generated_slag_octine>, 4)
    .addFailureItem(<pyrotech:slag>, 1)
    .addFailureItem(<pyrotech:generated_slag_octine>, 2)
    .register();


Bloomery.createBloomeryBuilder(
        "bloom_from_octine_slag",             // recipe name
        <thebetweenlands:items_misc:42>,            // output
        <pyrotech:generated_pile_slag_octine> // input
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(12 * 60 * 20)
    .setFailureChance(0.25)
    .setBloomYield(12, 15)
    .setSlagItem(<pyrotech:generated_slag_octine>, 2)
    .addFailureItem(<thebetweenlands:items_misc:50>, 1)
    .addFailureItem(<pyrotech:slag>, 2)
    .setLangKey("tile.oreOctine;item.pyrotech.slag.unique")
    .register();





// OVEN
StoneOven.removeRecipes(<thebetweenlands:items_misc:32>);
StoneOven.addRecipe("baked_apple_from_apple", <thebetweenlands:items_misc:32>, <pyrotech:material:25>, true);






// NAMING
<pyrotech:bone_hammer>.displayName = "Slimy Bone Hammer";
<pyrotech:gold_hammer>.displayName = "Octine Hammer";
<pyrotech:diamond_hammer>.displayName = "Valonite Hammer";
<pyrotech:obsidian_hammer>.displayName = "Ancient Hammer";

<pyrotech:sawmill_blade_bone>.displayName = "Slimy Bone Sawmill Blade";
<pyrotech:sawmill_blade_gold>.displayName = "Octine Sawmill Blade";
<pyrotech:sawmill_blade_diamond>.displayName = "Valonite Sawmill Blade";
<pyrotech:sawmill_blade_obsidian>.displayName = "Ancient Sawmill Blade";

<pyrotech:cog_bone>.displayName = "Slimy Bone Cog";
<pyrotech:cog_gold>.displayName = "Octine Cog";
<pyrotech:cog_diamond>.displayName = "Valonite Cog";
<pyrotech:cog_obsidian>.displayName = "Ancient Cog";

<pyrotech:tongs_bone>.displayName = "Slimy Bone Tongs";
<pyrotech:tongs_gold>.displayName = "Octine Tongs";
<pyrotech:tongs_diamond>.displayName = "Valonite Tongs";
<pyrotech:tongs_obsidian>.displayName = "Ancient Tongs";