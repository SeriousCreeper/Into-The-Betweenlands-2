import mods.jei.JEI;


JEI.removeAndHide(<mystgears:gear_diamond>);
JEI.removeAndHide(<mystgears:gear_stone>);
//JEI.removeAndHide(<mystgears:ember_gatling_gun>);
//JEI.removeAndHide(<mystgears:witchburn_gatling_gun>);
//JEI.removeAndHide(<mystgears:mechanical_turret>);
JEI.removeAndHide(<mystgears:drill>);
JEI.removeAndHide(<mystgears:drill_diamond>);
JEI.removeAndHide(<mystgears:redstone_dynamo>);
JEI.removeAndHide(<mysticalmechanics:gear_iron>);
JEI.removeAndHide(<mysticalmechanics:gear_gold>);


recipes.remove(<mysticalmechanics:gear_fan>);
recipes.addShaped("mysticalmechanics-fan_iron", <mysticalmechanics:gear_fan>, [
	[<embers:plate_iron>, null, <embers:plate_iron>], 
	[null, <thebetweenlands:items_misc:41>, null], 
	[<embers:plate_iron>, null, <embers:plate_iron>]
]);

recipes.remove(<mystgears:gear_black_hole>);
recipes.addShaped("mystgears-recipe_gear_black_hole", <mystgears:gear_black_hole>, [
	[null, <thebetweenlands:wisp>, null], 
	[<thebetweenlands:wisp>, <embers:gear_dawnstone>, <thebetweenlands:wisp>], 
	[null, <thebetweenlands:wisp>, null]
]);

recipes.remove(<mystgears:gear_wood>);
recipes.addShaped("mystgears-recipe_gear_wood", <mystgears:gear_wood>, [
	[null, <thebetweenlands:weedwood_planks>, null], 
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:items_misc:20>, <thebetweenlands:weedwood_planks>], 
	[null, <thebetweenlands:weedwood_planks>, null]
]);

recipes.remove(<mystgears:gear_googly_eye>);
recipes.addShaped("mystgears-recipe_gear_googly_eye", <mystgears:gear_googly_eye>, [
	[null, <thebetweenlands:shelf_fungus>, null], 
	[<thebetweenlands:shelf_fungus>, <ore:dyeBlack>, <thebetweenlands:shelf_fungus>], 
	[null, <thebetweenlands:shelf_fungus>, null]
]);

recipes.remove(<mystgears:gear_flywheel_heavy>);
recipes.addShaped("mystgears-recipe_gear_flywheel_heavy", <mystgears:gear_flywheel_heavy>, [
	[<thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>], 
	[<thebetweenlands:octine_ingot>, <mystgears:gear_valonite>, <thebetweenlands:octine_ingot>], 
	[<thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>]
]);

recipes.remove(<mystgears:windup_box>);
recipes.addShaped("mystgears_recipe_windup_box_modified", <mystgears:windup_box>, [
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[<mysticalmechanics:axle_iron>, <mystgears:gear_octine>, <mysticalmechanics:mergebox_frame>], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>]
]);

recipes.remove(<mysticalmechanics:gear_gold_on>);
recipes.addShaped("mysticalmechanics_gear_gold_on_modified", <mysticalmechanics:gear_gold_on>, [
	[<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>], 
	[<minecraft:redstone_torch>, <mystgears:gear_octine>, <minecraft:redstone_torch>], 
	[<minecraft:redstone_torch>, <minecraft:redstone_torch>, <minecraft:redstone_torch>]
]);

recipes.remove(<mysticalmechanics:gear_gold_off>);
recipes.addShaped("mysticalmechanics_gear_gold_off_modified", <mysticalmechanics:gear_gold_off>, [
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>], 
	[<ore:dustRedstone>, <mystgears:gear_octine>, <ore:dustRedstone>], 
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]
]);

recipes.addShaped("gear_valonite", <mystgears:gear_valonite>, [
	[null, <thebetweenlands:items_misc:19>, null],
	[<thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:43>, <thebetweenlands:items_misc:19>],
	[null, <thebetweenlands:items_misc:19>, null]
]);




<mysticalmechanics:axle_iron>.displayName = "Syrmorite Axle";
//<mysticalmechanics:gear_gold_on>.displayName = "Bluedust Gear (Inverted)";
//<mysticalmechanics:gear_gold_off>.displayName = "Bluedust Gear";
<mysticalmechanics:gear_fan>.displayName = "Syrmorite Fan";
