import mods.jei.JEI;


JEI.removeAndHide(<mystgears:gear_diamond>);
JEI.removeAndHide(<mystgears:gear_stone>);
JEI.removeAndHide(<mystgears:ember_gatling_gun>);
JEI.removeAndHide(<mystgears:witchburn_gatling_gun>);
JEI.removeAndHide(<mystgears:mechanical_turret>);
JEI.removeAndHide(<mystgears:drill>);
JEI.removeAndHide(<mystgears:drill_diamond>);
JEI.removeAndHide(<mystgears:redstone_dynamo>);


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
	[<thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:19>, <thebetweenlands:octine_ingot>], 
	[<thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>]
]);



<ore:gearWood>.remove(<mystgears:gear_wood>);
<ore:gearWeedwood>.add(<mystgears:gear_wood>);


<mysticalmechanics:axle_iron>.displayName = "Syrmorite Axle";
<mysticalmechanics:gear_iron>.displayName = "Syrmorite Gear";
<mysticalmechanics:gear_gold>.displayName = "Octine Gear";
<mysticalmechanics:gear_gold_on>.displayName = "Bluedust Gear (Inverted)";
<mysticalmechanics:gear_gold_off>.displayName = "Bluedust Gear";
<mysticalmechanics:gear_fan>.displayName = "Syrmorite Fan";
<mystgears:gear_wood>.displayName = "Weedwood Gear";
<mystgears:gear_stone>.displayName = "Cragrock Gear";
<mystgears:gear_diamond>.displayName = "Valonite Gear";