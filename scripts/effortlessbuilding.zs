recipes.remove(<effortlessbuilding:reach_upgrade1>);
recipes.remove(<effortlessbuilding:reach_upgrade2>);
recipes.remove(<effortlessbuilding:reach_upgrade3>);
recipes.remove(<effortlessbuilding:randomizer_bag>);

recipes.addShaped("randomizer_bag", <effortlessbuilding:randomizer_bag>, [
	[null, <thebetweenlands:items_misc:4>, null],
	[<thebetweenlands:items_misc:4>, <roots:wildwood_planks>, <thebetweenlands:items_misc:4>],
	[null, <thebetweenlands:items_misc:4>, null]
]);

recipes.addShaped("reach_upgrade1", <effortlessbuilding:reach_upgrade1>, [
	[<thebetweenlands:shambler_tongue>, <thebetweenlands:shambler_tongue>, <thebetweenlands:shambler_tongue>],
	[<thebetweenlands:shambler_tongue>, <embers:ingot_dawnstone>, <thebetweenlands:shambler_tongue>],
	[<thebetweenlands:shambler_tongue>, <thebetweenlands:shambler_tongue>, <thebetweenlands:shambler_tongue>]
]);

recipes.addShaped("reach_upgrade2", <effortlessbuilding:reach_upgrade2>, [
	[null, <effortlessbuilding:reach_upgrade1>, null],
	[<effortlessbuilding:reach_upgrade1>, <minecraft:iron_ingot>, <effortlessbuilding:reach_upgrade1>],
	[null, <effortlessbuilding:reach_upgrade1>, null]
]);

recipes.addShaped("reach_upgrade3", <effortlessbuilding:reach_upgrade3>, [
	[null, <effortlessbuilding:reach_upgrade2>, null],
	[<effortlessbuilding:reach_upgrade2>, <botania:manaresource:4>, <effortlessbuilding:reach_upgrade2>],
	[null, <effortlessbuilding:reach_upgrade2>, null]
]);