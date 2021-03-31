<ore:ingotCopper>.remove(<tmechworks:ingots:1>);
<ore:ingotTin>.remove(<tmechworks:ingots:2>);
<ore:ingotBronze>.remove(<tmechworks:ingots:3>);

recipes.addShaped("drawbridge", <tmechworks:drawbridge:0>, [
	[<embers:plate_gold>, <thebetweenlands:octine_ingot>, <embers:plate_gold>],
	[<thebetweenlands:octine_ingot>, <minecraft:dispenser>, <thebetweenlands:octine_ingot>],
	[<embers:plate_gold>, <coloredredstone:colored_redstone_dust:12>, <embers:plate_gold>]
]);

recipes.addShapeless("advanced_drawbridge", <tmechworks:drawbridge:2>, [<tmechworks:drawbridge:0>, <embers:winding_gears>]);

