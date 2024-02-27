import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.AlchemyArray;

recipes.remove(<bloodmagic:soul_snare>); // add to dungeon loot!

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
	[<ore:ingotOctine>, null, <ore:ingotOctine>]
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




# ALCHEMY ARRAY

AlchemyArray.removeRecipe(<bloodmagic:component:18>, <bloodmagic:slate:3>);
AlchemyArray.removeRecipe(<bloodmagic:component>, <bloodmagic:slate>);
AlchemyArray.removeRecipe(<bloodmagic:component:2>, <bloodmagic:slate:1>);
AlchemyArray.removeRecipe(<bloodmagic:component:17>, <bloodmagic:slate:3>);
AlchemyArray.removeRecipe(<bloodmagic:component:1>, <bloodmagic:slate>);



