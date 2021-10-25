import mods.arcanearchives.GCT;

recipes.remove(<arcanearchives:radiant_resonator>);
recipes.addShaped("radiant_resonator", <arcanearchives:radiant_resonator>, [
	[<thebetweenlands:octine_ingot>, <minecraft:iron_bars>, <thebetweenlands:octine_ingot>], 
	[<ore:logWood>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "swamp_water", Amount: 1000}}).giveBack(<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}})), <ore:logWood>], 
	[<ore:logWood>, null, <ore:logWood>]
]);

recipes.remove(<arcanearchives:tome_arcana>);
recipes.addShapeless("tome_arcana", <arcanearchives:tome_arcana>.withTag({Book: "arcanearchives:xml/tome.xml"}), [<minecraft:book>, <ore:nuggetOctine>]);

recipes.remove(<arcanearchives:scepter_revelation>);
recipes.addShaped("scepter_revelation", <arcanearchives:scepter_revelation>, [
	[null, null, <arcanearchives:raw_quartz>], 
	[null, <ore:nuggetOctine>, null], 
	[<ore:stickWood>, null, null]
]);



GCT.replaceRecipe("manifest", <arcanearchives:manifest>, [<thebetweenlands:items_misc:32>, <minecraft:dye:0>, <arcanearchives:radiant_dust> * 2]);
GCT.replaceRecipe("letter_invitation", <arcanearchives:letter_invitation>, [<thebetweenlands:items_misc:32> * 3, <arcanearchives:radiant_dust>, <thebetweenlands:items_crushed:32>]);
GCT.replaceRecipe("letter_resignation", <arcanearchives:letter_resignation>, [<thebetweenlands:items_misc:32> * 3, <arcanearchives:radiant_dust>, <thebetweenlands:items_crushed:45>]);
GCT.replaceRecipe("writ_expulsion", <arcanearchives:writ_expulsion>, [<thebetweenlands:items_misc:32> * 3, <arcanearchives:radiant_dust>, <thebetweenlands:items_crushed:28>]);
GCT.replaceRecipe("radiant_amphora", <arcanearchives:radiant_amphora>, [<arcanearchives:radiant_dust> * 4, <thebetweenlands:sludge_ball> * 4, <thebetweenlands:octine_ingot> * 4]);
GCT.replaceRecipe("containment_field", <arcanearchives:containment_field>, [<arcanearchives:scintillating_inlay>, <thebetweenlands:octine_ingot> * 2, <arcanearchives:shaped_quartz> * 2]);
GCT.replaceRecipe("matrix_brace", <arcanearchives:matrix_brace>, [<arcanearchives:scintillating_inlay>, <thebetweenlands:octine_ingot> * 2]);
GCT.replaceRecipe("material_interface", <arcanearchives:material_interface>, [<arcanearchives:scintillating_inlay>, <thebetweenlands:octine_ingot>, <arcanearchives:shaped_quartz>]);
GCT.replaceRecipe("scintillating_inlay", <arcanearchives:scintillating_inlay>, [<arcanearchives:radiant_dust> * 6, <coloredredstone:colored_redstone_dust:12> * 12, <thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:42> * 6]);
GCT.replaceRecipe("devouring_charm", <arcanearchives:devouring_charm> * 4, [<thebetweenlands:octine_ingot>, <thebetweenlands:tar_solid> * 2, <minecraft:flint_and_steel>]);
GCT.replaceRecipe("radiant_key", <arcanearchives:radiant_key>, [<thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:42> * 6, <arcanearchives:shaped_quartz>]);
GCT.replaceRecipe("radiant_lantern", <arcanearchives:radiant_lantern>, [<arcanearchives:raw_quartz> * 2, <thebetweenlands:octine_ingot>]);
GCT.replaceRecipe("monitoring_crystal", <arcanearchives:monitoring_crystal>, [<arcanearchives:shaped_quartz>, <thebetweenlands:items_misc:42> * 2, <ore:stickWood> * 4]);
GCT.replaceRecipe("radiant_tank", <arcanearchives:radiant_tank>, [<arcanearchives:shaped_quartz> * 2, <arcanearchives:containment_field>, <thebetweenlands:octine_ingot>]);
GCT.replaceRecipe("brazier_of_hoarding", <arcanearchives:brazier_of_hoarding>, [<arcanearchives:radiant_dust> * 4, <thebetweenlands:items_misc:18> * 8, <thebetweenlands:octine_ingot> * 2, <ore:logWood> * 3]);


recipes.remove(<pyrotech:diamond_hammer>);
GCT.addRecipe("pyrotech_diamond_hammer", <pyrotech:diamond_hammer>, [<thebetweenlands:items_misc:19> * 2, <dawnoftimebuilder:silk>, <ore:stickWood> * 2]);

recipes.remove(<pyrotech:tongs_diamond>);
GCT.addRecipe("pyrotech_tongs_diamond", <pyrotech:tongs_diamond>, [<pyrotech:material:18> * 3, <pyrotech:material:27> * 2]);

recipes.remove(<pyrotech:sawmill_blade_diamond>);
GCT.addRecipe("pyrotech_sawmill_blade_diamond", <pyrotech:sawmill_blade_diamond>, [<thebetweenlands:octine_ingot>, <pyrotech:material:18> * 8]);

recipes.remove(<pyrotech:cog_diamond>);
GCT.addRecipe("pyrotech_cog_diamond", <pyrotech:cog_diamond>, [<pyrotech:material:18> * 8]);


