recipes.remove(<mysticalmechanics:gear_fan>);
recipes.addShaped("mysticalmechanics-fan_iron", <mysticalmechanics:gear_fan>, [
	[<thebetweenlands:syrmorite_pressure_plate>, null, <thebetweenlands:syrmorite_pressure_plate>], 
	[null, <thebetweenlands:items_misc:41>, null], 
	[<thebetweenlands:syrmorite_pressure_plate>, null, <thebetweenlands:syrmorite_pressure_plate>]
]);

recipes.remove(<mystgears:gear_diamond>);
recipes.addShaped("mystgears-recipe_gear_diamond", <mystgears:gear_diamond>, [
	[null, <thebetweenlands:items_misc:19>, null], 
	[<thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:43>, <thebetweenlands:items_misc:19>], 
	[null, <thebetweenlands:items_misc:19>, null]
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

recipes.remove(<mystgears:gear_stone>);
recipes.addShaped("mystgears-recipe_gear_stone", <mystgears:gear_stone>, [
	[null, <thebetweenlands:cragrock>, null], 
	[<thebetweenlands:cragrock>, <thebetweenlands:items_misc:20>, <thebetweenlands:cragrock>], 
	[null, <thebetweenlands:cragrock>, null]
]);


recipes.remove(<mystgears:gear_googly_eye>);
recipes.addShaped("mystgears-recipe_gear_googly_eye", <mystgears:gear_googly_eye>, [
	[null, <thebetweenlands:shelf_fungus>, null], 
	[<thebetweenlands:shelf_fungus>, <ore:dyeBlack>, <thebetweenlands:shelf_fungus>], 
	[null, <thebetweenlands:shelf_fungus>, null]
]);



<ore:gearDiamond>.remove(<mystgears:gear_diamond>);
<ore:gearValonite>.add(<mystgears:gear_diamond>);

<ore:gearWood>.remove(<mystgears:gear_wood>);
<ore:gearWeedwood>.add(<mystgears:gear_wood>);

<ore:gearStone>.remove(<mystgears:gear_stone>);
<ore:gearCragrock>.add(<mystgears:gear_stone>);


<mysticalmechanics:axle_iron>.displayName = "Syrmorite Axle";
<mysticalmechanics:gear_iron>.displayName = "Syrmorite Gear";
<mysticalmechanics:gear_gold>.displayName = "Octine Gear";
<mysticalmechanics:gear_gold_on>.displayName = "Bluedust Gear (Inverted)";
<mysticalmechanics:gear_gold_off>.displayName = "Bluedust Gear";
<mysticalmechanics:gear_fan>.displayName = "Syrmorite Fan";
<mystgears:gear_wood>.displayName = "Weedwood Gear";
<mystgears:gear_stone>.displayName = "Cragrock Gear";
<mystgears:gear_diamond>.displayName = "Valonite Gear";