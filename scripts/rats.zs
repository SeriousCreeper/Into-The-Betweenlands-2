import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val itemsToRemove as IItemStack[] = [
    <rats:cheese>,
    <rats:assorted_vegetables>,
    <rats:rat_burger>,
    <rats:feathery_wing>,
    <rats:dragon_wing>,
    <rats:potato_pancake>,
    <rats:little_black_worm>,
    <rats:little_black_squash_balls>,
    <rats:confit_byaldi>,
    <rats:string_cheese>,
    <rats:centipede>,
    <rats:potato_kinishes>,
    <rats:plague_doctorate>,
    <rats:ratglove_flower>,
    <rats:ratglove_petals>,
    <rats:feral_rat_claw>,
    <rats:feral_bagh_nakhs>,
    <rats:gem_of_ratlantis>,
    <rats:arcane_technology>,
    <rats:ancient_sawblade>,
    <rats:ratlantean_flame>,
    <rats:vial_of_sentience>,
    <rats:psionic_rat_brain>,
    <rats:pirat_cutlass>,
    <rats:cheese_cannonball>,
    <rats:rat_diamond>,
    <rats:idol_of_ratlantis>,
    <rats:block_of_cheese>,
    <rats:cauldron_milk>,
    <rats:cauldron_cheese>,
    <rats:rat_crafting_table>,
    <rats:auto_curdler>,
    <rats:marbled_cheese_raw>,
    <rats:marbled_cheese_rat_head>,
    <rats:marbled_cheese_golem_core>,
    <rats:compressed_rat>,
    <rats:brain_block>,
    <rats:upgrade_combiner>,
    <rats:upgrade_separator>,
    <rats:ratlantis_portal>,
    <rats:rat_upgrade_basic>,
];

for item in itemsToRemove {
    JEI.removeAndHide(item);
	item.removeAspects(allAspects);
    mods.rats.recipes.removeChefRatRecipe(item);
    mods.rats.recipes.removeGemcutterRatRecipe(item);
}

val recipesToRemove as IItemStack[] = [
    <rats:farmer_hat>,
    <rats:fisherman_hat>,
    <rats:rat_fez>,
    <rats:top_hat>,
];

for item in itemsToRemove {
    recipes.remove(item);
}


// --- FURNACE RECIPES ---
furnace.remove(<rats:cooked_rat>);


// --- STANDARD RECIPES ---
scripts.utils.replaceShaped("chef_toque", <rats:chef_toque>, [
    [<thebetweenlands:samite:7>, <thebetweenlands:samite:7>], 
    [<thebetweenlands:samite:7>, <thebetweenlands:samite:7>], 
    [<ore:string>, <ore:string>]
]);

scripts.utils.replaceShaped("rat_flute", <rats:rat_flute>, [
    [null, <ore:nuggetSyrmorite>, <thebetweenlands:swamp_reed_item>], 
    [<ore:nuggetSyrmorite>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:mud_brick_shingles>], 
    [<thebetweenlands:swamp_reed_item>, <thebetweenlands:mud_brick_shingles>, null]
]);

scripts.utils.replaceShaped("herb_bundle", <rats:herb_bundle> * 2, [
    [<ore:flowers>, <ore:flowers>, <ore:flowers>], 
    [<ore:flowers>, <thebetweenlands:weeping_blue_petal>, <ore:flowers>], 
    [<ore:flowers>, <ore:flowers>, <ore:flowers>]
]);

scripts.utils.replaceShaped("rat_sack", <rats:rat_sack>, [
    [<ore:leather>, null, <ore:leather>], 
    [<ore:leather>, <ore:foooodCheese>, <ore:leather>], 
    [<ore:leather>, <ore:leather>, <ore:leather>]
]);

scripts.utils.replaceShaped("rat_capture_net", <rats:rat_capture_net>, [
    [<ore:nuggetSyrmorite>, <minecraft:web>, <ore:nuggetSyrmorite>], 
    [<minecraft:web>, <rats:rat_sack>, <minecraft:web>], 
    [<ore:nuggetSyrmorite>, <minecraft:web>, <ore:nuggetSyrmorite>]
]);

scripts.utils.replaceShapeless("purifying_liquid", <rats:purifying_liquid>, [
    <thebetweenlands:spirit_fruit>, <ore:gemValonite>, <minecraft:glass_bottle>, <rats:plague_essence>
]);

scripts.utils.replaceShapeless("plague_stew", <rats:plague_stew>, [
    <rats:herb_bundle>, <rats:plague_leech>, <rats:treacle>, <thebetweenlands:items_misc:22>
]);

recipes.removeByRegex("rats:rat_igloo_white_plastic");
scripts.utils.addShaped("rat_igloo_brown_plastic", <rats:rat_igloo_brown>, [
    [<thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>], 
    [<thebetweenlands:silt_glass_pane>, null, <thebetweenlands:silt_glass_pane>]
]);

scripts.utils.replaceShaped("rat_water_bottle", <rats:rat_water_bottle>, [
    [<ore:plasticOrBottle>], 
    [<thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "clean_water", Amount: 1000}}) | <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "clean_water", Amount: 1000}})], 
    [<ore:nuggetSyrmorite>]
]);

scripts.utils.replaceShaped("rat_seed_bowl", <rats:rat_seed_bowl>, [
    [<thebetweenlands:middle_fruit_bush_seeds>], 
    [<thebetweenlands:items_misc:22>]
]);

recipes.removeByRegex("rats:rat_hammock_wool_*");
scripts.utils.addShaped("rat_hammock_wool_white", <rats:rat_hammock_white>, [
    [<ore:string>, <ore:foodCheese>, <ore:string>], 
    [<thebetweenlands:samite:7>, <thebetweenlands:samite:7>, <thebetweenlands:samite:7>]
]);

scripts.utils.replaceShaped("rat_breeding_lantern", <rats:rat_breeding_lantern>, [
    [null, <ore:string>, null], 
    [<ore:dyeRed>, <betweenlandsredstone:scabyst_lamp>, <ore:dyeRed>], 
    [null, <ore:dyeRed>, null]
]);

recipes.removeByRegex("rats:rat_tube_white_plastic");
scripts.utils.addShaped("rat_tube_brown_plastic", <rats:rat_tube_brown> * 16, [
    [<thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>], 
    [null, null, null], 
    [<thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>, <thebetweenlands:silt_glass_pane>]
]);




// --- CHEF RAT RECIPES ---


// --- GEMCUTTER RAT RECIPES ---


// --- ARCHEOLOGIST RAT RECIPES ---
mods.rats.recipes.removeArcheologistRatRecipe(<rats:pirat_hat>);
mods.rats.recipes.removeArcheologistRatRecipe(<rats:rat_toga>);