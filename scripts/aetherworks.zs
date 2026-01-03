recipes.remove(<aetherworks:heat_dial>);
scripts.utils.addShaped("heat_dial", <aetherworks:heat_dial>, [
	[<minecraft:redstone>], 
	[<thebetweenlands:items_misc:32>], 
	[<embers:plate_lead>]
]);


recipes.remove(<aetherworks:item_resource:2>);
scripts.utils.addShaped("aetherium_lens", <aetherworks:item_resource:2>, [
	[null, <ore:ingotBronze>, null], 
	[<ore:ingotBronze>, <ore:shardAether>, <ore:ingotBronze>], 
	[null, <ore:ingotBronze>, null]
]);

recipes.remove(<aetherworks:forge_component:3>);
scripts.utils.addShaped("heat_vent", <aetherworks:forge_component:3>, [
	[<ore:plateGold>, <ore:plateIron>, <ore:plateGold>], 
	[<ore:plateIron>, <ore:barsIron>, <ore:plateIron>], 
	[<ore:plateGold>, <ore:plateIron>, <ore:plateGold>]
]);

recipes.remove(<aetherworks:forge_component:1>);
scripts.utils.addShaped("heater", <aetherworks:forge_component:1>, [
	[null, <embers:crystal_ember>, null], 
	[<embers:superheater>, <embers:block_tank>, <embers:superheater>], 
	[<ore:plateDawnstone>, <ore:plateOctine>, <ore:plateDawnstone>]
]);

recipes.remove(<aetherworks:forge_component:2>);
scripts.utils.addShaped("cooler", <aetherworks:forge_component:2>, [
	[null, <embers:crystal_ember>, null], 
	[<ore:plateNickel>, <embers:block_tank>, <ore:plateNickel>], 
	[<ore:plateDawnstone>, <ore:plateOctine>, <ore:plateDawnstone>]
]);
scripts.utils.addShaped("cooler_alt", <aetherworks:forge_component:2>, [
	[null, <embers:crystal_ember>, null], 
	[<ore:plateSilver>, <embers:block_tank>, <ore:plateSilver>], 
	[<ore:plateDawnstone>, <ore:plateOctine>, <ore:plateDawnstone>]
]);
