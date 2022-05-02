import moretweaker.betweenlands.Animator;

val weedWoodLogs = <thebetweenlands:weedwood> | <thebetweenlands:log_weedwood:12> | <thebetweenlands:log_weedwood:0>;


furnace.remove(<thebetweenlands:items_misc:6>);
furnace.remove(<thebetweenlands:sulfur_torch>);



recipes.remove(<thebetweenlands:items_misc:32>);
recipes.remove(<thebetweenlands:items_misc:50>);
recipes.remove(<thebetweenlands:items_misc:20>);
recipes.remove(<thebetweenlands:swamp_talisman>);

recipes.removeByRegex("thebetweenlands:valonite_shard");


recipes.remove(<thebetweenlands:gerts_donut>);
recipes.addShapeless("gerts_donut", <thebetweenlands:gerts_donut>, [<thebetweenlands:reed_donut>, <thebetweenlands:wight_heart>, <thebetweenlands:sap_spit>]);

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

recipes.remove(<thebetweenlands:smoking_rack>);
recipes.addShaped("smoking_rack", <thebetweenlands:smoking_rack>, [
	[<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:20>], 
	[<thebetweenlands:items_misc:20>, <minecraft:string>, <thebetweenlands:items_misc:20>], 
	[<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:21>, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<thebetweenlands:sulfur_torch>);
recipes.addShaped("unlit_sulfur_torchers", <thebetweenlands:sulfur_torch_extinguished> * 4, [
	[<thebetweenlands:items_misc:18>],
	[<ore:stickWood>]
]);

recipes.remove(<thebetweenlands:weedwood_chest>);
recipes.addShaped("weedwood_chest", <thebetweenlands:weedwood_chest>, [
	[<thebetweenlands:weedwood_plank_slab>, <thebetweenlands:weedwood_plank_slab>, <thebetweenlands:weedwood_plank_slab>],
	[<thebetweenlands:weedwood_plank_slab>, <ore:ingotSyrmorite>, <thebetweenlands:weedwood_plank_slab>],
	[<thebetweenlands:weedwood_plank_slab>, <thebetweenlands:weedwood_plank_slab>, <thebetweenlands:weedwood_plank_slab>]
]);

recipes.remove(<thebetweenlands:weedwood_workbench>);
recipes.addShaped("weedwood_workbench", <thebetweenlands:weedwood_workbench>, [
	[<thebetweenlands:weedwood_planks>, <ore:ingotOctine>, <thebetweenlands:weedwood_planks>],
	[<ore:ingotOctine>, <pyrotech:worktable>, <ore:ingotOctine>],
	[<thebetweenlands:weedwood_planks>, <ore:ingotOctine>, <thebetweenlands:weedwood_planks>]
]);

recipes.addShaped("lantern_paper_1_candle", <thebetweenlands:lantern_paper_1>, [
	[<thebetweenlands:weedwood_plank_slab>, <thebetweenlands:weedwood_plank_slab>, <thebetweenlands:weedwood_plank_slab>], 
	[<thebetweenlands:amate_paper_pane_1> | <thebetweenlands:amate_paper_pane_2> | <thebetweenlands:amate_paper_pane_3>, <ore:candles>, <thebetweenlands:amate_paper_pane_1> | <thebetweenlands:amate_paper_pane_2> | <thebetweenlands:amate_paper_pane_3>], 
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>]
]);

recipes.remove(<thebetweenlands:weedwood_barrel>);
recipes.addShaped("weedwood_barrel", <thebetweenlands:weedwood_barrel>, [
	[<thebetweenlands:weedwood_plank_slab>, null, <thebetweenlands:weedwood_plank_slab>], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "tar", Amount: 1000}}).noReturn(), <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>]
]);

recipes.remove(<thebetweenlands:thatch>);
recipes.addShaped("thatch", <thebetweenlands:thatch> * 4, [
	[<thebetweenlands:items_misc:6>, <thebetweenlands:items_misc:6>, <thebetweenlands:items_misc:6>], 
	[<thebetweenlands:items_misc:6>, <thebetweenlands:items_misc:6>, <thebetweenlands:items_misc:6>], 
	[<thebetweenlands:items_misc:6>, <thebetweenlands:items_misc:6>, <thebetweenlands:items_misc:6>]
]);


recipes.addShaped("clear_weedwood_barrel", <thebetweenlands:weedwood_barrel>, [[<thebetweenlands:weedwood_barrel>]]);

recipes.addShapeless("dragonfly_wings", <thebetweenlands:items_misc:3> * 2, [<roots:mystic_feather>]);


<thebetweenlands:sulfur_torch_extinguished>.displayName = "Unlit Sulfur Torch";

scripts.utils.addBLChangeTooltip(<thebetweenlands:octine_pickaxe:*>, "Chance to turn ore into slag heap");
scripts.utils.addBLChangeTooltip(<thebetweenlands:octine_shovel:*>, "Chance to turn sand into glass, mud into bricks");

scripts.utils.addInfoTooltip(<thebetweenlands:sulfur_torch_extinguished>, "Can be relit with an octine ingot or at a campfire.");
