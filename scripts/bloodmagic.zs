import crafttweaker.item.IItemStack;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.AlchemyTable;

var tier1Orbs = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}).reuse() | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}).reuse() | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}).reuse() | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}).reuse() | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}).reuse();

var tier2Orbs = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}).reuse() | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}).reuse() | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}).reuse() | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}).reuse();

var tier3Orbs = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}).reuse() | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}).reuse() | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}).reuse();

var tier4Orbs = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}).reuse() | <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}).reuse();

recipes.remove(<bloodmagic:soul_snare>); // add to dungeon loot!
recipes.remove(<bloodmagic:teleposer>);
recipes.remove(<bloodmagic:teleposition_focus:2>);
recipes.remove(<bloodmagic:teleposition_focus:3>);

recipes.remove(<guideapi:bloodmagic-guide>);
scripts.utils.addShapeless("guide_book", <guideapi:bloodmagic-guide>, [<bloodmagic:monster_soul>, <minecraft:book>]);

recipes.remove(<bloodmagic:soul_forge>);
scripts.utils.addShaped("soul_forge", <bloodmagic:soul_forge>, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<roots:runestone>, <ore:ingotOctine>, <roots:runestone>], 
	[<roots:runestone>, <ore:blockSyrmorite>, <roots:runestone>]
]);

recipes.remove(<bloodmagic:altar>);
scripts.utils.addShaped("bloodmagic-altar", <bloodmagic:altar>, [
	[<roots:runestone>, null, <roots:runestone>], 
	[<roots:runestone>, <pyrotech:soaking_pot>, <roots:runestone>],
	[<ore:ingotOctine>, <bloodmagic:monster_soul>, <ore:ingotOctine>]
]);

recipes.remove(<bloodmagic:alchemy_table>);
scripts.utils.addShaped("bloodmagic-alchemy_table", <bloodmagic:alchemy_table>, [
	[<thebetweenlands:dentrothyst_vial>, <roots:runestone>, <thebetweenlands:dentrothyst_vial>], 
	[<roots:runestone>, <thebetweenlands:dentrothyst:1>, <roots:runestone>],
	[<ore:ingotOctine>, <bloodmagic:monster_soul>, <ore:ingotOctine>]
]);

recipes.remove(<bloodmagic:blood_rune:1>);
scripts.utils.addShaped("bloodmagic-blood_rune/blood_rune_speed", <bloodmagic:blood_rune:1>, [
	[<ore:stone>, <bloodmagic:slate>, <ore:stone>], 
	[<growthcraft_bees:honey_comb_filled>, <bloodmagic:blood_rune>, <growthcraft_bees:honey_comb_filled>], 
	[<ore:stone>, <bloodmagic:slate>, <ore:stone>]
]);

recipes.remove(<bloodmagic:blood_rune:3>);
scripts.utils.addShaped("bloodmagic-blood_rune/blood_rune_sacrifice", <bloodmagic:blood_rune:3>, [
	[<ore:stone>, <bloodmagic:slate:1>, <ore:stone>], 
	[<ore:ingotOctine>, <bloodmagic:blood_rune>, <ore:ingotOctine>], 
	[<ore:stone>, tier2Orbs, <ore:stone>]
]);

recipes.remove(<bloodmagic:blood_rune:4>);
scripts.utils.addShaped("bloodmagic-blood_rune/blood_rune_selfsacrifice", <bloodmagic:blood_rune:4>, [
	[<ore:stone>, <bloodmagic:slate:1>, <ore:stone>], 
	[<thebetweenlands:wisp>, <bloodmagic:blood_rune>, <thebetweenlands:wisp>], 
	[<ore:stone>, tier2Orbs, <ore:stone>]
]);

recipes.remove(<bloodmagic:blood_rune:5>);
scripts.utils.addShaped("bloodmagic-blood_rune/blood_rune_displacement", <bloodmagic:blood_rune:5>, [
	[<ore:stone>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "clean_water", Amount: 1000}}), <ore:stone>], 
	[<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "clean_water", Amount: 1000}}), <bloodmagic:blood_rune>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "clean_water", Amount: 1000}})], 
	[<ore:stone>, <bloodmagic:slate:2>, <ore:stone>]
]);

recipes.remove(<bloodmagic:blood_rune:6>);
scripts.utils.addShaped("bloodmagic-blood_rune/blood_rune_capacity", <bloodmagic:blood_rune:6>, [
	[<ore:stone>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn(), <ore:stone>], 
	[<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn(), <bloodmagic:blood_rune>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn()],
	[<ore:stone>, <bloodmagic:slate:2>, <ore:stone>]
]);

recipes.remove(<bloodmagic:blood_rune:7>);
scripts.utils.addShaped("bloodmagic-blood_rune/blood_rune_augcapacity", <bloodmagic:blood_rune:7>, [
	[<thebetweenlands:tar_solid>, <bloodmagic:slate:3>, <thebetweenlands:tar_solid>], 
	[<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn(), <bloodmagic:blood_rune:6>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn()], 
	[<thebetweenlands:tar_solid>, tier4Orbs, <thebetweenlands:tar_solid>]
]);

recipes.remove(<bloodmagic:blood_rune:9>);
scripts.utils.addShaped("bloodmagic-blood_rune/blood_rune_acceleration", <bloodmagic:blood_rune:9>, [
	[<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn(), <bloodmagic:slate:3>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn()], 
	[<ore:ingotOctine>, <bloodmagic:blood_rune:1>, <ore:ingotOctine>], 
	[<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn(), tier4Orbs, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn()]
]);

recipes.remove(<bloodmagic:blood_rune:10>);
scripts.utils.addShaped("crafttweaker-bloodmagic_blood_rune/blood_rune_charging", <bloodmagic:blood_rune:10>, [
	[<betweenlandsredstone:scabyst_dust>, <bloodmagic:slate:3>, <betweenlandsredstone:scabyst_dust>], 
	[<thaumcraft:amber_block>, <bloodmagic:blood_rune>, <thaumcraft:amber_block>], 
	[<betweenlandsredstone:scabyst_dust>, null, <betweenlandsredstone:scabyst_dust>]
]);

recipes.remove(<bloodmagic:path:6>);
scripts.utils.addShapeless("bloodmagic-path/path_obsidian", <bloodmagic:path:6> * 4, [
	<thebetweenlands:tar_solid>, <thebetweenlands:tar_solid>, <thebetweenlands:tar_solid>, <thebetweenlands:tar_solid>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}).reuse()
]);

recipes.remove(<bloodmagic:blood_tank>);
scripts.utils.addShaped("bloodmagic-blood_tank/blood_tank_0", <bloodmagic:blood_tank>, [
	[<bloodmagic:blood_rune>, <bloodmagic:decorative_brick>, <bloodmagic:blood_rune>], 
	[<thebetweenlands:filtered_silt_glass>, null, <thebetweenlands:filtered_silt_glass>], 
	[<bloodmagic:blood_rune>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]
]);

recipes.remove(<bloodmagic:mimic:3>);
scripts.utils.addShaped("bloodmagic-mimic_solidlight", <bloodmagic:mimic:3> * 2, [
	[<bloodmagic:decorative_brick>, <thaumcraft:amber_block>, <bloodmagic:decorative_brick>], 
	[<ore:torch>, <bloodmagic:blood_rune>, <ore:torch>], 
	[<bloodmagic:decorative_brick>, tier3Orbs, <bloodmagic:decorative_brick>]
]);

recipes.remove(<bloodmagic:demon_light>);
scripts.utils.addShaped("bloodmagic-demon_decor/demon_light_raw", <bloodmagic:demon_light> * 5, [
	[<bloodmagic:demon_extras:5>, <thaumcraft:amber_block>, <bloodmagic:demon_extras:5>], 
	[<thaumcraft:amber_block>, <thaumcraft:amber_block>, <thaumcraft:amber_block>], 
	[<bloodmagic:demon_extras:5>, <thaumcraft:amber_block>, <bloodmagic:demon_extras:5>]
]);

recipes.remove(<bloodmagic:demon_light:1>);
scripts.utils.addShaped("bloodmagic-demon_decor/demon_light_corrosive", <bloodmagic:demon_light:1> * 5, [
	[<bloodmagic:demon_extras:6>, <thaumcraft:amber_block>, <bloodmagic:demon_extras:6>], 
	[<thaumcraft:amber_block>, <thaumcraft:amber_block>, <thaumcraft:amber_block>], 
	[<bloodmagic:demon_extras:6>, <thaumcraft:amber_block>, <bloodmagic:demon_extras:6>]
]);

recipes.remove(<bloodmagic:demon_light:2>);
scripts.utils.addShaped("bloodmagic-demon_decor/demon_light_destructive", <bloodmagic:demon_light:2> * 5, [
	[<bloodmagic:demon_extras:7>, <thaumcraft:amber_block>, <bloodmagic:demon_extras:7>], 
	[<thaumcraft:amber_block>, <thaumcraft:amber_block>, <thaumcraft:amber_block>], 
	[<bloodmagic:demon_extras:7>, <thaumcraft:amber_block>, <bloodmagic:demon_extras:7>]
]);

recipes.remove(<bloodmagic:demon_light:3>);
scripts.utils.addShaped("bloodmagic-demon_decor/demon_light_vengeful", <bloodmagic:demon_light:3> * 5, [
	[<bloodmagic:demon_extras:8>, <thaumcraft:amber_block>, <bloodmagic:demon_extras:8>], 
	[<thaumcraft:amber_block>, <thaumcraft:amber_block>, <thaumcraft:amber_block>], 
	[<bloodmagic:demon_extras:8>, <thaumcraft:amber_block>, <bloodmagic:demon_extras:8>]
]);

recipes.remove(<bloodmagic:demon_light:4>);
scripts.utils.addShaped("bloodmagic-demon_decor/demon_light_steadfast", <bloodmagic:demon_light:4> * 5, [
	[<bloodmagic:demon_extras:9>, <thaumcraft:amber_block>, <bloodmagic:demon_extras:9>], 
	[<thaumcraft:amber_block>, <thaumcraft:amber_block>, <thaumcraft:amber_block>], 
	[<bloodmagic:demon_extras:9>, <thaumcraft:amber_block>, <bloodmagic:demon_extras:9>]
]);

recipes.remove(<bloodmagic:activation_crystal:1>);
scripts.utils.addShapeless("bloodmagic-activation_crystal", <bloodmagic:activation_crystal:1>, [
	<thaumcraft:void_seed>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}).reuse()
]);

recipes.remove(<bloodmagic:sacrificial_dagger>);
scripts.utils.addShaped("sacrificial_dagger", <bloodmagic:sacrificial_dagger>.withTag({sacrifice: 0 as byte}), [
	[<thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>],
	[null, <thebetweenlands:octine_ingot>, <thebetweenlands:filtered_silt_glass>],
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:filtered_silt_glass>]
]);

recipes.remove(<bloodmagic:sacrificial_dagger>);
scripts.utils.addShaped("bloodmagic-ritual_diviner_0", <bloodmagic:ritual_diviner>, [
	[<ore:gemValonite>, <bloodmagic:inscription_tool:2>, <ore:gemValonite>], 
	[<bloodmagic:inscription_tool:4>, <ore:stickWood>, <bloodmagic:inscription_tool:3>], 
	[<ore:gemValonite>, <bloodmagic:inscription_tool:1>, <ore:gemValonite>]
]);

recipes.remove(<bloodmagic:ritual_reader>);
scripts.utils.addShaped("bloodmagic-ritual_reader", <bloodmagic:ritual_reader>, [
	[<thebetweenlands:filtered_silt_glass>, null, <thebetweenlands:filtered_silt_glass>], 
	[<ore:ingotOctine>, <bloodmagic:slate:3>, <ore:ingotOctine>],
	[null, <bloodmagic:slate:3>, null]
]);

recipes.remove(<bloodmagic:lava_crystal>);
scripts.utils.addShaped("bloodmagic-lava_crystal", <bloodmagic:lava_crystal>, [
	[<thebetweenlands:filtered_silt_glass>, <embers:ember_cluster>, <thebetweenlands:filtered_silt_glass>], 
	[<embers:ember_cluster>, tier1Orbs, <embers:ember_cluster>], 
	[<thebetweenlands:tar_solid>, <ore:gemValonite>, <thebetweenlands:tar_solid>]
]);

recipes.remove(<bloodmagic:experience_tome>);
scripts.utils.addShaped("bloodmagic-experience_tome", <bloodmagic:experience_tome>, [
	[<ore:string>, <thebetweenlands:scabyst_block>, <ore:string>], 
	[<bloodmagic:slate:2>, <thebetweenlands:pearl_block>, <bloodmagic:slate:2>], 
	[<ore:ingotOctine>, tier3Orbs, <ore:ingotOctine>]
]);

recipes.remove(<bloodmagic:upgrade_trainer>);
scripts.utils.addShaped("bloodmagic-upgrade_trainer", <bloodmagic:upgrade_trainer>, [
	[<ore:nuggetOctine>, <ore:ingotOctine>, <ore:nuggetOctine>], 
	[<ore:ingotSyrmorite>, tier4Orbs, <ore:ingotSyrmorite>], 
	[<ore:nuggetOctine>, <ore:ingotOctine>, <ore:nuggetOctine>]
]);

recipes.remove(<bloodmagic:incense_altar>);
scripts.utils.addShaped("bloodmagic-incense_altar", <bloodmagic:incense_altar>, [
	[<ore:ingotOctine>, null, <ore:ingotOctine>], 
	[<ore:ingotOctine>, <thebetweenlands:items_misc:18>, <ore:ingotOctine>], 
	[<roots:runestone>, tier1Orbs, <roots:runestone>]
]);

recipes.remove(<bloodmagic:base_fluid_filter>);
scripts.utils.addShaped("bloodmagic-base_fluid_filter_0", <bloodmagic:base_fluid_filter>, [
	[<ore:stickWood>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn(), <ore:stickWood>], 
	[<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn(), <bloodmagic:component:10>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn()], 
	[<ore:stickWood>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn(), <ore:stickWood>]
]);

recipes.remove(<bloodmagic:ritual_controller:1>);
scripts.utils.addShaped("bloodmagic-ritual_controller_imperfect", <bloodmagic:ritual_controller:1>, [
	[<thebetweenlands:tar_solid>, <roots:runestone>, <thebetweenlands:tar_solid>], 
	[<roots:runestone>, tier1Orbs, <roots:runestone>], 
	[<thebetweenlands:tar_solid>, <roots:runestone>, <thebetweenlands:tar_solid>]
]);

recipes.removeByRecipeName("bloodmagic:ritual_controller_master");
scripts.utils.addShaped("bloodmagic-ritual_controller_master", <bloodmagic:ritual_controller>, [
	[<thebetweenlands:tar_solid>, <bloodmagic:ritual_stone>, <thebetweenlands:tar_solid>], 
	[<bloodmagic:ritual_stone>, tier3Orbs, <bloodmagic:ritual_stone>], 
	[<thebetweenlands:tar_solid>, <bloodmagic:ritual_stone>, <thebetweenlands:tar_solid>]
]);

recipes.removeByRecipeName("bloodmagic:ritual_stone_blank");
scripts.utils.addShaped("bloodmagic-ritual_stone_blank", <bloodmagic:ritual_stone> * 4, [
	[<thebetweenlands:tar_solid>, <bloodmagic:slate:1>, <thebetweenlands:tar_solid>], 
	[<bloodmagic:slate:1>, tier2Orbs, <bloodmagic:slate:1>],
	[<thebetweenlands:tar_solid>, <bloodmagic:slate:1>, <thebetweenlands:tar_solid>]
]);





# BLOOD ALTAR

BloodAltar.removeRecipe(<bloodmagic:teleposition_focus>);
BloodAltar.removeRecipe(<bloodmagic:teleposition_focus:1>);
BloodAltar.removeRecipe(<minecraft:magma_cream>);
BloodAltar.removeRecipe(<minecraft:lapis_block>);
BloodAltar.removeRecipe(<minecraft:ghast_tear>);
BloodAltar.removeRecipe(<minecraft:ender_pearl>);
BloodAltar.removeRecipe(<minecraft:coal_block>);
BloodAltar.removeRecipe(<minecraft:obsidian>);
BloodAltar.removeRecipe(<minecraft:bucket>);
BloodAltar.removeRecipe(<minecraft:iron_sword>);

BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <thebetweenlands:items_misc:19>, 0, 2000, 2, 1);

BloodAltar.removeRecipe(<betweenlandsredstone:scabyst_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <thebetweenlands:dentrothyst>, 1, 5000, 5, 5);

BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <thebetweenlands:octine_block>, 2, 25000, 20, 20);

BloodAltar.removeRecipe(<minecraft:nether_star>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <thaumcraft:ingot:1>, 4, 80000, 50, 100);

BloodAltar.addRecipe(<bloodmagic:inscription_tool:1>.withTag({uses: 10}), <roots:dewgonia>, 2, 1000, 5, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:2>.withTag({uses: 10}), <roots:infernal_bulb>, 2, 1000, 5, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:3>.withTag({uses: 10}), <roots:stalicripe>, 2, 1000, 5, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:4>.withTag({uses: 10}), <roots:cloud_berry>, 2, 1000, 5, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:5>.withTag({uses: 10}), <roots:strange_ooze>, 2, 2000, 20, 10);
BloodAltar.addRecipe(<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "lifeessence", Amount: 1000}}), <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}), 0, 1000, 5, 0);
BloodAltar.addRecipe(<thebetweenlands:bl_bucket:0>.withTag({Fluid: {FluidName: "lifeessence", Amount: 1000}}), <thebetweenlands:bl_bucket:0>.withTag({Fluid: {}}), 0, 1000, 5, 0);
BloodAltar.addRecipe(<bloodmagic:dagger_of_sacrifice>, <thebetweenlands:bone_sword>, 1, 2000, 20, 10);



# TARTARIC FORGE

TartaricForge.removeRecipe([<minecraft:obsidian>, <minecraft:ender_pearl>, <minecraft:diamond>, <bloodmagic:teleposer>]);
TartaricForge.removeRecipe([<minecraft:water_bucket>, <minecraft:water_bucket>, <minecraft:sugar>]);
TartaricForge.removeRecipe([<thebetweenlands:items_misc:3>, <thebetweenlands:items_misc:3>, <minecraft:ghast_tear>]);
TartaricForge.removeRecipe([<minecraft:gold_ingot>, <betweenlandsredstone:scabyst_block>, <minecraft:glowstone>, <bloodmagic:teleposer>]);
TartaricForge.removeRecipe([<minecraft:lava_bucket>, <betweenlandsredstone:scabyst_dust>, <thebetweenlands:betweenstone>, <minecraft:coal_block>]);
TartaricForge.removeRecipe([<minecraft:blaze_rod>, <minecraft:lava_bucket>, <minecraft:water_bucket>, <bloodmagic:teleposer>]);
TartaricForge.removeRecipe([<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:ender_pearl>, <minecraft:ender_eye>]);
TartaricForge.removeRecipe([<bloodmagic:cutting_fluid>, <minecraft:flint>, <minecraft:flint>]);
TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:gold_block>, <minecraft:obsidian>, <thebetweenlands:betweenstone>]);
TartaricForge.removeRecipe([<betweenlandsredstone:scabyst_dust>, <minecraft:snowball>, <minecraft:snowball>, <minecraft:ice>]);
TartaricForge.removeRecipe([<minecraft:string>, <minecraft:string>, <bloodmagic:soul_gem:1>, <minecraft:bow>]);

TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_sword>]);
TartaricForge.addRecipe(<bloodmagic:sentient_sword>, [<bloodmagic:soul_gem>, <roots:living_sword>], 0, 0);

TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_pickaxe>]);
TartaricForge.addRecipe(<bloodmagic:sentient_pickaxe>, [<bloodmagic:soul_gem>, <roots:living_pickaxe>], 0, 0);

TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_shovel>]);
TartaricForge.addRecipe(<bloodmagic:sentient_shovel>, [<bloodmagic:soul_gem>, <roots:living_shovel>], 0, 0);

TartaricForge.removeRecipe([<bloodmagic:soul_gem>, <minecraft:iron_axe>]);
TartaricForge.addRecipe(<bloodmagic:sentient_axe>, [<bloodmagic:soul_gem>, <roots:living_axe>], 0, 0);

TartaricForge.removeRecipe([<betweenlandsredstone:scabyst_dust>, <minecraft:gold_ingot>, <thebetweenlands:silt_glass>, <minecraft:dye:4>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem>, [<betweenlandsredstone:scabyst_dust>, <thebetweenlands:octine_ingot>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:dentrothyst_shard_green>], 1, 1);

TartaricForge.removeRecipe([<betweenlandsredstone:scabyst_dust>, <minecraft:dye:15>, <minecraft:gunpowder>, <minecraft:coal>]);
TartaricForge.addRecipe(<bloodmagic:arcane_ashes>, [<betweenlandsredstone:scabyst_dust>, <embers:dust_ash>, <roots:runic_dust>, <thebetweenlands:items_misc:18>], 0, 0);

TartaricForge.removeRecipe([<bloodmagic:item_demon_crystal:*>, <minecraft:gold_ingot>, <betweenlandsredstone:scabyst_dust>, <thebetweenlands:silt_glass>]);
TartaricForge.addRecipe(<bloodmagic:demon_will_gauge>, [<bloodmagic:item_demon_crystal:*>, <betweenlandsredstone:scabyst_dust>, <thebetweenlands:filtered_silt_glass>, <ore:ingotOctine>], 400, 50);

TartaricForge.removeRecipe([<minecraft:obsidian>, <bloodmagic:sigil_lava>, <bloodmagic:sigil_air>, <bloodmagic:sigil_water>]);
TartaricForge.addRecipe(<bloodmagic:component:6>, [<bloodmagic:sigil_lava>, <bloodmagic:sigil_air>, <bloodmagic:sigil_water>, <thebetweenlands:tar_solid>], 300, 30);

TartaricForge.removeRecipe([<minecraft:iron_block>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:string>]);
TartaricForge.addRecipe(<bloodmagic:component:12>, [<minecraft:string>, <ore:ingotOctine>, <ore:ingotOctine>, <ore:blockSyrmorite>], 600, 10);

TartaricForge.removeRecipe([<minecraft:glowstone>, <minecraft:torch>, <betweenlandsredstone:scabyst_dust>, <betweenlandsredstone:scabyst_dust>]);
TartaricForge.addRecipe(<bloodmagic:component:11>, [<betweenlandsredstone:scabyst_dust>, <betweenlandsredstone:scabyst_dust>, <thebetweenlands:sulfur_torch>, <thebetweenlands:wisp>], 300, 10);

TartaricForge.removeRecipe([<thebetweenlands:items_misc:47>, <thebetweenlands:silt_glass>, <thebetweenlands:smooth_betweenstone>, <bloodmagic:soul_forge>]);
TartaricForge.addRecipe(<bloodmagic:demon_crystallizer>, [<bloodmagic:soul_forge>, <thebetweenlands:items_misc:47>, <roots:runestone>, <thebetweenlands:filtered_silt_glass>], 500, 100);

TartaricForge.removeRecipe([<minecraft:lapis_block>, <betweenlandsredstone:scabyst_block>, <bloodmagic:soul_gem>, <minecraft:diamond>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem:1>, [<betweenlandsredstone:scabyst_block>, <bloodmagic:soul_gem>, <thebetweenlands:items_misc:19>, <thebetweenlands:dentrothyst:1>], 60, 20);

TartaricForge.removeRecipe([<thebetweenlands:smooth_betweenstone>, <thebetweenlands:silt_glass>, <bloodmagic:slate>]);
TartaricForge.addRecipe(<bloodmagic:component:10>, [<bloodmagic:slate>, <roots:runestone>, <thebetweenlands:filtered_silt_glass>], 400, 10);

TartaricForge.removeRecipe([<bloodmagic:item_routing_node>, <betweenlandsredstone:scabyst_dust>, <minecraft:gold_ingot>, <minecraft:glowstone_dust>]);
TartaricForge.addRecipe(<bloodmagic:input_routing_node>, [<bloodmagic:item_routing_node>, <betweenlandsredstone:scabyst_dust>, <ore:ingotOctine>, <thebetweenlands:wisp>], 400, 25);

TartaricForge.removeRecipe([<thebetweenlands:smooth_betweenstone>, <thebetweenlands:silt_glass>, <betweenlandsredstone:scabyst_dust>, <minecraft:glowstone_dust>]);
TartaricForge.addRecipe(<bloodmagic:item_routing_node>, [<betweenlandsredstone:scabyst_dust>, <roots:runestone>, <thebetweenlands:wisp>, <thebetweenlands:filtered_silt_glass>], 400, 5);

TartaricForge.removeRecipe([<bloodmagic:slate:2>, <minecraft:iron_block>, <minecraft:diamond>]);
TartaricForge.addRecipe(<bloodmagic:master_routing_node>, [<bloodmagic:slate:2>, <thebetweenlands:syrmorite_block>, <thebetweenlands:items_misc:19>], 400, 200);

TartaricForge.removeRecipe([<minecraft:glowstone_dust>, <betweenlandsredstone:scabyst_dust>, <minecraft:iron_ingot>, <bloodmagic:item_routing_node>]);
TartaricForge.addRecipe(<bloodmagic:output_routing_node>, [<bloodmagic:item_routing_node>, <betweenlandsredstone:scabyst_dust>, <ore:ingotSyrmorite>, <thebetweenlands:wisp>], 400, 25);

TartaricForge.removeRecipe([<bloodmagic:item_demon_crystal:*>, <thebetweenlands:items_misc:47>, <thebetweenlands:smooth_betweenstone>, <minecraft:iron_block>]);
TartaricForge.addRecipe(<bloodmagic:demon_pylon>, [<bloodmagic:item_demon_crystal:*>, <thebetweenlands:items_misc:47>, <roots:runestone>, <ore:blockOctine>], 400, 50);

TartaricForge.removeRecipe([<bloodmagic:soul_gem:3>, <minecraft:nether_star>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem:4>, [<bloodmagic:soul_gem:3>, <ore:blockIron>, <ore:blockValonite>, <thebetweenlands:ancient_remnant_block>], 4000, 500);

TartaricForge.removeRecipe([<bloodmagic:soul_gem:1>, <minecraft:diamond>, <minecraft:gold_block>, <bloodmagic:slate:2>]);
TartaricForge.addRecipe(<bloodmagic:soul_gem:2>, [<bloodmagic:soul_gem:1>, <ore:gemValonite>, <ore:blockOctine>, <bloodmagic:slate:2>], 240, 50);

TartaricForge.removeRecipe([<minecraft:slime>, <minecraft:slime>, <minecraft:leather>, <minecraft:string>]);
TartaricForge.addRecipe(<bloodmagic:component:31>, [<betweenlandsredstone:scabyst_slime_1>, <betweenlandsredstone:scabyst_slime_1>, <ore:leather>, <minecraft:string>], 200, 20);

TartaricForge.removeRecipe([<bloodmagic:sigil_divination>, <thebetweenlands:silt_glass>, <thebetweenlands:silt_glass>, <minecraft:glowstone_dust>]);
TartaricForge.addRecipe(<bloodmagic:component:7>, [<bloodmagic:sigil_divination>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:wisp>], 64, 0);

TartaricForge.removeRecipe([<minecraft:gunpowder>, <minecraft:iron_shovel>, <minecraft:iron_axe>, <minecraft:iron_pickaxe>]);
TartaricForge.addRecipe(<bloodmagic:component:3>, [<thebetweenlands:swift_pick>, <thebetweenlands:angry_pebble>], 128, 10);

TartaricForge.removeRecipe([<thebetweenlands:smooth_betweenstone>, <minecraft:cookie>, <minecraft:cookie>, <minecraft:sugar>]);
TartaricForge.addRecipe(<bloodmagic:component:13>, [<roots:runic_dust>, <thebetweenlands:marshmallow>, <thebetweenlands:marshmallow_pink>, <thebetweenlands:jam_donut>], 1400, 100);

TartaricForge.removeRecipe([<minecraft:gunpowder>, <minecraft:gold_nugget>, <betweenlandsredstone:scabyst_dust>, <minecraft:glowstone_dust>]);
TartaricForge.addRecipe(<bloodmagic:component:8>, [<betweenlandsredstone:scabyst_dust>, <thebetweenlands:wisp>, <thebetweenlands:items_misc:19>, <roots:runic_dust>], 400, 10);

TartaricForge.removeRecipe([<minecraft:sugar>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:sapling_nibbletwig>, <thebetweenlands:sapling_nibbletwig>]);
TartaricForge.addRecipe(<bloodmagic:component:5>, [<ore:treeSapling>, <ore:treeSapling>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:items_crushed:17>], 128, 20);

TartaricForge.removeRecipe([<minecraft:obsidian>, <thebetweenlands:smooth_betweenstone>, <minecraft:soul_sand>, <minecraft:soul_sand>]);
TartaricForge.addRecipe(<bloodmagic:component:15>, [<thebetweenlands:mist_staff>, <roots:runestone>, <thebetweenlands:wight_heart>, <thebetweenlands:wight_heart>], 600, 50);

TartaricForge.removeRecipe([<minecraft:obsidian>, <minecraft:iron_block>, <bloodmagic:soul_gem:1>, <minecraft:diamond_chestplate>]);
TartaricForge.addRecipe(<bloodmagic:sentient_armour_gem>, [<roots:wildwood_chestplate>, <embers:block_dawnstone>, <bloodmagic:soul_gem:1>, <embers:shifting_scales>], 240, 150);

TartaricForge.removeRecipe([<minecraft:gunpowder>, <minecraft:string>, <minecraft:string>, <minecraft:bucket>]);
TartaricForge.addRecipe(<bloodmagic:component:4>, [<minecraft:string>, <minecraft:string>, <thebetweenlands:syrmorite_block>, <thebetweenlands:angry_pebble>], 64, 10);

TartaricForge.removeRecipe([<minecraft:diamond>, <thebetweenlands:items_misc:47>, <thebetweenlands:smooth_betweenstone>, <minecraft:cauldron>]);
TartaricForge.addRecipe(<bloodmagic:demon_crucible>, [<thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:47>, <roots:runestone>, <growthcraft_cellar:brew_kettle>], 400, 100);



# ALCHEMY ARRAY

AlchemyArray.removeRecipe(<bloodmagic:component:18>, <bloodmagic:slate:3>);
AlchemyArray.removeRecipe(<bloodmagic:component>, <bloodmagic:slate>);
AlchemyArray.removeRecipe(<bloodmagic:component:2>, <bloodmagic:slate:1>);
AlchemyArray.removeRecipe(<bloodmagic:component:17>, <bloodmagic:slate:3>);
AlchemyArray.removeRecipe(<bloodmagic:component:1>, <bloodmagic:slate>);
AlchemyArray.removeRecipe(<bloodmagic:component:9>, <bloodmagic:slate:3>);
AlchemyArray.removeRecipe(<bloodmagic:component:16>, <bloodmagic:slate:3>);
AlchemyArray.removeRecipe(<bloodmagic:component:30>, <bloodmagic:slate:2>);
AlchemyArray.removeRecipe(<bloodmagic:component:14>, <bloodmagic:slate:3>);
AlchemyArray.removeRecipe(<bloodmagic:component:32>, <bloodmagic:slate:1>);

AlchemyArray.removeRecipe(<minecraft:redstone>, <bloodmagic:slate:0>);
AlchemyArray.addRecipe(<bloodmagic:sigil_divination>, <betweenlandsredstone:scabyst_dust>, <bloodmagic:slate:0>);



# ALCHEMY TABLE

val cuttingRecipes = {
	<thebetweenlands:syrmorite_ore> : <pyrotech:generated_pile_slag_syrmorite>,
	<betweenores:copper_ore> : <pyrotech:generated_pile_slag_copper>,
	<betweenores:lead_ore> : <pyrotech:generated_pile_slag_lead>,
	<betweenores:nickel_ore> : <pyrotech:generated_pile_slag_nickel>,
	<betweenores:silver_ore> : <pyrotech:generated_pile_slag_silver>,
	<betweenores:aluminum_ore> : <pyrotech:generated_pile_slag_aluminum>,
	<thebetweenlands:octine_ore> : <pyrotech:generated_pile_slag_octine>,
} as IItemStack[IItemStack];

for ore in cuttingRecipes {
	AlchemyTable.addRecipe(cuttingRecipes[ore], [<bloodmagic:cutting_fluid>, ore], 400, 500, 0);
}

AlchemyTable.addRecipe(<bloodmagic:cutting_fluid>, [
	<simpledifficulty:purified_water_bottle>, 
	<betweenlandsredstone:scabyst_dust>, 
	<thebetweenlands:items_misc:39>,
	<embers:dust_ember>,
	<thebetweenlands:items_misc:18>,
	<thebetweenlands:items_misc:27>
], 1000, 1000, 0);




<bloodmagic:cutting_fluid>.displayName = "Flux Fluid";