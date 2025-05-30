import mods.arcanearchives.GCT;

recipes.remove(<arcanearchives:radiant_resonator>);
recipes.addShaped("radiant_resonator", <arcanearchives:radiant_resonator>, [
	[<ore:ingotDawnstone>, <minecraft:iron_bars>, <ore:ingotDawnstone>], 
	[<roots:wildwood_log>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "clean_water", Amount: 1000}}), <roots:wildwood_log>], 
	[<roots:wildwood_log>, null, <roots:wildwood_log>]
]);

recipes.remove(<arcanearchives:tome_arcana>);
scripts.utils.addShapeless("tome_arcana", <arcanearchives:tome_arcana>.withTag({Book: "arcanearchives:xml/tome.xml"}), [<minecraft:book>, <ore:nuggetOctine>]);

recipes.remove(<arcanearchives:scepter_revelation>);
scripts.utils.addShaped("scepter_revelation", <arcanearchives:scepter_revelation>, [
	[null, null, <arcanearchives:raw_quartz>], 
	[null, <ore:nuggetOctine>, null], 
	[<ore:stickWood>, null, null]
]);


recipes.remove(<arcanearchives:radiant_chest>);
scripts.utils.addShaped("radiant_chest", <arcanearchives:radiant_chest>, [
	[<ore:plankWood>, <ore:plateOctine>, <ore:plankWood>], 
	[<ore:plankWood>, <arcanearchives:raw_quartz>, <ore:plankWood>], 	
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);


recipes.addShapeless("letter_invitation", <arcanearchives:letter_invitation>, [<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>, <thebetweenlands:items_crushed:45>, <thebetweenlands:items_crushed:45>, <thebetweenlands:items_crushed:45>],
	function(out, ins, cInfo) {
		return out.withTag({creator: cInfo.player.uuid, creator_name: cInfo.player.name});
	},
	function(out,cInfo,player){
	}
);

recipes.addShapeless("letter_resignation", <arcanearchives:letter_resignation>, [<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>, <arcanearchives:radiant_dust>, <thebetweenlands:items_crushed:32>, <thebetweenlands:items_crushed:32>, <thebetweenlands:items_crushed:32>],
	function(out, ins, cInfo) {
		return out.withTag({creator: cInfo.player.uuid, creator_name: cInfo.player.name});
	},
	function(out,cInfo,player){
	}
);


GCT.replaceRecipe("manifest", <arcanearchives:manifest>, [<thebetweenlands:items_misc:32>, <minecraft:dye:0>, <arcanearchives:radiant_dust> * 2]);
//GCT.replaceRecipe("letter_invitation", <arcanearchives:letter_invitation>, [<thebetweenlands:items_misc:32> * 3, <arcanearchives:radiant_dust>, <thebetweenlands:items_crushed:45>]);
//GCT.replaceRecipe("letter_resignation", <arcanearchives:letter_resignation>, [<thebetweenlands:items_misc:32> * 3, <arcanearchives:radiant_dust>, <thebetweenlands:items_crushed:28>]);
//GCT.replaceRecipe("writ_expulsion", <arcanearchives:writ_expulsion>, [<thebetweenlands:items_misc:32> * 3, <arcanearchives:radiant_dust>, <thebetweenlands:items_crushed:45>]);
GCT.replaceRecipe("radiant_amphora", <arcanearchives:radiant_amphora>, [<arcanearchives:radiant_dust> * 4, <thebetweenlands:sludge_ball> * 4, <thebetweenlands:octine_ingot> * 4]);
GCT.replaceRecipe("containment_field", <arcanearchives:containment_field>, [<arcanearchives:scintillating_inlay>, <thebetweenlands:octine_ingot> * 2, <arcanearchives:shaped_quartz> * 2]);
GCT.replaceRecipe("matrix_brace", <arcanearchives:matrix_brace>, [<arcanearchives:scintillating_inlay>, <thebetweenlands:octine_ingot> * 2]);
GCT.replaceRecipe("material_interface", <arcanearchives:material_interface>, [<arcanearchives:scintillating_inlay>, <thebetweenlands:octine_ingot>, <arcanearchives:shaped_quartz>]);
GCT.replaceRecipe("scintillating_inlay", <arcanearchives:scintillating_inlay>, [<arcanearchives:radiant_dust> * 6, <ore:dustRedstone> * 12, <thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:42> * 6]);
GCT.replaceRecipe("devouring_charm", <arcanearchives:devouring_charm> * 4, [<thebetweenlands:octine_ingot>, <thebetweenlands:tar_solid> * 2, <thaumcraft:nugget:7>]);
GCT.replaceRecipe("radiant_key", <arcanearchives:radiant_key>, [<thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:42> * 6, <arcanearchives:shaped_quartz>]);
GCT.replaceRecipe("radiant_lantern", <arcanearchives:radiant_lantern>, [<arcanearchives:raw_quartz> * 2, <thebetweenlands:octine_ingot>]);
GCT.replaceRecipe("monitoring_crystal", <arcanearchives:monitoring_crystal>, [<thaumcraft:seal:14>, <arcanearchives:shaped_quartz>, <thebetweenlands:items_misc:42> * 2, <ore:stickWood> * 4]);
GCT.replaceRecipe("radiant_tank", <arcanearchives:radiant_tank>, [<arcanearchives:shaped_quartz> * 4, <arcanearchives:containment_field>, <thebetweenlands:octine_ingot> * 4, <thebetweenlands:syrmorite_barrel>]);
GCT.replaceRecipe("brazier_of_hoarding", <arcanearchives:brazier_of_hoarding>, [<arcanearchives:radiant_dust> * 4, <thebetweenlands:items_misc:18> * 8, <thebetweenlands:octine_ingot> * 2, <ore:logWood> * 3]);
GCT.replaceRecipe("radiant_trove", <arcanearchives:radiant_trove>, [<arcanearchives:shaped_quartz> * 2, <arcanearchives:material_interface>, <arcanearchives:radiant_chest>]);


recipes.remove(<pyrotech:diamond_hammer>);
GCT.addRecipe("pyrotech_diamond_hammer", <pyrotech:diamond_hammer>, [<thebetweenlands:items_misc:19> * 2, <contenttweaker:silk>, <ore:stickWood> * 2]);

recipes.remove(<pyrotech:tongs_diamond>);
GCT.addRecipe("pyrotech_tongs_diamond", <pyrotech:tongs_diamond>, [<thebetweenlands:items_misc:43> * 3, <pyrotech:material:27> * 2]);

recipes.remove(<pyrotech:sawmill_blade_diamond>);
GCT.addRecipe("pyrotech_sawmill_blade_diamond", <pyrotech:sawmill_blade_diamond>, [<thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:43> * 8]);

recipes.remove(<pyrotech:cog_diamond>);
GCT.addRecipe("pyrotech_cog_diamond", <pyrotech:cog_diamond>, [<thebetweenlands:items_misc:43> * 8]);

recipes.remove(<roots:diamond_knife>);
GCT.addRecipe("diamond_knife", <roots:diamond_knife>, [<ore:gemValonite> * 2, <ore:stickWood>]);

recipes.remove(<mystgears:gear_valonite>);
GCT.addRecipe("gear_valonite", <mystgears:gear_valonite>, [<ore:gemValonite> * 4, <ore:nuggetValonite>]);

recipes.remove(<thebetweenlands:valonite_helmet>);
GCT.addRecipe("valonite_helmet", <thebetweenlands:valonite_helmet>, [<ore:gemValonite> * 5, <roots:wildwood_helmet>]);

recipes.remove(<thebetweenlands:valonite_chestplate>);
GCT.addRecipe("valonite_chestplate", <thebetweenlands:valonite_chestplate>, [<ore:gemValonite> * 8, <roots:wildwood_chestplate>]);

recipes.remove(<thebetweenlands:valonite_leggings>);
GCT.addRecipe("valonite_leggings", <thebetweenlands:valonite_leggings>, [<ore:gemValonite> * 7, <roots:wildwood_leggings>]);

recipes.remove(<thebetweenlands:valonite_boots>);
GCT.addRecipe("valonite_boots", <thebetweenlands:valonite_boots>, [<ore:gemValonite> * 4, <roots:wildwood_boots>]);

recipes.remove(<thebetweenlands:valonite_sword>);
GCT.addRecipe("valonite_sword", <thebetweenlands:valonite_sword>, [<ore:gemValonite> * 2, <ore:stickWood>]);

recipes.remove(<thebetweenlands:valonite_shovel>);
GCT.addRecipe("valonite_shovel", <thebetweenlands:valonite_shovel>, [<ore:gemValonite> * 1, <ore:stickWood> * 2]);

recipes.remove(<thebetweenlands:valonite_axe>);
GCT.addRecipe("valonite_axe", <thebetweenlands:valonite_axe>, [<ore:gemValonite> * 3, <ore:stickWood> * 2]);

recipes.remove(<thebetweenlands:valonite_pickaxe>);
GCT.addRecipe("valonite_pickaxe", <thebetweenlands:valonite_pickaxe>, [<ore:gemValonite> * 3, <ore:stickWood> * 2]);

recipes.remove(<thebetweenlands:valonite_shield>);
GCT.addRecipe("valonite_shield", <thebetweenlands:valonite_shield>, [<ore:gemValonite> * 6, <thebetweenlands:pitstone>]);

recipes.remove(<thebetweenlands:valonite_greataxe>);
GCT.addRecipe("valonite_greataxe", <thebetweenlands:valonite_greataxe>, [<ore:gemValonite> * 2, <ore:stickWood> * 2, <thebetweenlands:valonite_axe>]);

recipes.remove(<quark:pickarang>);
GCT.addRecipe("pickarang", <quark:pickarang>, [<thebetweenlands:items_misc:19> * 2, <thebetweenlands:items_misc:4> * 2, <thebetweenlands:life_crystal>]);

recipes.remove(<thaumcraft:baubles:6>);
GCT.addRecipe("baublegirdlefancy", <thaumcraft:baubles:6>, [<ore:leather> * 3, <thebetweenlands:items_misc:19>, <thebetweenlands:octine_ingot>]);

recipes.remove(<thaumcraft:baubles:4>);
GCT.addRecipe("baublegirdlefancy", <thaumcraft:baubles:4>, [<ore:string> * 3, <thebetweenlands:items_misc:19>, <thebetweenlands:octine_ingot>]);

recipes.remove(<thaumcraft:baubles:5>);
GCT.addRecipe("baubleringfancy", <thaumcraft:baubles:5>, [<thebetweenlands:items_misc:42> * 7, <thebetweenlands:items_misc:19>]);

recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.remove(<storagedrawers:upgrade_storage:4>);

/*
GCT.addRecipe("storagedrawers-upgrade_storage_diamond", <storagedrawers:upgrade_storage:3>, [<ore:stickWood> * 6, <thebetweenlands:items_misc:19> * 2, <storagedrawers:upgrade_template>]);

GCT.addRecipe("storagedrawers-upgrade_storage_emerald", <storagedrawers:upgrade_storage:4>, [<ore:stickWood> * 6, <thebetweenlands:items_misc:47> * 2, <storagedrawers:upgrade_template>]);
*/

scripts.utils.addInfoTooltip(<arcanearchives:radiant_resonator>, "Only 1 per player");
