import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import mods.pyrotech.SoakingPot;
import mods.pyrotech.PitKiln;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.IroncladAnvil;
import mods.pyrotech.StoneSawmill;
import mods.pyrotech.StoneCrucible;
import mods.pyrotech.BrickSawmill;
import mods.pyrotech.Chopping;
import mods.pyrotech.Bloomery;
import mods.pyrotech.BrickOven;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.BrickCrucible;
import mods.pyrotech.StoneOven;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.CompactingBin;
import mods.pyrotech.MechanicalCompactor;
import mods.pyrotech.Campfire;
import mods.rustichromia.Assembler;
import mods.pyrotech.Stages;



JEI.hideCategory("pyrotech.crude.drying");
JEI.hideCategory("pyrotech.drying");
JEI.hideCategory("pyrotech.worktable");
JEI.hideCategory("pyrotech.compost.bin");
//JEI.hideCategory("pyrotech.pit.kiln");



val itemsToRemove = [
	<pyrotech:log_pile>,
	//<pyrotech:material:5>,
	<pyrotech:refractory_door>,
	<pyrotech:refractory_glass>,
	//<pyrotech:tar_collector:1>,
	//<pyrotech:tar_drain:1>,
	<pyrotech:bow_drill>,
	//<pyrotech:flint_and_tinder>,
	<pyrotech:sawmill_blade_stone>,
	<pyrotech:sawmill_blade_flint>,
	<pyrotech:sawmill_blade_iron>,
	//<pyrotech:crude_axe>,
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
	//<pyrotech:torch_fiber>,
	<pyrotech:torch_stone>,
	<pyrotech:stone_tank>,
	<pyrotech:brick_tank>,
	//<pyrotech:kiln_pit>,
	//<pyrotech:worktable>,
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
	<pyrotech:material:7>,
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
	<pyrotech:rock:4>,
	<pyrotech:rock:3>,
	<pyrotech:rock:2>,
	<pyrotech:rock:1>,
	<pyrotech:rock>,
	<pyrotech:fluid.liquid_clay>,
	//<pyrotech:crude_hammer>,
	<pyrotech:stone_hammer>,
	<pyrotech:flint_hammer>,
	<pyrotech:iron_hammer>,
	<pyrotech:tongs_stone>,
	<pyrotech:tongs_flint>,
	<pyrotech:tongs_iron>,
	<pyrotech:crude_spear>,
	<pyrotech:flint_spear>,
	<pyrotech:bone_spear>,
	//<pyrotech:chopping_block>,
	<pyrotech:material:28>,
	<pyrotech:generated_slag_gold>,
	<pyrotech:generated_pile_slag_gold>,
	//<pyrotech:generated_slag_iron>,
	//<pyrotech:generated_pile_slag_iron>,
	<pyrotech:material:30>,
	//<pyrotech:planks_tarred>,
	<pyrotech:stone_kiln>,
	<pyrotech:stone_oven>,
	<pyrotech:stone_crucible>,
	//<pyrotech:brick_kiln>,
	//<pyrotech:brick_oven>,
	<pyrotech:brick_crucible>,
	//<pyrotech:campfire>,
	<pyrotech:material:29>,
	//<pyrotech:burned_food>,
	<pyrotech:material:24>,
	<pyrotech:material:6>,
	<pyrotech:igniter:1>,
	<pyrotech:igniter>,
	<pyrotech:book>,
	<pyrotech:material:32>,
	//<pyrotech:tinder>,
	<pyrotech:material:0>,
	//<pyrotech:tar_collector>,
	//<pyrotech:tar_drain>,
	<pyrotech:material:1>,
	<pyrotech:rock:5>,
	<thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "liquid_clay", Amount: 1000}}),
	<thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "wood_tar", Amount: 1000}}),
	<thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "coal_tar", Amount: 1000}}),
	<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "liquid_clay", Amount: 1000}}),
	<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "wood_tar", Amount: 1000}}),
	<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "coal_tar", Amount: 1000}}),
	<pyrotech:stone_door>,
	<pyrotech:matchstick>,
	<pyrotech:material:11>,
	<pyrotech:material:35>,
	<pyrotech:material:18>,
	<pyrotech:material:34>,
	<pyrotech:wood_tar_block>,
	<pyrotech:living_tar>,
	//<pyrotech:material:4>,
	<pyrotech:faucet_brick>,
	<pyrotech:material:9>,
	//<pyrotech:refractory_brick_block>,
	<pyrotech:slag_glass>,
	<pyrotech:stone_sawmill>,
	<pyrotech:rock:11>,
	<pyrotech:cob_wet>,
	<pyrotech:cob_dry>,
	<pyrotech:mud>,
	<pyrotech:mud_layer>,
	<pyrotech:crafting_table_template>,
	<pyrotech:refractory_brick_stairs>,
	<pyrotech:refractory_brick_wall>,
	<pyrotech:refractory_brick_slab>,
	<pyrotech:material:38>,
	<pyrotech:material:39>,
	<pyrotech:material:40>,
	<pyrotech:material:41>,
	<pyrotech:material:42>,
	<pyrotech:material:43>,
	<pyrotech:material:44>,
	<pyrotech:material:45>,
	<pyrotech:material:47>,
	<pyrotech:material:48>,
	<pyrotech:material:49>,
	<pyrotech:material:50>,
	<pyrotech:material:51>,
	<pyrotech:material:52>,
	<pyrotech:material:53>,
	<pyrotech:material:54>,
	<pyrotech:pyroberry_wine>,
	<pyrotech:gloamberry_wine>,
	<pyrotech:freckleberry_wine>,
	<pyrotech:tainted_meat>,
	<pyrotech:bone_hammer_durable>,
	<pyrotech:flint_hammer_durable>,
	<pyrotech:pyroberry_seeds>,
	<pyrotech:pyroberries>,
	<pyrotech:pyroberry_cocktail>,
	<pyrotech:gloamberry_seeds>,
	<pyrotech:gloamberries>,
	<pyrotech:freckleberry_seeds>,
	<pyrotech:freckleberries>,
	<pyrotech:furnace_core>,
	<pyrotech:butchers_block>,
	<pyrotech:hide_pig>,
	<pyrotech:hide_sheep_sheared>,
	<pyrotech:hide_washed>,
	<pyrotech:hide_small_washed>,
	<pyrotech:hide_llama>,
	<pyrotech:hide_tanned>,
	<pyrotech:hide_small_tanned>,
	<pyrotech:hide_scraped>,
	<pyrotech:hide_small_scraped>,
	<pyrotech:pelt_ruined>,
	<pyrotech:pelt_cow>,
	<pyrotech:pelt_mooshroom>,
	<pyrotech:pelt_polar_bear>,
	<pyrotech:pelt_bat>,
	<pyrotech:pelt_horse>,
	<pyrotech:pelt_wolf>,
	<pyrotech:pelt_sheep_yellow>,
	<pyrotech:pelt_sheep_white>,
	<pyrotech:pelt_sheep_gray_light>,
	<pyrotech:pelt_sheep_red>,
	<pyrotech:pelt_sheep_purple>,
	<pyrotech:pelt_sheep_pink>,
	<pyrotech:pelt_sheep_orange>,
	<pyrotech:pelt_sheep_magenta>,
	<pyrotech:pelt_sheep_lime>,
	<pyrotech:pelt_sheep_blue_light>,
	<pyrotech:pelt_sheep_green>,
	<pyrotech:pelt_sheep_gray>,
	<pyrotech:pelt_sheep_cyan>,
	<pyrotech:pelt_sheep_brown>,
	<pyrotech:pelt_sheep_blue>,
	<pyrotech:pelt_sheep_black>,
	<pyrotech:pelt_llama_white>,
	<pyrotech:pelt_llama_creamy>,
	<pyrotech:pelt_llama_gray>,
	<pyrotech:pelt_llama_brown>,
	<pyrotech:bone_hunters_knife>,
	<pyrotech:flint_hunters_knife>,
	<pyrotech:stone_hunters_knife>,
	<pyrotech:iron_hunters_knife>,
	<pyrotech:gold_hunters_knife>,
	<pyrotech:diamond_hunters_knife>,
	<pyrotech:obsidian_hunters_knife>,
	<pyrotech:flint_butchers_knife>,
	<pyrotech:bone_butchers_knife>,
	<pyrotech:stone_butchers_knife>,
	<pyrotech:iron_butchers_knife>,
	<pyrotech:gold_butchers_knife>,
	<pyrotech:diamond_butchers_knife>,
	<pyrotech:obsidian_butchers_knife>,
	<pyrotech:leather_durable_repair_kit>,
	<pyrotech:leather_durable_upgrade_kit>,
	<pyrotech:leather_repair_kit>,
	<pyrotech:flint_arrow>,
	<pyrotech:bone_arrow>,
	<pyrotech:fluid.lamp_oil>,
	<pyrotech:lamp_oil>,
	<pyrotech:bow_drill_durable>,
	<pyrotech:barrel>,
	<pyrotech:tanning_rack>,
	<pyrotech:barrel_lid>,
	//<pyrotech:trip_hammer>,
	//<pyrotech:fluid.wood_tar>,
	//<pyrotech:fluid.coal_tar>,
	<pyrotech:crude_shield>,
	<pyrotech:durable_shield>,
	<pyrotech:bone_axe_durable>,
	<pyrotech:bone_hoe_durable>,
	<pyrotech:bone_pickaxe_durable>,
	<pyrotech:bone_shovel_durable>,
	<pyrotech:flint_axe_durable>,
	<pyrotech:flint_hoe_durable>,
	<pyrotech:flint_pickaxe_durable>,
	<pyrotech:flint_shovel_durable>,
	<pyrotech:bone_tool_repair_kit>,
	<pyrotech:flint_tool_repair_kit>,
] as IItemStack[];


for item in itemsToRemove {
	JEI.removeAndHide(item);
	furnace.remove(item);
	item.removeAspects(allAspects);
}


// RECIPES
/*
recipes.remove(<pyrotech:matchstick>);
scripts.utils.addShapeless("matchstick", <pyrotech:matchstick>, [
	<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:27>, <thebetweenlands:items_misc:18>, <thebetweenlands:items_misc:23> 
]);
*/

recipes.remove(<pyrotech:anvil_obsidian>);

recipes.remove(<pyrotech:material:4>);
scripts.utils.addShaped("refractory_clay", <pyrotech:material:4> * 5, [
	[<thebetweenlands:mud>, <ore:dustAsh>, <thebetweenlands:mud>], 
	[<pyrotech:material:8>, <thebetweenlands:silt>, <pyrotech:material:8>], 
	[<thebetweenlands:mud>, <ore:dustAsh>, <thebetweenlands:mud>]
]);

recipes.remove(<pyrotech:flint_and_tinder>);
scripts.utils.addShaped("flint_and_tinder", <pyrotech:flint_and_tinder>, [
	[<thebetweenlands:items_misc:50>, <thebetweenlands:swamp_reed_item>],
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:items_misc:50>]
]);

scripts.utils.addShaped("flint_and_tinder_mirrored", <pyrotech:flint_and_tinder>, [
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:items_misc:50>],
	[<thebetweenlands:items_misc:50>, <thebetweenlands:swamp_reed_item>]
]);

recipes.remove(<pyrotech:tinder>);
scripts.utils.addShapedMirrored("tech/basic/tinder", <pyrotech:tinder>, [
	[<thebetweenlands:swamp_reed_item>, <ore:stickWood>], 
	[<ore:stickWood>, <thebetweenlands:swamp_reed_item>]
]);

//recipes.remove(<pyrotech:log_pile>);
//scripts.utils.addShaped("log_pile", <pyrotech:log_pile>, [
//	[<thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>],
//	[<thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>],
//	[<thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>, <thebetweenlands:log_hearthgrove:*>]
//]);

/*
recipes.remove(<pyrotech:stone_sawmill>);
scripts.utils.addShaped("tech/machine/stone_sawmill", <pyrotech:stone_sawmill>, [
	[<pyrotech:masonry_brick_block>, <pyrotech:material:16>, <pyrotech:masonry_brick_block>], 
	[<pyrotech:masonry_brick_block>, <ore:plankWood>, <pyrotech:masonry_brick_block>], 
	[<pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>, <pyrotech:masonry_brick_block>]
]);
*/

recipes.remove(<pyrotech:faucet_stone>);
scripts.utils.addShaped("storage/faucet_stone", <pyrotech:faucet_stone>, [
	[<pyrotech:material:16>, null, <pyrotech:material:16>], 
	[null, <pyrotech:material:16>, null]
]);

recipes.remove(<pyrotech:wood_rack>);
scripts.utils.addShaped("storage/wood_rack", <pyrotech:wood_rack>, [
	[<ore:logWood>, <ore:slabWood>, <ore:logWood>], 
	[<thebetweenlands:weedwood_ladder>, <ore:slabWood>, <thebetweenlands:weedwood_ladder>], 
	[<ore:logWood>, <ore:slabWood>, <ore:logWood>]
]);

recipes.remove(<pyrotech:torch_fiber>);
scripts.utils.addShaped("ignition/torch_fiber", <pyrotech:torch_fiber>, [
	[<thebetweenlands:items_misc:6>], 
	[<ore:stickWood>]
]);

recipes.remove(<pyrotech:kiln_pit>);
scripts.utils.addShaped("tech/basic/kiln_pit", <pyrotech:kiln_pit>, [
	[<thebetweenlands:items_misc:6>, <thebetweenlands:items_misc:6>]
]);

recipes.remove(<pyrotech:crude_axe>);
scripts.utils.addShaped("tool/crude_axe", <pyrotech:crude_axe>, [
	[<thebetweenlands:items_misc:50>, <thebetweenlands:swamp_reed_item>], 
	[<thebetweenlands:items_misc:20>, null]
]);

recipes.remove(<pyrotech:crude_hammer>);
scripts.utils.addShaped("crude_hammer", <pyrotech:crude_hammer>, [
	[<thebetweenlands:items_misc:50>, <thebetweenlands:swamp_reed_item>], 
	[<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:50>]
]);

recipes.remove(<pyrotech:worktable>);
scripts.utils.addShaped("worktable", <pyrotech:worktable>, [
	[<thebetweenlands:weedwood_plank_slab>], 
	[<thebetweenlands:log_weedwood:*>]
]);


recipes.remove(<pyrotech:obsidian_hammer>);
recipes.remove(<pyrotech:tongs_obsidian>);
recipes.remove(<pyrotech:sawmill_blade_obsidian>);
recipes.remove(<pyrotech:cog_obsidian>);




// OVEN
StoneOven.blacklistAllSmeltingRecipes();
BrickOven.blacklistAllSmeltingRecipes();



// CAMPFIRE
Campfire.blacklistAllSmeltingRecipes();

val campfireRecipes = [
	<thebetweenlands:frog_legs_cooked>,
	<thebetweenlands:fried_swamp_kelp>,
	<thebetweenlands:sludge_jello>,
	<thebetweenlands:olmlette>,
	<thebetweenlands:barnacle_cooked>,
	<thebetweenlands:mire_snail_egg_cooked>,
	<thebetweenlands:snail_flesh_cooked>,
	<thebetweenlands:anadia_meat_cooked>,
	<thebetweenlands:olm_egg_cooked>,
	<roots:cooked_pereskia>,
] as IItemStack[];

for item in campfireRecipes {
	furnace.remove(item);
}

val defaultCookTime = 20 * 20;

Campfire.addRecipe("frog_legs_cooked", <thebetweenlands:frog_legs_cooked>, <thebetweenlands:frog_legs_raw>, defaultCookTime);
Campfire.addRecipe("fried_swamp_kelp", <thebetweenlands:fried_swamp_kelp>, <thebetweenlands:swamp_kelp_item>, defaultCookTime);
Campfire.addRecipe("sludge_jello", <thebetweenlands:sludge_jello>, <thebetweenlands:sludge_ball>, defaultCookTime);
Campfire.addRecipe("olmlette", <thebetweenlands:olmlette>, <thebetweenlands:items_misc:61>, defaultCookTime);
Campfire.addRecipe("barnacle_cooked", <thebetweenlands:barnacle_cooked>, <thebetweenlands:barnacle>, defaultCookTime);
Campfire.addRecipe("mire_snail_egg_cooked", <thebetweenlands:mire_snail_egg_cooked>, <thebetweenlands:mire_snail_egg>, defaultCookTime);
Campfire.addRecipe("snail_flesh_cooked", <thebetweenlands:snail_flesh_cooked>, <thebetweenlands:snail_flesh_raw>, defaultCookTime);
Campfire.addRecipe("anadia_meat_cooked", <thebetweenlands:anadia_meat_cooked>, <thebetweenlands:anadia_meat_raw>, defaultCookTime);
Campfire.addRecipe("olm_egg_cooked", <thebetweenlands:olm_egg_cooked>, <thebetweenlands:olm_egg_raw>, defaultCookTime);
//Campfire.addRecipe("cooked_pereskia", <roots:cooked_pereskia>, <roots:pereskia_bulb>, defaultCookTime);
Campfire.addRecipe("ash", <embers:dust_ash>, <pyrotech:rock:7>, defaultCookTime / 4);
Campfire.addRecipe("sulfur_torch", <thebetweenlands:sulfur_torch>, <thebetweenlands:sulfur_torch_extinguished>, 40);
Campfire.addRecipe("dried_swamp_kelp", <thebetweenlands:items_misc:6>, <thebetweenlands:swamp_reed_item>, defaultCookTime);
Campfire.addRecipe("purified_water", <simpledifficulty:purified_water_bottle>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), defaultCookTime);
//Campfire.addRecipe("purified_bucket", <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "purifiedwater", Amount: 1000}}), <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "swamp_water", Amount: 1000}}), defaultCookTime * 4);

StoneOven.addRecipe("frog_legs_cooked", <thebetweenlands:frog_legs_cooked>, <thebetweenlands:frog_legs_raw>, true);
StoneOven.addRecipe("fried_swamp_kelp", <thebetweenlands:fried_swamp_kelp>, <thebetweenlands:swamp_kelp_item>, true);
StoneOven.addRecipe("sludge_jello", <thebetweenlands:sludge_jello>, <thebetweenlands:sludge_ball>, true);
StoneOven.addRecipe("olmlette", <thebetweenlands:olmlette>, <thebetweenlands:items_misc:61>, true);
StoneOven.addRecipe("barnacle_cooked", <thebetweenlands:barnacle_cooked>, <thebetweenlands:barnacle>, true);
StoneOven.addRecipe("mire_snail_egg_cooked", <thebetweenlands:mire_snail_egg_cooked>, <thebetweenlands:mire_snail_egg>, true);
StoneOven.addRecipe("snail_flesh_cooked", <thebetweenlands:snail_flesh_cooked>, <thebetweenlands:snail_flesh_raw>, true);
StoneOven.addRecipe("anadia_meat_cooked", <thebetweenlands:anadia_meat_cooked>, <thebetweenlands:anadia_meat_raw>, true);
StoneOven.addRecipe("olm_egg_cooked", <thebetweenlands:olm_egg_cooked>, <thebetweenlands:olm_egg_raw>, true);
//StoneOven.addRecipe("cooked_pereskia", <roots:cooked_pereskia>, <roots:pereskia_bulb>, true);
StoneOven.addRecipe("ash", <embers:dust_ash>, <pyrotech:rock:7>, true);
StoneOven.addRecipe("sulfur_torch", <thebetweenlands:sulfur_torch>, <thebetweenlands:sulfur_torch_extinguished>, true);
StoneOven.addRecipe("dried_swamp_kelp", <thebetweenlands:items_misc:6>, <thebetweenlands:swamp_reed_item>, true);
StoneOven.addRecipe("purified_water", <simpledifficulty:purified_water_bottle>, <minecraft:potion>.withTag({Potion: "minecraft:water"}), true);
StoneOven.addRecipe("white_tea_leaf", <teastory:white_tea_leaf>, <teastory:half_dried_tea>, true);
//StoneOven.addRecipe("purified_bucket", <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "purifiedwater", Amount: 1000}}), <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "swamp_water", Amount: 1000}}), true);



// COMPACTING BIN
val compactingToRemove = [
	<minecraft:netherrack>,
	<minecraft:lapis_block>,
	<minecraft:redstone_block>,
	<pyrotech:charcoal_block>,
	<minecraft:gravel>,
	<minecraft:dirt>,
	<minecraft:sand:*>,
	<minecraft:grass>,
	<minecraft:clay>,
	<minecraft:snow>,
	<minecraft:bone_block>,
	<minecraft:coal_block>,
	<pyrotech:coal_coke_block>,
	<pyrotech:pile_ash>,
] as IItemStack[];

for item in compactingToRemove {
	CompactingBin.removeRecipes(item);
	MechanicalCompactor.removeRecipes(item);
}

CompactingBin.addRecipe("redstone_block", <betweenlandsredstone:scabyst_block>, <ore:dustRedstone>, 9, true);
//CompactingBin.addRecipe("sulfur", <thebetweenlands:items_misc:18>, <immersiveengineering:material:25>, 8, true);

recipes.remove(<thebetweenlands:sulfur_block>);
CompactingBin.addRecipe("sulfur_block", <thebetweenlands:sulfur_block>, <thebetweenlands:items_misc:18>, 9, true);
CompactingBin.addRecipe("sulfur", <thebetweenlands:items_misc:18>, <soot:sulfur>, 8, true);

CompactingBin.addRecipe("pile_ash", <pyrotech:pile_ash>, <embers:dust_ash>, 8, true);
CompactingBin.addRecipe("snow_block", <minecraft:snow>, <minecraft:snowball>, 8, true);






// SOAKING POT
SoakingPot.removeAllRecipes();

SoakingPot.addRecipe("slaked_lime", <pyrotech:material:8>, <liquid:swamp_water> * 125, <thebetweenlands:items_misc:27>, 7 * 60 * 20);
SoakingPot.addRecipe("pulp_from_wood_chips_pile", <pyrotech:material:25>, <liquid:swamp_water> * 500, <pyrotech:pile_wood_chips>, true, 7 * 60 * 20);
SoakingPot.addRecipe("pulp_from_dry_bark", <pyrotech:material:25>, <liquid:swamp_water> * 125, <thebetweenlands:items_misc:13>, true, 2 * 60 * 20);
SoakingPot.addRecipe("pulp_from_swamp_reed", <pizzacraft:paper_mass>, <liquid:swamp_water> * 50, <thebetweenlands:swamp_reed_item>, true, 4 * 60 * 2);
SoakingPot.addRecipe("pulp_from_bark", <pizzacraft:paper_mass>, <liquid:swamp_water> * 50, <ore:rootsBark>, true, 3 * 60 * 2);
//SoakingPot.addRecipe("board_tarred", <pyrotech:material:23>, <liquid:tar> * 50, <pyrotech:material:20>, true, 105 * 20);
SoakingPot.addRecipe("planks_tarred", <pyrotech:planks_tarred>, <liquid:tar> * 125, <ore:plankWood>, true, 7 * 60 * 20);
SoakingPot.addRecipe("cragrock_chiseled_mossy", <thebetweenlands:cragrock_chiseled_mossy>, <liquid:swamp_water> * 250, <thebetweenlands:cragrock_chiseled>, 7 * 60 * 20);
SoakingPot.addRecipe("cragrock_bricks_mossy", <thebetweenlands:cragrock_bricks_mossy>, <liquid:swamp_water> * 250, <thebetweenlands:cragrock_bricks>, 7 * 60 * 20);
SoakingPot.addRecipe("cragrock_tiles_mossy", <thebetweenlands:cragrock_tiles_mossy>, <liquid:swamp_water> * 250, <thebetweenlands:cragrock_tiles>, 7 * 60 * 20);
SoakingPot.addRecipe("mossy_betweenstone_bricks", <thebetweenlands:mossy_betweenstone_bricks>, <liquid:swamp_water> * 250, <thebetweenlands:betweenstone_bricks>, 7 * 60 * 20);
SoakingPot.addRecipe("mossy_betweenstone_tiles", <thebetweenlands:mossy_betweenstone_tiles>, <liquid:swamp_water> * 250, <thebetweenlands:betweenstone_tiles>, 7 * 60 * 20);
SoakingPot.addRecipe("mossy_limestone_bricks", <thebetweenlands:mossy_limestone_bricks>, <liquid:swamp_water> * 250, <thebetweenlands:limestone_bricks>, 7 * 60 * 20);
SoakingPot.addRecipe("mossy_smooth_betweenstone", <thebetweenlands:mossy_smooth_betweenstone>, <liquid:swamp_water> * 250, <thebetweenlands:smooth_betweenstone>, 7 * 60 * 20);
//SoakingPot.addRecipe("mortar", <contenttweaker:mortar> * 16, <liquid:lime_water> * 100, <thebetweenlands:silt>, 7 * 60 * 20);
SoakingPot.addRecipe("treated_planks", <immersiveengineering:treated_wood>, <liquid:creosote> * 125, <pyrotech:planks_tarred>, 3 * 60 * 20);
SoakingPot.addRecipe("treated_planks_2", <immersiveengineering:treated_wood>, <liquid:fish_oil> * 125, <pyrotech:planks_tarred>, 3 * 60 * 20);
SoakingPot.addRecipe("yogurt", <growthcraft_milk:yogurt>, <liquid:liquid_milk> * 250, <growthcraft_milk:starter_culture>, 3 * 60 * 20);


// ANVIL
GraniteAnvil.removeAllRecipes();
IroncladAnvil.removeAllRecipes();

recipes.remove(<thebetweenlands:items_misc:18>);
GraniteAnvil.addRecipe("sulfur", <thebetweenlands:items_misc:18> * 9, <thebetweenlands:sulfur_block>, 8, "hammer", true);
GraniteAnvil.addRecipe("pebbles", <thebetweenlands:items_misc:50> * 2, <thebetweenlands:betweenstone>, 4, "hammer", true);
GraniteAnvil.addRecipe("blueduest", <betweenlandsredstone:scabyst_dust> * 9, <betweenlandsredstone:scabyst_block>, 8, "hammer", true);
GraniteAnvil.addRecipe("ash_from_food", <embers:dust_ash> * 2, <pyrotech:burned_food>, 2, "hammer", true);
GraniteAnvil.addRecipe("sulfur_from_sulfur_liver", <thebetweenlands:items_misc:18> * 8, <soot:sulfur_clump>, 4, "hammer", true);
GraniteAnvil.addRecipe("sulfur_chunks_from_sulfur", <soot:sulfur> * 8, <thebetweenlands:items_misc:18>, 4, "hammer", true);

//IroncladAnvil.addRecipe("radiant_dust", <arcanearchives:radiant_dust>, <arcanearchives:raw_quartz>, 8, "hammer");

function nuggetAnvilRecipeBuilder(name as string, output as IItemStack, input as IIngredient, hits as int) {
	recipes.remove(output);
	IroncladAnvil.addRecipe(name, output, input, hits, "pickaxe");
}

for metal in metals {
	IroncladAnvil.addRecipe(metal ~ "_nugget", metals[metal].nugget * 9, metals[metal].ingot, 8, "pickaxe");
	IroncladAnvil.addRecipe(metal ~ "_ingot", metals[metal].ingot * 9, metals[metal].block, 8, "pickaxe");
}


val extraPlates = {
	<embers:plate_dawnstone> : <embers:ingot_dawnstone>,
	<thaumcraft:plate:0> : <thaumcraft:ingot:2>,
	<thaumcraft:plate:2> : <thaumcraft:ingot:0>,
} as IIngredient[IItemStack];

var plateCount = 0;

for plate in extraPlates {
	recipes.remove(plate);
	IroncladAnvil.addRecipe("plate_" ~ plateCount, plate, extraPlates[plate], 32, "hammer");
	plateCount += 1;
}


GraniteAnvil.addRecipe("stick_stone", <pyrotech:material:27> * 4, <pyrotech:material:16>, 4, "pickaxe", true);
IroncladAnvil.addRecipe("redstone_dust_from_dense_redstone", <betweenlandsredstone:scabyst_dust> * 2, <pyrotech:material:36>, 2, "hammer");
//IroncladAnvil.addRecipe("redstone_from_redstone_block", <minecraft:redstone> * 9, <ore:blockRedstone>, 8, "hammer");
IroncladAnvil.addRecipe("valonite_block_to_gem", <thebetweenlands:items_misc:19> * 9, <thebetweenlands:valonite_block>, 8, "pickaxe");

recipes.remove(<botania:manaresource:2>);
IroncladAnvil.addRecipe("manadiamond_block_to_gem", <botania:manaresource:2> * 9, <botania:storage:3>, 8, "pickaxe");



function setupMetalRecipe(name as string, itemNugget as IItemStack, itemIngot as IItemStack, itemBlock as IItemStack) {
	recipes.remove(itemNugget);
	recipes.remove(itemIngot);
	recipes.remove(itemBlock);

	IroncladAnvil.addRecipe(name ~ "_nugget", itemNugget * 9, itemIngot, 8, "pickaxe");
	IroncladAnvil.addRecipe(name ~ "_ingot", itemIngot * 9, itemBlock, 8, "pickaxe");
	
	scripts.utils.addShapeless(name ~ "_ingot", itemIngot, [itemNugget, itemNugget, itemNugget, itemNugget, itemNugget, itemNugget, itemNugget, itemNugget, itemNugget]);
	scripts.utils.addShapeless(name ~ "_block", itemBlock, [itemIngot, itemIngot, itemIngot, itemIngot, itemIngot, itemIngot, itemIngot, itemIngot, itemIngot]);
}

setupMetalRecipe("manasteel", <botania:manaresource:17>, <botania:manaresource>, <botania:storage>);
setupMetalRecipe("terrasteel", <botania:manaresource:18>, <botania:manaresource:4>, <botania:storage:1>);
setupMetalRecipe("elementium", <botania:manaresource:19>, <botania:manaresource:7>, <botania:storage:2>);



// SAWMILL
StoneSawmill.removeAllRecipes();
BrickSawmill.removeAllRecipes();
Chopping.removeAllRecipes();

function stoneSawmillRecipeBuilder(name as string, itemOut as IItemStack, itemIn as IIngredient, countBone as int, countOctine as int, countDiamond as int) {
	StoneSawmill.addRecipe(name ~ "_sawmill_bone", itemOut * countBone, itemIn, 200, <pyrotech:sawmill_blade_bone:*>, 2, true);
	StoneSawmill.addRecipe(name ~ "_sawmill_octine", itemOut * countOctine, itemIn, 160, <pyrotech:sawmill_blade_gold:*>, 1, true);
	StoneSawmill.addRecipe(name ~ "_sawmill_valonite", itemOut * countDiamond, itemIn, 120, <pyrotech:sawmill_blade_diamond:*>, 1, true);
	StoneSawmill.addRecipe(name ~ "_sawmill_ancient", itemOut * countDiamond, itemIn, 80, <pyrotech:sawmill_blade_obsidian:*>, 0, true);
}

function brickSawmillRecipeBuilder(name as string, itemOut as IItemStack, itemIn as IIngredient, countOctine as int, countDiamond as int, dropSawDust as bool) {
	var multiplier = 1 as int;

	if(dropSawDust == false) {
		multiplier = 0;
	}

	recipes.remove(itemOut);

	GraniteAnvil.removeRecipes(itemOut);
	GraniteAnvil.addRecipe(name ~ "_anvil", itemOut * 2, itemIn, 8, "pickaxe", true);

	BrickSawmill.addRecipe(name ~ "_sawmill_octine", itemOut * countOctine, itemIn, 600, <pyrotech:sawmill_blade_gold:*>, 1 * multiplier);
	BrickSawmill.addRecipe(name ~ "_sawmill_valonite", itemOut * countDiamond, itemIn, 300, <pyrotech:sawmill_blade_diamond:*>, 1 * multiplier);
	BrickSawmill.addRecipe(name ~ "_sawmill_ancient", itemOut * countDiamond, itemIn, 150, <pyrotech:sawmill_blade_obsidian:*>, 0);
}


function slabRecipe(name as string, itemOut as IItemStack, itemIn as IIngredient, countBone as int, countOctine as int, countDiamond as int) {
	recipes.remove(itemOut);
	//scripts.utils.addShaped(name, itemOut * 3, [[itemIn, itemIn, itemIn]]);
	Chopping.addRecipe(name, itemOut, itemIn);
	stoneSawmillRecipeBuilder(name, itemOut, itemIn, countBone, countOctine, countDiamond);
}

function planksRecipe(name as string, itemOut as IItemStack, itemIn as IIngredient, countBone as int, countOctine as int, countDiamond as int) {
	recipes.remove(itemOut);
	//scripts.utils.addShapeless(name, itemOut * 2, [itemIn]);
	Chopping.addRecipe(name, itemOut * 2, itemIn);
	stoneSawmillRecipeBuilder(name, itemOut, itemIn, countBone, countOctine, countDiamond);
	Assembler.add(name, 1, [itemIn], [itemOut * 2, <pyrotech:rock:7>], 1, 7, 200);
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
slabRecipe("weedwood_plank_slab_treated", <thebetweenlands:weedwood_plank_slab_treated>, <thebetweenlands:weedwood_planks_treated>, 2, 3, 3);
slabRecipe("rubber_tree_plank_slab_treated", <thebetweenlands:rubber_tree_plank_slab_treated>, <thebetweenlands:rubber_tree_planks_treated>, 2, 3, 3);
slabRecipe("giant_root_plank_slab_treated", <thebetweenlands:giant_root_plank_slab_treated>, <thebetweenlands:giant_root_planks_treated>, 2, 3, 3);
slabRecipe("hearthgrove_plank_slab_treated", <thebetweenlands:hearthgrove_plank_slab_treated>, <thebetweenlands:hearthgrove_planks_treated>, 2, 3, 3);
slabRecipe("nibbletwig_plank_slab_treated", <thebetweenlands:nibbletwig_plank_slab_treated>, <thebetweenlands:nibbletwig_planks_treated>, 2, 3, 3);
slabRecipe("rotten_plank_slab_treated", <thebetweenlands:rotten_plank_slab_treated>, <thebetweenlands:rotten_planks_treated>, 2, 3, 3);
slabRecipe("livingwood_slab_1", <botania:livingwood1slab>, <botania:livingwood:1>, 2, 3, 3);
slabRecipe("livingwood_slab_0", <botania:livingwood0slab>, <botania:livingwood:0>, 2, 3, 3);
slabRecipe("dreamwood0slab", <botania:dreamwood0slab>, <botania:dreamwood>, 2, 3, 3);
slabRecipe("dreamwood1slab", <botania:dreamwood1slab>, <botania:dreamwood:1>, 2, 3, 3);
slabRecipe("treatedwood_slab_2", <immersiveengineering:treated_wood_slab:2>, <immersiveengineering:treated_wood:2>, 2, 3, 3);
slabRecipe("treatedwood_slab_1", <immersiveengineering:treated_wood_slab:1>, <immersiveengineering:treated_wood:1>, 2, 3, 3);
slabRecipe("treatedwood_slab_0", <immersiveengineering:treated_wood_slab:0>, <immersiveengineering:treated_wood:0>, 2, 3, 3);
slabRecipe("shimmerwoodplanks0slab", <botania:shimmerwoodplanks0slab>, <botania:shimmerwoodplanks>, 2, 3, 3);

planksRecipe("weedwood_planks", <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood:*> | <thebetweenlands:log_weedwood:*>, 4, 5, 6);
planksRecipe("rubber_tree_planks", <thebetweenlands:rubber_tree_planks>, <thebetweenlands:log_rubber:*>, 4, 5, 6);
planksRecipe("giant_root_planks", <thebetweenlands:giant_root_planks>, <thebetweenlands:giant_root:*>, 4, 5, 6);
planksRecipe("hearthgrove_planks", <thebetweenlands:hearthgrove_planks>, <thebetweenlands:log_hearthgrove:*>, 4, 5, 6);
planksRecipe("nibbletwig_planks", <thebetweenlands:nibbletwig_planks>, <thebetweenlands:log_nibbletwig:*>, 4, 5, 6);
planksRecipe("rotten_planks", <thebetweenlands:rotten_planks>, <thebetweenlands:log_rotten_bark:*>, 4, 5, 6);
planksRecipe("greatwood_planks", <thaumcraft:plank_greatwood>, <thaumcraft:log_greatwood:*>, 4, 5, 6);
planksRecipe("silverwood_planks", <thaumcraft:plank_silverwood>, <thaumcraft:log_silverwood:*>, 4, 5, 6);
planksRecipe("wildwood_planks", <roots:wildwood_planks>, <roots:wildwood_log:*>, 4, 5, 6);
planksRecipe("livingwood_planks", <botania:livingwood:1>, <botania:livingwood>, 4, 5, 6);
planksRecipe("dreamwood_planks", <botania:dreamwood:1>, <botania:dreamwood>, 4, 5, 6);


brickSawmillRecipeBuilder("stone_rod", <pyrotech:material:27>, <pyrotech:material:16>, 4, 4, false);
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
brickSawmillRecipeBuilder("masonry_brick_slab", <pyrotech:masonry_brick_slab>, <pyrotech:masonry_brick_block>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_dull_lavender", <thebetweenlands:mud_brick_shingle_slab_stained_dull_lavender>, <thebetweenlands:mud_brick_shingle_stained:0>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_maroon", <thebetweenlands:mud_brick_shingle_slab_stained_maroon>, <thebetweenlands:mud_brick_shingle_stained:1>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_shadow_green", <thebetweenlands:mud_brick_shingle_slab_stained_shadow_green>, <thebetweenlands:mud_brick_shingle_stained:2>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_camelot_magenta", <thebetweenlands:mud_brick_shingle_slab_stained_camelot_magenta>, <thebetweenlands:mud_brick_shingle_stained:3>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_saffron", <thebetweenlands:mud_brick_shingle_slab_stained_saffron>, <thebetweenlands:mud_brick_shingle_stained:4>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_caribbean_green", <thebetweenlands:mud_brick_shingle_slab_stained_caribbean_green>, <thebetweenlands:mud_brick_shingle_stained:5>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_vivid_tangerine", <thebetweenlands:mud_brick_shingle_slab_stained_vivid_tangerine>, <thebetweenlands:mud_brick_shingle_stained:6>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_champagne", <thebetweenlands:mud_brick_shingle_slab_stained_champagne>, <thebetweenlands:mud_brick_shingle_stained:7>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_raisin_black", <thebetweenlands:mud_brick_shingle_slab_stained_raisin_black>, <thebetweenlands:mud_brick_shingle_stained:8>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_sushi_green", <thebetweenlands:mud_brick_shingle_slab_stained_sushi_green>, <thebetweenlands:mud_brick_shingle_stained:9>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_elm_cyan", <thebetweenlands:mud_brick_shingle_slab_stained_elm_cyan>, <thebetweenlands:mud_brick_shingle_stained:10>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_cadmium_green", <thebetweenlands:mud_brick_shingle_slab_stained_cadmium_green>, <thebetweenlands:mud_brick_shingle_stained:11>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_lavender_blue", <thebetweenlands:mud_brick_shingle_slab_stained_lavender_blue>, <thebetweenlands:mud_brick_shingle_stained:12>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_brown_rust", <thebetweenlands:mud_brick_shingle_slab_stained_brown_rust>, <thebetweenlands:mud_brick_shingle_stained:13>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_midnight_purple", <thebetweenlands:mud_brick_shingle_slab_stained_midnight_purple>, <thebetweenlands:mud_brick_shingle_stained:14>, 2, 2, false);
brickSawmillRecipeBuilder("mud_brick_shingle_slab_stained_pewter_grey", <thebetweenlands:mud_brick_shingle_slab_stained_pewter_grey>, <thebetweenlands:mud_brick_shingle_stained:15>, 2, 2, false);
brickSawmillRecipeBuilder("livingrock0slab", <botania:livingrock0slab>, <botania:livingrock>, 2, 2, false);
brickSawmillRecipeBuilder("livingrock1slab", <botania:livingrock1slab>, <botania:livingrock:1>, 2, 2, false);
brickSawmillRecipeBuilder("quartzslabdarkhalf", <botania:quartzslabdarkhalf>, <botania:quartztypedark>, 2, 2, false);
brickSawmillRecipeBuilder("quartzslabmanahalf", <botania:quartzslabmanahalf>, <botania:quartztypemana>, 2, 2, false);
brickSawmillRecipeBuilder("quartzslabblazehalf", <botania:quartzslabblazehalf>, <botania:quartztypeblaze>, 2, 2, false);
brickSawmillRecipeBuilder("quartzslablavenderhalf", <botania:quartzslablavenderhalf>, <botania:quartztypelavender>, 2, 2, false);
brickSawmillRecipeBuilder("quartzslabredhalf", <botania:quartzslabredhalf>, <botania:quartztypered>, 2, 2, false);
brickSawmillRecipeBuilder("quartzslabelfhalf", <botania:quartzslabelfhalf>, <botania:quartztypeelf>, 2, 2, false);
brickSawmillRecipeBuilder("quartzslabsunnyhalf", <botania:quartzslabsunnyhalf>, <botania:quartztypesunny>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea0slab", <botania:biomestonea0slab>, <botania:biomestonea>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea1slab", <botania:biomestonea1slab>, <botania:biomestonea:1>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea2slab", <botania:biomestonea2slab>, <botania:biomestonea:2>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea3slab", <botania:biomestonea3slab>, <botania:biomestonea:3>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea4slab", <botania:biomestonea4slab>, <botania:biomestonea:4>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea5slab", <botania:biomestonea5slab>, <botania:biomestonea:5>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea6slab", <botania:biomestonea6slab>, <botania:biomestonea:6>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea7slab", <botania:biomestonea7slab>, <botania:biomestonea:7>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea8slab", <botania:biomestonea8slab>, <botania:biomestonea:8>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea9slab", <botania:biomestonea9slab>, <botania:biomestonea:9>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea10slab", <botania:biomestonea10slab>, <botania:biomestonea:10>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea11slab", <botania:biomestonea11slab>, <botania:biomestonea:11>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea12slab", <botania:biomestonea12slab>, <botania:biomestonea:12>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea13slab", <botania:biomestonea13slab>, <botania:biomestonea:13>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea14slab", <botania:biomestonea14slab>, <botania:biomestonea:14>, 2, 2, false);
brickSawmillRecipeBuilder("biomestonea15slab", <botania:biomestonea15slab>, <botania:biomestonea:15>, 2, 2, false);
brickSawmillRecipeBuilder("biomestoneb0slab", <botania:biomestoneb0slab>, <botania:biomestoneb:0>, 2, 2, false);
brickSawmillRecipeBuilder("biomestoneb1slab", <botania:biomestoneb1slab>, <botania:biomestoneb:1>, 2, 2, false);
brickSawmillRecipeBuilder("biomestoneb2slab", <botania:biomestoneb2slab>, <botania:biomestoneb:2>, 2, 2, false);
brickSawmillRecipeBuilder("biomestoneb3slab", <botania:biomestoneb3slab>, <botania:biomestoneb:3>, 2, 2, false);
brickSawmillRecipeBuilder("biomestoneb4slab", <botania:biomestoneb4slab>, <botania:biomestoneb:4>, 2, 2, false);
brickSawmillRecipeBuilder("biomestoneb5slab", <botania:biomestoneb5slab>, <botania:biomestoneb:5>, 2, 2, false);
brickSawmillRecipeBuilder("biomestoneb6slab", <botania:biomestoneb6slab>, <botania:biomestoneb:6>, 2, 2, false);
brickSawmillRecipeBuilder("biomestoneb7slab", <botania:biomestoneb7slab>, <botania:biomestoneb:7>, 2, 2, false);
brickSawmillRecipeBuilder("pavement0slab", <botania:pavement0slab>, <botania:pavement:0>, 2, 2, false);
brickSawmillRecipeBuilder("pavement1slab", <botania:pavement1slab>, <botania:pavement:1>, 2, 2, false);
brickSawmillRecipeBuilder("pavement2slab", <botania:pavement2slab>, <botania:pavement:2>, 2, 2, false);
brickSawmillRecipeBuilder("pavement3slab", <botania:pavement3slab>, <botania:pavement:3>, 2, 2, false);
brickSawmillRecipeBuilder("pavement4slab", <botania:pavement4slab>, <botania:pavement:4>, 2, 2, false);
brickSawmillRecipeBuilder("pavement5slab", <botania:pavement5slab>, <botania:pavement:5>, 2, 2, false);
brickSawmillRecipeBuilder("shimmerrock0slab", <botania:shimmerrock0slab>, <botania:shimmerrock>, 2, 2, false);
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
brickSawmillRecipeBuilder("stone_decoration_slab_7", <immersiveengineering:stone_decoration_slab:7>, <immersiveengineering:stone_decoration:7>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_6", <immersiveengineering:stone_decoration_slab:6>, <immersiveengineering:stone_decoration:6>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_5", <immersiveengineering:stone_decoration_slab:5>, <immersiveengineering:stone_decoration:5>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_4", <immersiveengineering:stone_decoration_slab:4>, <immersiveengineering:stone_decoration:4>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_2", <immersiveengineering:stone_decoration_slab:2>, <immersiveengineering:stone_decoration:2>, 2, 2, false);
brickSawmillRecipeBuilder("stone_decoration_slab_1", <immersiveengineering:stone_decoration_slab:1>, <immersiveengineering:stone_decoration:1>, 2, 2, false);
brickSawmillRecipeBuilder("storage_slab_8", <immersiveengineering:storage_slab:8>, <immersiveengineering:storage:8>, 2, 2, false);

slabRecipe("boards", <pyrotech:material:20>, <ore:slabWood>, 1, 2, 3); // boards
stoneSawmillRecipeBuilder("treated_boards", <pyrotech:material:23>, <pyrotech:planks_tarred>, 1, 2, 3); // tarred boards
stoneSawmillRecipeBuilder("sticks", <thebetweenlands:items_misc:20>, <pyrotech:material:20>, 2, 3, 4); // boards

//recipes.remove(<immersiveengineering:material:0>);
//stoneSawmillRecipeBuilder("treated_sticks", <immersiveengineering:material:0>, <ore:slabTreatedWood>, 4, 5, 6);

Chopping.addRecipe("boards_to_sticks", <thebetweenlands:items_misc:20>, <pyrotech:material:20>);

//recipes.remove(<thebetweenlands:items_misc:20>); // sticks
//scripts.utils.addShaped("weedwood_sticks", <thebetweenlands:items_misc:20> * 2, [[<thebetweenlands:weedwood_planks>], [<thebetweenlands:weedwood_planks>]]);
//stoneSawmillRecipeBuilder("weedwood_sticks", <thebetweenlands:items_misc:20>, <thebetweenlands:weedwood_planks>, 2, 4, 6);





// BURN
//Burn.removeRecipes(<pyrotech:material:15>);
//Burn.removeRecipes(<pyrotech:material:1>);
/*

Burn.removeRecipes(<minecraft:coal:1>);
Burn.createBuilder("sulfur_from_hearthgrove", <thebetweenlands:items_misc:18>, "pyrotech:log_pile:*")
    .setBurnStages(2)
    .setTotalBurnTimeTicks(10 * 60 * 20)
    .setFluidProduced(<liquid:tar> * 1000)
    .setFailureChance(0.15)
    //.addFailureItem(<immersiveengineering:material:25>)
    //.addFailureItem(<immersiveengineering:material:25> * 2)
    //.addFailureItem(<immersiveengineering:material:25> * 4)
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(true)
    .register();

Burn.createBuilder("sulfur_from_tarred_hearthgrove", <thebetweenlands:items_misc:18>, "thebetweenlands:log_hearthgrove:5")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(7 * 60 * 20)
    .setFluidProduced(<liquid:tar> * 1000)
    .setFailureChance(0.1)
    //.addFailureItem(<immersiveengineering:material:25>)
    //.addFailureItem(<immersiveengineering:material:25> * 2)
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
*/



// KILNS
StoneKiln.removeAllRecipes();
BrickKiln.removeAllRecipes();
PitKiln.removeAllRecipes();

furnace.remove(<thebetweenlands:polished_limestone>);
PitKiln.addRecipe("polished_limestone", <thebetweenlands:polished_limestone>, <thebetweenlands:limestone>, 10 * 60 * 20, 0.33, [
    <thebetweenlands:items_misc:27>
], true);

furnace.remove(<pyrotech:material:5>);

furnace.remove(<thebetweenlands:items_misc:10>);
PitKiln.addRecipe("mud_bricks", <thebetweenlands:items_misc:10> * 4, <thebetweenlands:mud>, 10 * 60 * 20, 0.33, [
], true);

furnace.remove(<pyrotech:material:5>);
PitKiln.addRecipe("brick_refractory", <pyrotech:material:5> * 2, <pyrotech:material:4>, 10 * 60 * 20, 0.33, [
	<thebetweenlands:silt>
], true);

furnace.remove(<embers:brick_caminite>);
PitKiln.addRecipe("brick_caminite", <embers:brick_caminite> * 2, <embers:blend_caminite>, 10 * 60 * 20, 0.33, [
	<thebetweenlands:silt>
], true);

furnace.remove(<embers:plate_caminite>);
PitKiln.addRecipe("plate_caminite", <embers:plate_caminite>, <embers:plate_caminite_raw>, 4 * 60 * 20, 0.33, [
], true);

furnace.remove(<embers:stamp_bar>);
PitKiln.addRecipe("stamp_bar", <embers:stamp_bar>, <embers:stamp_bar_raw>, 4 * 60 * 20, 0.33, [
], true);

furnace.remove(<embers:stamp_flat>);
PitKiln.addRecipe("stamp_flat", <embers:stamp_flat>, <embers:stamp_flat_raw>, 4 * 60 * 20, 0.33, [
], true);

furnace.remove(<embers:stamp_plate>);
PitKiln.addRecipe("stamp_plate", <embers:stamp_plate>, <embers:stamp_plate_raw>, 4 * 60 * 20, 0.33, [
], true);

furnace.remove(<embers:stamp_gear>);
PitKiln.addRecipe("stamp_gear", <embers:stamp_gear>, <embers:stamp_gear_raw>, 4 * 60 * 20, 0.33, [
], true);

furnace.remove(<soot:stamp_nugget>);
PitKiln.addRecipe("stamp_nugget", <soot:stamp_nugget>, <soot:stamp_nugget_raw>, 4 * 60 * 20, 0.33, [
], true);

PitKiln.addRecipe("stamp_wire", <immersiveengineering:mold:4>, <contenttweaker:stamp_wires_raw>, 10 * 60 * 20, 0.33, [
], true);

PitKiln.addRecipe("stamp_rod", <immersiveengineering:mold:2>, <contenttweaker:stamp_rod_raw>, 10 * 60 * 20, 0.33, [
], true);

furnace.remove(<thebetweenlands:silt_glass>);
PitKiln.addRecipe("silt_glass", <thebetweenlands:silt_glass>, <thebetweenlands:silt>, 10 * 60 * 20, 0.33, [
], true);

furnace.remove(<thebetweenlands:filtered_silt_glass>);
PitKiln.addRecipe("filtered_silt_glass", <thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt>, 10 * 60 * 20, 0.33, [
], true);

furnace.remove(<thebetweenlands:polished_dentrothyst>);
PitKiln.addRecipe("polished_dentrothyst_green", <thebetweenlands:polished_dentrothyst>, <thebetweenlands:dentrothyst>, 10 * 60 * 20, 0.33, [
], true);

furnace.remove(<thebetweenlands:polished_dentrothyst:1>);
PitKiln.addRecipe("polished_dentrothyst_orange", <thebetweenlands:polished_dentrothyst:1>, <thebetweenlands:dentrothyst:1>, 10 * 60 * 20, 0.33, [
], true);

furnace.remove(<teastory:pot_porcelain>);
PitKiln.addRecipe("pot_porcelain", <teastory:pot_porcelain>, <teastory:pot_clay>, 60 * 20, 0.33, [
], true);

PitKiln.addRecipe("syrmorite_ingot", <thebetweenlands:items_misc:11>, <thebetweenlands:syrmorite_ore>, 10 * 60 * 20, 0.33, [
], false);




// BLOOMERY
function recreateBloomeryRecipe(oreName as string, inputOre as IItemStack, inputSlag as IItemStack, output as IItemStack, outputSlag as IItemStack, anvilTypes as string[]) {
	Bloomery.removeBloomeryRecipes(output);
	Bloomery.removeBloomeryRecipes(outputSlag);
	Bloomery.removeWitherForgeRecipes(output);
	Bloomery.removeWitherForgeRecipes(outputSlag);

	var minYield = 16;
	var maxYield = 20;

	// Remove anvil recipes too?

	if(oreName != "Iron") {
		furnace.addRecipe(inputSlag, inputOre, 0.1);
	} else {
		minYield += 5;
		maxYield += 5;
	}

	Bloomery.createBloomeryBuilder(
        "bloom_from_" ~ oreName.toLowerCase() ~ "_ore",   // recipe name
        output,
        inputOre,
	    true
    )
    .setAnvilTiers(anvilTypes)
    .setBurnTimeTicks(24 * 60 * 20)
    .setFailureChance(0.25)
    .setBloomYield(12, 15)
    .setSlagItem(outputSlag, 2)
    .addFailureItem(<pyrotech:slag>, 1)
    //.addFailureItem(outputSlag, 1)
    .register();

	Bloomery.createBloomeryBuilder(
        "bloom_from_" ~ oreName.toLowerCase() ~ "_slag",
        output,
        inputSlag,
	    true
    )
    .setAnvilTiers(anvilTypes)
    .setBurnTimeTicks(12 * 60 * 20)
    .setFailureChance(0.2)
    .setBloomYield(minYield, maxYield)
    //.setSlagItem(outputSlag, 1)
    //.addFailureItem(<thebetweenlands:items_misc:50>, 1)
    .addFailureItem(<pyrotech:slag>, 1)
    //.setLangKey(oreName ~ ";item.pyrotech.slag.unique")
    .register();

    val cluster = metals[oreName.toLowerCase()].cluster;

    if(!isNull(cluster)) {
		Bloomery.createBloomeryBuilder(
	        "bloom_from_" ~ oreName.toLowerCase() ~ "_cluster",   // recipe name
	        output,
	        metals[oreName.toLowerCase()].cluster,
	        true
	    )
	    .setAnvilTiers(anvilTypes)
	    .setBurnTimeTicks(24 * 60 * 20)
	    .setFailureChance(0.1)
	    .setBloomYield(24, 30)
	    .setSlagItem(outputSlag, 1)
    	//.setLangKey(oreName ~ ";item.pyrotech.slag.unique")
	    .register();
    }

    val plate = metals[oreName.toLowerCase()].plate;
    val ingot = metals[oreName.toLowerCase()].ingot;

    recipes.remove(plate);

    IroncladAnvil.addRecipe(oreName.toLowerCase() ~ "_plate", plate, ingot, 32, "hammer");
}

function recreateWitherBloomeryRecipe(oreName as string, inputOre as IItemStack, inputSlag as IItemStack, output as IItemStack, outputSlag as IItemStack, anvilTypes as string[]) {
	Bloomery.removeBloomeryRecipes(output);
	Bloomery.removeBloomeryRecipes(outputSlag);
	Bloomery.removeWitherForgeRecipes(output);
	Bloomery.removeWitherForgeRecipes(outputSlag);

	var minYield = 16;
	var maxYield = 20;

	// Remove anvil recipes too?

	if(oreName != "Iron") {
		furnace.addRecipe(inputSlag, inputOre, 0.1);
	} else {
		minYield += 5;
		maxYield += 5;
	}

	Bloomery.createWitherForgeBuilder(
        "bloom_from_" ~ oreName.toLowerCase() ~ "_ore",   // recipe name
        output,
        inputOre
    )
    .setAnvilTiers(anvilTypes)
    .setBurnTimeTicks(24 * 60 * 20)
    .setFailureChance(0.25)
    .setBloomYield(12, 15)
    .setSlagItem(outputSlag, 2)
    .addFailureItem(<pyrotech:slag>, 1)
    //.addFailureItem(outputSlag, 1)
    .register();

	Bloomery.createWitherForgeBuilder(
        "bloom_from_" ~ oreName.toLowerCase() ~ "_slag",
        output,
        inputSlag
    )
    .setAnvilTiers(anvilTypes)
    .setBurnTimeTicks(12 * 60 * 20)
    .setFailureChance(0.2)
    .setBloomYield(minYield, maxYield)
    //.setSlagItem(outputSlag, 1)
    //.addFailureItem(<thebetweenlands:items_misc:50>, 1)
    .addFailureItem(<pyrotech:slag>, 1)
    //.setLangKey(oreName ~ ";item.pyrotech.slag.unique")
    .register();

    val cluster = metals[oreName.toLowerCase()].cluster;

    if(!isNull(cluster)) {
		Bloomery.createWitherForgeBuilder(
	        "bloom_from_" ~ oreName.toLowerCase() ~ "_cluster",   // recipe name
	        output,
	        metals[oreName.toLowerCase()].cluster
	    )
	    .setAnvilTiers(anvilTypes)
	    .setBurnTimeTicks(24 * 60 * 20)
	    .setFailureChance(0.1)
	    .setBloomYield(24, 30)
	    .setSlagItem(outputSlag, 1)
    	//.setLangKey(oreName ~ ";item.pyrotech.slag.unique")
	    .register();
    }

    val plate = metals[oreName.toLowerCase()].plate;
    val ingot = metals[oreName.toLowerCase()].ingot;

    recipes.remove(plate);

    IroncladAnvil.addRecipe(oreName.toLowerCase() ~ "_plate", plate, ingot, 32, "hammer");
}

Bloomery.removeAllWitherForgeRecipes();

recreateWitherBloomeryRecipe("Iron", metals["iron"].ore, <pyrotech:generated_pile_slag_iron>, metals["iron"].nugget, <pyrotech:generated_slag_iron>, ["ironclad"]);
recreateBloomeryRecipe("Syrmorite", <thebetweenlands:syrmorite_ore>, <pyrotech:generated_pile_slag_syrmorite>, <thebetweenlands:items_misc:41>, <pyrotech:generated_slag_syrmorite>, ["granite", "ironclad"]);
recreateBloomeryRecipe("Octine", metals["octine"].ore, <pyrotech:generated_pile_slag_octine>, metals["octine"].nugget, <pyrotech:generated_slag_octine>, ["ironclad"]);
recreateBloomeryRecipe("Lead", metals["lead"].ore, <pyrotech:generated_pile_slag_lead>, metals["lead"].nugget, <pyrotech:generated_slag_lead>, ["ironclad"]);
recreateBloomeryRecipe("Silver", metals["silver"].ore, <pyrotech:generated_pile_slag_silver>, metals["silver"].nugget, <pyrotech:generated_slag_silver>, ["ironclad"]);
//recreateBloomeryRecipe("Uranium", metals["uranium"].ore, <pyrotech:generated_pile_slag_uranium>, metals["uranium"].nugget, <pyrotech:generated_slag_uranium>, ["ironclad"]);

furnace.remove(<pyrotech:generated_pile_slag_iron>);


val bloomsToRemove = [
	<minecraft:gold_nugget>,
	<embers:nugget_tin>,
	<embers:nugget_nickel>,
	<embers:nugget_copper>,
	<embers:nugget_aluminum>,
	<thaumcraft:nugget:1>,
] as IItemStack[];


for bloom in bloomsToRemove {
	Bloomery.removeBloomeryRecipes(bloom);
	Bloomery.removeWitherForgeRecipes(bloom);
}

Bloomery.setWitherForgeGameStages(Stages.and(["knowledge_of_technology"]));




/*
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
    .setAnvilTiers(["ironclad"])
    .setBurnTimeTicks(12 * 60 * 20)
    .setFailureChance(0.25)
    .setBloomYield(12, 15)
    .setSlagItem(<pyrotech:generated_slag_octine>, 2)
    .addFailureItem(<thebetweenlands:items_misc:50>, 1)
    .addFailureItem(<pyrotech:slag>, 2)
    .setLangKey("tile.oreOctine;item.pyrotech.slag.unique")
    .register();
*/





// CRUCIBLE
StoneCrucible.removeAllRecipes();
BrickCrucible.removeAllRecipes();



// NAMING
<pyrotech:bone_hammer:*>.displayName = "Slimy Bone Hammer";
<pyrotech:gold_hammer:*>.displayName = "Octine Hammer";
<pyrotech:diamond_hammer:*>.displayName = "Valonite Hammer";
<pyrotech:obsidian_hammer:*>.displayName = "Ancient Hammer";

<pyrotech:sawmill_blade_bone:*>.displayName = "Slimy Bone Sawmill Blade";
<pyrotech:sawmill_blade_gold:*>.displayName = "Octine Sawmill Blade";
<pyrotech:sawmill_blade_diamond:*>.displayName = "Valonite Sawmill Blade";
<pyrotech:sawmill_blade_obsidian:*>.displayName = "Ancient Sawmill Blade";

<pyrotech:cog_bone:*>.displayName = "Slimy Bone Cog";
<pyrotech:cog_gold:*>.displayName = "Octine Cog";
<pyrotech:cog_diamond:*>.displayName = "Valonite Cog";
<pyrotech:cog_obsidian:*>.displayName = "Ancient Cog";

<pyrotech:tongs_bone:*>.displayName = "Slimy Bone Tongs";
<pyrotech:tongs_gold:*>.displayName = "Octine Tongs";
<pyrotech:tongs_diamond:*>.displayName = "Valonite Tongs";
<pyrotech:tongs_obsidian:*>.displayName = "Ancient Tongs";

<pyrotech:anvil_granite:*>.displayName = "Limestone Anvil";
<pyrotech:anvil_iron_plated:*>.displayName = "Syrmorite Anvil";

<pyrotech:flint_and_tinder:*>.displayName = "Fire Starter";

<pyrotech:dense_redstone_ore_large>.displayName = "Dense Bluedust Ore";
<pyrotech:dense_redstone_ore_small>.displayName = "Dense Bluedust Ore";
<pyrotech:dense_redstone_ore_rocks>.displayName = "Dense Bluedust Ore";
<pyrotech:material:36>.displayName = "Dense Bluedust";

<pyrotech:wither_forge>.displayName = "Void Forge";