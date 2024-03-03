import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.AlchemyArray;

recipes.remove(<bloodmagic:soul_snare>); // add to dungeon loot!
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



# BLOOD ALTAR

BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <thebetweenlands:items_misc:19>, 0, 2000, 2, 1);

BloodAltar.removeRecipe(<betweenlandsredstone:scabyst_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <thebetweenlands:dentrothyst>, 1, 5000, 5, 5);

BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <thebetweenlands:octine_block>, 2, 25000, 20, 20);

BloodAltar.removeRecipe(<minecraft:nether_star>);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <thaumcraft:ingot:1>, 4, 80000, 50, 100);



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

TartaricForge.removeRecipe([<minecraft:string>, <minecraft:string>, <bloodmagic:soul_gem:1>, <minecraft:bow>]);
TartaricForge.addRecipe(<bloodmagic:sentient_bow>, [<minecraft:string>, <minecraft:string>, <bloodmagic:soul_gem:1>, <roots:wildwood_bow>], 70, 0);

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
TartaricForge.addRecipe(<bloodmagic:component:4>, [<minecraft:string>, <minecraft:string>, <thebetweenlands:bl_bucket:1>, <thebetweenlands:angry_pebble>], 64, 10);

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