import moretweaker.betweenlands.Animator;

recipes.remove(<thebetweenlands:items_misc:32>);

recipes.addShaped("easier_sticks", <thebetweenlands:items_misc:20> * 8, [
	[<thebetweenlands:log_weedwood:*> | <thebetweenlands:weedwood>], 
	[<thebetweenlands:log_weedwood:*> | <thebetweenlands:weedwood>]
]);


recipes.remove(<thebetweenlands:gerts_donut>);
recipes.addShapeless("gerts_donut", <thebetweenlands:gerts_donut>, [<thebetweenlands:reed_donut>, <thebetweenlands:wight_heart>, <thebetweenlands:sap_spit>]);


val weedWoodLogs = <thebetweenlands:weedwood> | <thebetweenlands:log_weedwood:12> | <thebetweenlands:log_weedwood:0>;


recipes.remove(<thebetweenlands:swamp_talisman>);

recipes.addShapeless("convenient_dual_furnace", <thebetweenlands:sulfur_furnace_dual>, [<thebetweenlands:sulfur_furnace>, <thebetweenlands:sulfur_furnace>]);

recipes.remove(<thebetweenlands:syrmorite_hopper>);
recipes.addShaped("syrmorite_hopper", <thebetweenlands:syrmorite_hopper>, [
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <ore:chestWood>, <thebetweenlands:items_misc:11>], 
	[null, <thebetweenlands:items_misc:11>, null]
]);

recipes.addShaped("syrmorite_hopper_2", <thebetweenlands:syrmorite_hopper>, [
	[<thebetweenlands:items_misc:11>, <ore:logWood>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <ore:logWood>, <thebetweenlands:items_misc:11>], 
	[null, <thebetweenlands:items_misc:11>, null]
]);

recipes.addShaped("mushroom_stalk", <thebetweenlands:bulb_capped_mushroom_stalk>, [
	[<thebetweenlands:bulb_capped_mushroom_cap>, <thebetweenlands:bulb_capped_mushroom_cap>],
	[<thebetweenlands:bulb_capped_mushroom_cap>, <thebetweenlands:bulb_capped_mushroom_cap>]
]);

recipes.remove(<thebetweenlands:gallery_frame_small>);
recipes.addShaped("thebetweenlands-gallery_frame_small", <thebetweenlands:gallery_frame_small>, [
	[null, <thebetweenlands:items_misc:20>, null], 
	[<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:20>], 
	[null, <thebetweenlands:items_misc:20>, null]
]);

recipes.remove(<minecraft:book>);
recipes.addShapeless("book", <minecraft:book>, 
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <ore:leather>]
);

recipes.remove(<minecraft:writable_book>);
recipes.addShapeless("writable_book", <minecraft:writable_book>, [<minecraft:book>, <thebetweenlands:items_misc:3>, <minecraft:dye>]);

<ore:slimeball>.add(<thebetweenlands:sludge_ball>);

recipes.remove(<thebetweenlands:syrmorite_trapdoor>);
recipes.addShaped("thebetweenlands-syrmorite_trapdoor", <thebetweenlands:syrmorite_trapdoor>, [
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>]
]);

recipes.remove(<minecraft:bookshelf>);
recipes.addShaped("bookshelf", <minecraft:bookshelf>, [
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>],
	[<minecraft:book>, <minecraft:book>, <minecraft:book>],
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>]
]);



scripts.utils.addBLChangeTooltip(<thebetweenlands:octine_pickaxe:*>, "Chance to turn ore into slag heap");
scripts.utils.addBLChangeTooltip(<thebetweenlands:octine_shovel:*>, "Chance to turn sand into glass, mud into bricks");


