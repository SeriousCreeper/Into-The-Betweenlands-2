import moretweaker.betweenlands.Animator;
import crafttweaker.player.IPlayer;
import crafttweaker.events.IEventManager;

val weedWoodLogs = <thebetweenlands:weedwood> | <thebetweenlands:log_weedwood:12> | <thebetweenlands:log_weedwood:0>;


furnace.remove(<thebetweenlands:items_misc:6>);
furnace.remove(<thebetweenlands:sulfur_torch>);



recipes.remove(<thebetweenlands:items_misc:32>);
recipes.remove(<thebetweenlands:items_misc:50>);
recipes.remove(<thebetweenlands:items_misc:20>);
recipes.remove(<thebetweenlands:swamp_talisman>);

recipes.removeByRegex("thebetweenlands:valonite_shard");


recipes.remove(<thebetweenlands:gerts_donut>);
scripts.utils.addShapeless("gerts_donut", <thebetweenlands:gerts_donut>, [<thebetweenlands:reed_donut>, <thebetweenlands:wight_heart>, <thebetweenlands:sap_spit>]);

scripts.utils.addShapeless("convenient_dual_furnace", <thebetweenlands:sulfur_furnace_dual>, [<thebetweenlands:sulfur_furnace>, <thebetweenlands:sulfur_furnace>]);

recipes.remove(<thebetweenlands:syrmorite_hopper>);
scripts.utils.addShaped("syrmorite_hopper", <thebetweenlands:syrmorite_hopper>, [
	[<thebetweenlands:items_misc:11>, <ore:chestWood>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <pyrotech:mechanical_hopper>, <thebetweenlands:items_misc:11>], 
	[null, <thebetweenlands:items_misc:11>, null]
]);

scripts.utils.addShaped("mushroom_stalk", <thebetweenlands:bulb_capped_mushroom_stalk>, [
	[<thebetweenlands:bulb_capped_mushroom_cap>, <thebetweenlands:bulb_capped_mushroom_cap>],
	[<thebetweenlands:bulb_capped_mushroom_cap>, <thebetweenlands:bulb_capped_mushroom_cap>]
]);

recipes.remove(<thebetweenlands:gallery_frame_small>);
scripts.utils.addShaped("thebetweenlands-gallery_frame_small", <thebetweenlands:gallery_frame_small>, [
	[null, <thebetweenlands:items_misc:20>, null], 
	[<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:20>], 
	[null, <thebetweenlands:items_misc:20>, null]
]);

recipes.remove(<minecraft:book>);
scripts.utils.addShapeless("book", <minecraft:book>, 
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <ore:leather>]
);

recipes.remove(<minecraft:writable_book>);
scripts.utils.addShapeless("writable_book", <minecraft:writable_book>, [<minecraft:book>, <ore:feather>, <minecraft:dye>]);

<ore:slimeball>.add(<thebetweenlands:sludge_ball>);

recipes.remove(<thebetweenlands:syrmorite_trapdoor>);
scripts.utils.addShaped("thebetweenlands-syrmorite_trapdoor", <thebetweenlands:syrmorite_trapdoor>, [
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>]
]);

recipes.remove(<minecraft:bookshelf>);
scripts.utils.addShaped("bookshelf", <minecraft:bookshelf>, [
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>],
	[<minecraft:book>, <minecraft:book>, <minecraft:book>],
	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>]
]);

recipes.remove(<thebetweenlands:smoking_rack>);
scripts.utils.addShaped("smoking_rack", <thebetweenlands:smoking_rack>, [
	[<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:20>], 
	[<thebetweenlands:items_misc:20>, <minecraft:string>, <thebetweenlands:items_misc:20>], 
	[<thebetweenlands:items_misc:20>, <thebetweenlands:items_misc:21>, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<thebetweenlands:sulfur_torch>);
scripts.utils.addShaped("unlit_sulfur_torchers", <thebetweenlands:sulfur_torch_extinguished> * 4, [
	[<thebetweenlands:items_misc:18>],
	[<ore:stickWood>]
]);

//recipes.remove(<thebetweenlands:weedwood_chest>);
//scripts.utils.addShaped("weedwood_chest", <thebetweenlands:weedwood_chest>, [
//	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>],
//	[<thebetweenlands:weedwood_planks>, <mcwfurnitures:iron_handle>, <thebetweenlands:weedwood_planks>],
//	[<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>]
//]);

//recipes.remove(<thebetweenlands:weedwood_workbench>);
//scripts.utils.addShaped("weedwood_workbench", <thebetweenlands:weedwood_workbench>, [
//	[<thebetweenlands:weedwood_planks>, <ore:ingotOctine>, <thebetweenlands:weedwood_planks>],
//	[<ore:ingotOctine>, <pyrotech:worktable>, <ore:ingotOctine>],
//	[<thebetweenlands:weedwood_planks>, <ore:ingotOctine>, <thebetweenlands:weedwood_planks>]
//]);

recipes.addShaped("bucket_weedwood", <thebetweenlands:bl_bucket>.withTag({Fluid: {}}), [
	[null, <thebetweenlands:items_misc:7>, null],
	[<thebetweenlands:weedwood_planks>, null, <thebetweenlands:weedwood_planks>],
	[null, <thebetweenlands:weedwood_planks>, null]
]);

recipes.addShaped("bucket_syrmorite", <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}), [
	[null, <thebetweenlands:items_misc:7>, null],
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>],
	[null, <ore:ingotSyrmorite>, null]
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
scripts.utils.addShaped("thatch", <thebetweenlands:thatch> * 2, [
	[<thebetweenlands:items_misc:6>, <thebetweenlands:items_misc:6>], 
	[<thebetweenlands:items_misc:6>, <thebetweenlands:items_misc:6>]
]);

recipes.remove(<thebetweenlands:angler_tooth_arrow>);
scripts.utils.addShaped("angler_tooth_arrow", <thebetweenlands:angler_tooth_arrow> * 4, [
	[<thebetweenlands:items_misc:21>], 
	[<thebetweenlands:items_misc:20>], 
	[<ore:feather>]
]);

recipes.remove(<thebetweenlands:octine_arrow>);
scripts.utils.addShaped("octine_arrow", <thebetweenlands:octine_arrow> * 4, [
	[<thebetweenlands:octine_ingot>], 
	[<thebetweenlands:items_misc:20>], 
	[<ore:feather>]
]);

scripts.utils.addShaped("amate_paper", <thebetweenlands:items_misc:32>, [
	[<pizzacraft:paper_mass>, <pizzacraft:paper_mass>, <pizzacraft:paper_mass>], 
	[<pizzacraft:paper_mass>, <pizzacraft:paper_mass>, <pizzacraft:paper_mass>], 
	[<pizzacraft:paper_mass>, <pizzacraft:paper_mass>, <pizzacraft:paper_mass>]
]);

recipes.remove(<thebetweenlands:caving_rope>);
recipes.addShaped("caving_rope", <thebetweenlands:caving_rope> * 64, [
	[<thebetweenlands:rope_item>, <thebetweenlands:rope_item>, <thebetweenlands:rope_item>], 
	[<thebetweenlands:rope_item>, <thebetweenlands:bulb_capped_mushroom_item>, <thebetweenlands:rope_item>], 
	[<thebetweenlands:rope_item>, <thebetweenlands:rope_item>, <thebetweenlands:rope_item>]
]);
	



scripts.utils.addShapeless("silk", <contenttweaker:silk>, [<thebetweenlands:items_misc:63>, <thebetweenlands:items_misc:63>, <thebetweenlands:items_misc:63>, <mysticalworld:spindle:*>.transformDamage(1)]);


scripts.utils.addShapeless("sticks_from_sapling", <thebetweenlands:items_misc:20>, [<thebetweenlands:sapling_weedwood>]);


scripts.utils.addShaped("clear_weedwood_barrel", <thebetweenlands:weedwood_barrel>, [[<thebetweenlands:weedwood_barrel>]]);

scripts.utils.addShapeless("dragonfly_wings", <thebetweenlands:items_misc:3> * 2, [<roots:mystic_feather>]);


<thebetweenlands:sulfur_torch_extinguished>.displayName = "Unlit Sulfur Torch";

scripts.utils.addBLChangeTooltip(<thebetweenlands:octine_pickaxe:*>, "Chance to turn ore into slag heap");
scripts.utils.addBLChangeTooltip(<thebetweenlands:octine_shovel:*>, "Chance to turn sand into glass, mud into bricks");

scripts.utils.addInfoTooltip(<thebetweenlands:sulfur_torch_extinguished>, "Can be relit with an octine ingot or at a campfire.");

<thebetweenlands:moss_filter>.maxDamage = 4000;
<thebetweenlands:silk_filter>.maxDamage = 20000;

events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
    if(event.player.name == "VallenFrostweavr") {
		<thebetweenlands:items_misc:19>.displayName = "Vallenite Shard";
		<mystgears:gear_valonite:*>.displayName = "Vallenite Gear";
		<pyrotech:diamond_hammer:*>.displayName = "Vallenite Hammer";
		<pyrotech:tongs_diamond:*>.displayName = "Vallenite Tongs";
		<pyrotech:sawmill_blade_diamond:*>.displayName = "Vallenite Sawmill Blade";
		<pyrotech:cog_diamond:*>.displayName = "Vallenite Cog";
		<roots:diamond_knife:*>.displayName = "Vallenite Knife";
		<thebetweenlands:valonite_ore>.displayName = "Vallenite Ore";
		<thebetweenlands:valonite_block>.displayName = "Block of Vallenite";
		<thebetweenlands:items_misc:43>.displayName = "Vallenite Splinter";
		<thebetweenlands:valonite_helmet:*>.displayName = "Vallenite Helmet";
		<thebetweenlands:valonite_chestplate:*>.displayName = "Vallenite Chestplate";
		<thebetweenlands:valonite_leggings:*>.displayName = "Vallenite Leggings";
		<thebetweenlands:valonite_boots:*>.displayName = "Vallenite Boots";
		<thebetweenlands:valonite_sword:*>.displayName = "Vallenite Sword";
		<thebetweenlands:valonite_shovel:*>.displayName = "Vallenite Shovel";
		<thebetweenlands:valonite_axe:*>.displayName = "Vallenite Axe";
		<thebetweenlands:valonite_greataxe:*>.displayName = "Vallenite Greataxe";
		<thebetweenlands:valonite_pickaxe:*>.displayName = "Vallenite Pickaxe";
		<thebetweenlands:valonite_shield:*>.displayName = "Vallenite Shield";
	}
});

