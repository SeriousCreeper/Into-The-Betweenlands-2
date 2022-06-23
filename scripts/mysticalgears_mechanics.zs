import mods.jei.JEI;


JEI.removeAndHide(<mystgears:gear_diamond>);
JEI.removeAndHide(<mystgears:gear_stone>);
//JEI.removeAndHide(<mystgears:ember_gatling_gun>);
//JEI.removeAndHide(<mystgears:witchburn_gatling_gun>);
//JEI.removeAndHide(<mystgears:mechanical_turret>);
JEI.removeAndHide(<mystgears:drill>);
JEI.removeAndHide(<mystgears:drill_diamond>);
JEI.removeAndHide(<mystgears:redstone_dynamo>);
//JEI.removeAndHide(<mysticalmechanics:gear_iron>);
JEI.removeAndHide(<mysticalmechanics:gear_gold>);

recipes.remove(<mystgears:gear_octine>);
recipes.remove(<mystgears:gear_valonite>);



recipes.remove(<mystgears:mechanical_dial>);
scripts.utils.addShaped("recipe_mechanical_dial", <mystgears:mechanical_dial>, [
	[<ore:dustRedstone>], 
	[<thebetweenlands:items_misc:32>], 
	[<ore:plateGold>]
]);


recipes.remove(<mysticalmechanics:gear_fan>);
scripts.utils.addShaped("mysticalmechanics-fan_iron", <mysticalmechanics:gear_fan>, [
	[<embers:plate_iron>, null, <embers:plate_iron>], 
	[null, <thebetweenlands:items_misc:41>, null], 
	[<embers:plate_iron>, null, <embers:plate_iron>]
]);

recipes.remove(<mystgears:gear_black_hole>);
scripts.utils.addShaped("mystgears-recipe_gear_black_hole", <mystgears:gear_black_hole>, [
	[null, <thebetweenlands:wisp>, null], 
	[<thebetweenlands:wisp>, <embers:gear_dawnstone>, <thebetweenlands:wisp>], 
	[null, <thebetweenlands:wisp>, null]
]);

recipes.remove(<mystgears:gear_wood>);
scripts.utils.addShaped("mystgears-recipe_gear_wood", <mystgears:gear_wood>, [
	[null, <thebetweenlands:weedwood_planks>, null], 
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:items_misc:20>, <thebetweenlands:weedwood_planks>], 
	[null, <thebetweenlands:weedwood_planks>, null]
]);

recipes.remove(<mystgears:gear_googly_eye>);
scripts.utils.addShaped("mystgears-recipe_gear_googly_eye", <mystgears:gear_googly_eye>, [
	[null, <thebetweenlands:shelf_fungus>, null], 
	[<thebetweenlands:shelf_fungus>, <ore:dyeBlack>, <thebetweenlands:shelf_fungus>], 
	[null, <thebetweenlands:shelf_fungus>, null]
]);

recipes.remove(<mystgears:gear_flywheel_heavy>);
scripts.utils.addShaped("mystgears-recipe_gear_flywheel_heavy", <mystgears:gear_flywheel_heavy>, [
	[<thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>], 
	[<thebetweenlands:octine_ingot>, <mystgears:gear_valonite>, <thebetweenlands:octine_ingot>], 
	[<thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>]
]);

recipes.remove(<mystgears:windup_box>);
scripts.utils.addShaped("mystgears_recipe_windup_box_modified", <mystgears:windup_box>, [
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[<mysticalmechanics:axle_iron>, <mystgears:gear_octine>, <mysticalmechanics:mergebox_frame>], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>]
]);

recipes.remove(<mysticalmechanics:gear_gold_on>);
scripts.utils.addShaped("mysticalmechanics_gear_gold_on_modified", <mysticalmechanics:gear_gold_on>, [
	[<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>], 
	[<minecraft:redstone_torch>, <mystgears:gear_octine>, <minecraft:redstone_torch>], 
	[<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>]
]);

recipes.remove(<mysticalmechanics:gear_gold_off>);
scripts.utils.addShaped("mysticalmechanics_gear_gold_off_modified", <mysticalmechanics:gear_gold_off>, [
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>], 
	[<ore:dustRedstone>, <mystgears:gear_octine>, <ore:dustRedstone>], 
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]
]);

scripts.utils.addShaped("gear_valonite", <mystgears:gear_valonite>, [
	[null, <thebetweenlands:items_misc:19>, null],
	[<thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:43>, <thebetweenlands:items_misc:19>],
	[null, <thebetweenlands:items_misc:19>, null]
]);

recipes.remove(<mysticalmechanics:axle_iron>);
scripts.utils.addShaped("axle_iron", <mysticalmechanics:axle_iron> * 8, [
	[<ore:ingotSyrmorite>], 
	[<ore:nuggetSyrmorite>], 
	[<ore:ingotSyrmorite>]
]);

recipes.remove(<mystgears:gear_gearbox_cover>);
scripts.utils.addShaped("recipe_gear_gearbox_cover", <mystgears:gear_gearbox_cover> * 16, [
	[<ore:nuggetSyrmorite>, null, <ore:nuggetSyrmorite>], 
	[null, <mystgears:gear_syrmorite>, null], 
	[<ore:nuggetSyrmorite>, null, <ore:nuggetSyrmorite>]
]);

recipes.remove(<mysticalmechanics:gearbox_frame>);
scripts.utils.addShaped("gearbox_frame", <mysticalmechanics:gearbox_frame>, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
	[<mysticalmechanics:axle_iron>, <mystgears:gear_syrmorite>, <mysticalmechanics:axle_iron>], 
	[<ore:ingotSyrmorite>, <mysticalmechanics:axle_iron>, <ore:ingotSyrmorite>]
]);

recipes.remove(<mystgears:gear_flywheel_light>);
scripts.utils.addShaped("recipe_gear_flywheel_light", <mystgears:gear_flywheel_light>, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <mystgears:gear_octine>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<mysticalmechanics:mergebox_frame>);
scripts.utils.addShaped("mergebox_frame", <mysticalmechanics:mergebox_frame>, [
	[<ore:ingotOctine>, <ore:ingotOctine>, <ore:ingotOctine>], 
	[<mysticalmechanics:axle_iron>, <mystgears:gear_octine>, <mysticalmechanics:axle_iron>], 
	[<ore:ingotOctine>, <mysticalmechanics:axle_iron>, <ore:ingotOctine>]
]);





<mysticalmechanics:axle_iron>.displayName = "Syrmorite Axle";
//<mysticalmechanics:gear_gold_on>.displayName = "Bluedust Gear (Inverted)";
//<mysticalmechanics:gear_gold_off>.displayName = "Bluedust Gear";
<mysticalmechanics:gear_fan>.displayName = "Syrmorite Fan";
