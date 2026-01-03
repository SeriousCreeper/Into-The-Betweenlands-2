import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.SmeltingBonus;

recipes.remove(<thaumcraft:nugget:1>);
recipes.remove(<thaumcraft:nugget:2>);
recipes.remove(<thaumcraft:nugget:3>);
recipes.remove(<thaumcraft:nugget:4>);

recipes.remove(<thaumcraft:plate:*>);
//<ore:plateSyrmorite>.remove(<thaumcraft:plate:1>);


//scripts.utils.addShapeless("salismundus", <thaumcraft:salis_mundus>, [<thebetweenlands:items_misc:22>.reuse(), <thebetweenlands:items_misc:14>.reuse(), <ore:dustRedstone>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>]);

recipes.remove(<thaumcraft:nugget:9>);

recipes.remove(<thaumcraft:table_wood>);
scripts.utils.addShaped("tablewood", <thaumcraft:table_wood>, [
	[<thaumcraft:slab_greatwood>, <thaumcraft:slab_greatwood>, <thaumcraft:slab_greatwood>], 
	[<thaumcraft:plank_greatwood>, null, <thaumcraft:plank_greatwood>]
]);

recipes.remove(<thaumcraft:phial>);
scripts.utils.addShaped("phial", <thaumcraft:phial> * 8, [
	[null, <thebetweenlands:items_misc:23>, null], 
	[<thebetweenlands:silt_glass>, null, <thebetweenlands:silt_glass>], 
	[null, <thebetweenlands:silt_glass>, null]
]);

recipes.remove(<thaumcraft:scribing_tools>);
scripts.utils.addShapeless("scribingtoolscraft1", <thaumcraft:scribing_tools>, [<thaumcraft:phial>, <minecraft:dye>, <ore:feather>]);
recipes.addHiddenShaped("scribingtoolscraft1_shaped", <thaumcraft:scribing_tools>, [[<thaumcraft:phial>, <minecraft:dye>, <ore:feather>]]);
scripts.utils.addShapeless("scribingtoolsrefill", <thaumcraft:scribing_tools>, [<thaumcraft:scribing_tools:*>, <minecraft:dye>]);

recipes.remove(<thaumcraft:stone_arcane>);
scripts.utils.addShaped("stonearcane", <thaumcraft:stone_arcane> * 9, [
	[<thebetweenlands:pitstone>, <thebetweenlands:pitstone>, <thebetweenlands:pitstone>], 
	[<thebetweenlands:pitstone>, <thaumcraft:crystal_essence>, <thebetweenlands:pitstone>], 
	[<thebetweenlands:pitstone>, <thebetweenlands:pitstone>, <thebetweenlands:pitstone>]
]);


recipes.remove(<thaumcraft:arcane_ear_toggle>);
scripts.utils.addShapeless("arcaneeartoggle", <thaumcraft:arcane_ear_toggle>, [<thaumcraft:arcane_ear>, <ore:lever>]);

recipes.remove(<thaumcraft:table_stone>);
scripts.utils.addShaped("tablestone", <thaumcraft:table_stone>, [
	[<thebetweenlands:smooth_cragrock_slab>, <thebetweenlands:smooth_cragrock_slab>, <thebetweenlands:smooth_cragrock_slab>], 
	[<thebetweenlands:smooth_cragrock>, null, <thebetweenlands:smooth_cragrock>]
]);

recipes.remove(<thaumcraft:golem_bell>);
scripts.utils.addShaped("golembell", <thaumcraft:golem_bell>, [
	[null, <ore:dentrothystShard>, <ore:dentrothystShard>], 
	[null, <ore:dentrothystShard>, <ore:dentrothystShard>], 
	[<ore:stickWood>, null, null]
]);


recipes.remove(<thaumicaugmentation:material:4>);
//scripts.utils.addShaped("harness_base", <thaumicaugmentation:material:4>, [
//	[<ore:plateBrass>], 
//	[<thebetweenlands:lurker_skin_chestplate:*>], 
//	[<thaumcraft:baubles:2>]
//]);

//recipes.remove(<thaumcraft:vis_generator>);
//recipes.remove(<thaumicaugmentation:impetus_generator>);

recipes.remove(<thaumcraft:label>);
scripts.utils.addShapeless("thaumcraft_jarlabel", <thaumcraft:label> * 4, 
	[<ore:dyeBlack>, 
	<thebetweenlands:sap_spit>, 
	<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
);
scripts.utils.addShapeless("thaumcraft_jarlabel_2", <thaumcraft:label> * 4, 
	[<ore:dyeBlack>, 
	<ore:slimeball>, 
	<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
);
scripts.utils.addShapeless("thaumcraft_jarlabelnull", <thaumcraft:label>, 
	[<thaumcraft:label:1>]
);


scripts.utils.addShapeless("banner_white", <thaumcraft:banner_white>, [<ore:banner>, <minecraft:dye:15>]);
scripts.utils.addShapeless("banner_orange", <thaumcraft:banner_orange>, [<ore:banner>, <minecraft:dye:14>]);
scripts.utils.addShapeless("banner_magenta", <thaumcraft:banner_magenta>, [<ore:banner>, <minecraft:dye:13>]);
scripts.utils.addShapeless("banner_lightblue", <thaumcraft:banner_lightblue>, [<ore:banner>, <minecraft:dye:12>]);
scripts.utils.addShapeless("banner_yellow", <thaumcraft:banner_yellow>, [<ore:banner>, <minecraft:dye:11>]);
scripts.utils.addShapeless("banner_lime", <thaumcraft:banner_lime>, [<ore:banner>, <minecraft:dye:10>]);
scripts.utils.addShapeless("banner_pink", <thaumcraft:banner_pink>, [<ore:banner>, <minecraft:dye:9>]);
scripts.utils.addShapeless("banner_gray", <thaumcraft:banner_gray>, [<ore:banner>, <minecraft:dye:8>]);
scripts.utils.addShapeless("banner_silver", <thaumcraft:banner_silver>, [<ore:banner>, <minecraft:dye:7>]);
scripts.utils.addShapeless("banner_cyan", <thaumcraft:banner_cyan>, [<ore:banner>, <minecraft:dye:6>]);
scripts.utils.addShapeless("banner_purple", <thaumcraft:banner_purple>, [<ore:banner>, <minecraft:dye:5>]);
scripts.utils.addShapeless("banner_blue", <thaumcraft:banner_blue>, [<ore:banner>, <minecraft:dye:4>]);
scripts.utils.addShapeless("banner_brown", <thaumcraft:banner_brown>, [<ore:banner>, <minecraft:dye:3>]);
scripts.utils.addShapeless("banner_green", <thaumcraft:banner_green>, [<ore:banner>, <minecraft:dye:2>]);
scripts.utils.addShapeless("banner_red", <thaumcraft:banner_red>, [<ore:banner>, <minecraft:dye:1>]);
scripts.utils.addShapeless("banner_black", <thaumcraft:banner_black>, [<ore:banner>, <minecraft:dye:0>]);


recipes.remove(<thaumcraft:candle_white>);
recipes.remove(<thaumcraft:candle_orange>);
recipes.remove(<thaumcraft:candle_magenta>);
recipes.remove(<thaumcraft:candle_lightblue>);
recipes.remove(<thaumcraft:candle_yellow>);
recipes.remove(<thaumcraft:candle_lime>);
recipes.remove(<thaumcraft:candle_pink>);
recipes.remove(<thaumcraft:candle_gray>);
recipes.remove(<thaumcraft:candle_silver>);
recipes.remove(<thaumcraft:candle_cyan>);
recipes.remove(<thaumcraft:candle_purple>);
recipes.remove(<thaumcraft:candle_blue>);
recipes.remove(<thaumcraft:candle_brown>);
recipes.remove(<thaumcraft:candle_green>);
recipes.remove(<thaumcraft:candle_red>);
recipes.remove(<thaumcraft:candle_black>);
recipes.remove(<thaumcraft:flesh_block>);
scripts.utils.addShaped("candle_white", <thaumcraft:candle_white>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:0>], [<growthcraft_bees:bees_wax:0>]]);
scripts.utils.addShaped("candle_orange", <thaumcraft:candle_orange>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:1>], [<growthcraft_bees:bees_wax:1>]]);
scripts.utils.addShaped("candle_magenta", <thaumcraft:candle_magenta>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:2>], [<growthcraft_bees:bees_wax:2>]]);
scripts.utils.addShaped("candle_lightblue", <thaumcraft:candle_lightblue>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:3>], [<growthcraft_bees:bees_wax:3>]]);
scripts.utils.addShaped("candle_yellow", <thaumcraft:candle_yellow>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:4>], [<growthcraft_bees:bees_wax:4>]]);
scripts.utils.addShaped("candle_lime", <thaumcraft:candle_lime>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:5>], [<growthcraft_bees:bees_wax:5>]]);
scripts.utils.addShaped("candle_pink", <thaumcraft:candle_pink>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:6>], [<growthcraft_bees:bees_wax:6>]]);
scripts.utils.addShaped("candle_gray", <thaumcraft:candle_gray>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:7>], [<growthcraft_bees:bees_wax:7>]]);
scripts.utils.addShaped("candle_silver", <thaumcraft:candle_silver>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:8>], [<growthcraft_bees:bees_wax:8>]]);
scripts.utils.addShaped("candle_cyan", <thaumcraft:candle_cyan>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:9>], [<growthcraft_bees:bees_wax:9>]]);
scripts.utils.addShaped("candle_purple", <thaumcraft:candle_purple>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:10>], [<growthcraft_bees:bees_wax:10>]]);
scripts.utils.addShaped("candle_blue", <thaumcraft:candle_blue>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:11>], [<growthcraft_bees:bees_wax:11>]]);
scripts.utils.addShaped("candle_brown", <thaumcraft:candle_brown>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:12>], [<growthcraft_bees:bees_wax:12>]]);
scripts.utils.addShaped("candle_green", <thaumcraft:candle_green>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:13>], [<growthcraft_bees:bees_wax:13>]]);
scripts.utils.addShaped("candle_red", <thaumcraft:candle_red>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:14>], [<growthcraft_bees:bees_wax:14>]]);
scripts.utils.addShaped("candle_black", <thaumcraft:candle_black>, [[<minecraft:string>], [<growthcraft_bees:bees_wax:15>], [<growthcraft_bees:bees_wax:15>]]);


// ARCANE WORKBENCH - SHAPED
recipes.remove(<thaumicaugmentation:arcane_terraformer>);

recipes.remove(<thaumicaugmentation:fortified_glass>);
ArcaneWorkbench.removeRecipe("fortified_glass");
ArcaneWorkbench.registerShapedRecipe("fortified_glass", "FORTIFIED_GLASS@1", 20, [
	<aspect:terra>, 
	<aspect:aqua>, 
	<aspect:ignis>, 
	<aspect:ordo>
],
<thaumicaugmentation:fortified_glass> * 8,
[
	[<thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>], 
	[<thebetweenlands:filtered_silt_glass>, <thaumicaugmentation:material:1>, <thebetweenlands:filtered_silt_glass>], 
	[<thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>]
]);

recipes.remove(<thaumicaugmentation:key>);
ArcaneWorkbench.removeRecipe("key_iron");
ArcaneWorkbench.registerShapedRecipe("key_iron", "WARD_KEYS@1", 5, [
	<aspect:terra>, 
	<aspect:aqua>, 
	<aspect:ignis>, 
	<aspect:perditio>
],
<thaumicaugmentation:key>,
[
	[null, null, <thaumcraft:brain>], 
	[null, <minecraft:iron_nugget>, <minecraft:iron_nugget>], 
	[<minecraft:iron_nugget>, <minecraft:iron_nugget>, null]
]);

recipes.remove(<thaumcraft:thaumometer>);
ArcaneWorkbench.removeRecipe("thaumometer");
ArcaneWorkbench.registerShapedRecipe("thaumometer", "FIRSTSTEPS@2", 20, [
	<aspect:aer>, 
	<aspect:terra>, 
	<aspect:aqua>, 
	<aspect:ignis>, 
	<aspect:ordo>, 
	<aspect:perditio>
], 
<thaumcraft:thaumometer>, 
[
	[null, <thebetweenlands:octine_ingot>, null], 
	[<thebetweenlands:octine_ingot>, <thebetweenlands:polished_dentrothyst_pane>, <thebetweenlands:octine_ingot>], 
	[null, <thebetweenlands:octine_ingot>, null]
]);


recipes.remove(<thaumcraft:vis_resonator>);
ArcaneWorkbench.removeRecipe("vis_resonator");
ArcaneWorkbench.registerShapedRecipe("vis_resonator", "UNLOCKAUROMANCY@2", 50, [
	<aspect:aer>, 
	<aspect:aqua>, 
], 
<thaumcraft:vis_resonator>, 
[
	[<ore:plateSyrmorite>, <ore:dentrothystShard>]
]);


ArcaneWorkbench.removeRecipe("enchantedfabric");
ArcaneWorkbench.registerShapedRecipe("enchantedfabric", "UNLOCKINFUSION@2", 5, [
], 
<thaumcraft:fabric>, 
[
	[<thebetweenlands:shelf_fungus>, <contenttweaker:silk>]
]);


ArcaneWorkbench.removeRecipe("essentiasmelter");
ArcaneWorkbench.registerShapedRecipe("essentiasmelter", "ESSENTIASMELTER@3", 50, [
	<aspect:ignis>, 
], 
<thaumcraft:smelter_basic>, 
[
	[<ore:plateBrass>, <thaumcraft:crucible>, <ore:plateBrass>], 
	[<ore:cobblestone>, <thebetweenlands:sulfur_furnace>, <ore:cobblestone>], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);


recipes.remove(<thaumcraft:filter>);
ArcaneWorkbench.removeRecipe("filter");
ArcaneWorkbench.registerShapedRecipe("filter", "BASEALCHEMY@1", 15, [
	<aspect:aqua>, 
], 
<thaumcraft:filter> * 2, 
[
	[<thebetweenlands:octine_ingot>, <thaumcraft:plank_silverwood>, <thebetweenlands:octine_ingot>]
]);


ArcaneWorkbench.removeRecipe("alembic");
ArcaneWorkbench.registerShapedRecipe("alembic", "ESSENTIASMELTER@3", 50, [
	<aspect:aqua>, 
], 
<thaumcraft:alembic>, 
[
	[<thaumcraft:plank_greatwood>, <thaumcraft:filter>, <thaumcraft:plank_greatwood>], 
	[<ore:plateBrass>, <ore:ingotSyrmorite>, <ore:plateBrass>], 
	[<thaumcraft:plank_greatwood>, <thaumcraft:filter>, <thaumcraft:plank_greatwood>]
]);


ArcaneWorkbench.removeRecipe("resonator");
ArcaneWorkbench.registerShapedRecipe("resonator", "ESSENTIASMELTER@3", 50, [
], 
<thaumcraft:resonator>, 
[
	[<ore:plateSyrmorite>, null, <ore:plateSyrmorite>], 
	[<ore:plateSyrmorite>, <ore:dentrothystShard>, <ore:plateSyrmorite>], 
	[null, <ore:stickWood>, null]
]);


ArcaneWorkbench.removeRecipe("goggles");
ArcaneWorkbench.registerShapedRecipe("goggles", "UNLOCKARTIFICE@2", 50, [
], 
<thaumcraft:goggles>, 
[
	[<ore:leather>, <ore:ingotBrass>, <ore:leather>], 
	[<ore:leather>, null, <ore:leather>], 
	[<thaumcraft:thaumometer>, <ore:ingotBrass>, <thaumcraft:thaumometer>]
]);


ArcaneWorkbench.removeRecipe("patterncrafter");
ArcaneWorkbench.registerShapedRecipe("patterncrafter", "ARCANEPATTERNCRAFTER@2", 15, [
	<aspect:terra>,
	<aspect:aqua>,
	<aspect:ordo>,
], 
<thaumcraft:pattern_crafter>, 
[
	[<thaumcraft:vis_resonator>, <thebetweenlands:syrmorite_hopper>, null], 
	[<thaumcraft:mechanism_simple>, <ore:workbench>, <thaumcraft:mechanism_simple>], 
	[null, <thaumcraft:plank_greatwood>, null]
]);


recipes.remove(<thaumcraft:redstone_relay>);
ArcaneWorkbench.removeRecipe("redstonerelay");
ArcaneWorkbench.registerShapedRecipe("redstonerelay", "REDSTONERELAY@2", 10, [
	<aspect:ordo>,
], 
<thaumcraft:redstone_relay>, 
[
	[<betweenlandsredstone:scabyst_torch>, <thaumcraft:mechanism_simple>, <betweenlandsredstone:scabyst_torch>], 
	[<thebetweenlands:mud_bricks>, <thebetweenlands:mud_bricks>, <thebetweenlands:mud_bricks>]
]);


recipes.remove(<thaumcraft:arcane_ear>);
ArcaneWorkbench.removeRecipe("arcaneear");
ArcaneWorkbench.registerShapedRecipe("arcaneear", "ARCANEEAR@2", 15, [
	<aspect:aer>,
], 
<thaumcraft:arcane_ear>, 
[
	[<ore:plateBrass>, null, <ore:plateBrass>], 
	[null, <thaumcraft:mechanism_simple>, null], 
	[<ore:slabWood>, <ore:dustRedstone>, <ore:slabWood>]
]);



recipes.remove(<thaumcraft:bellows>);
ArcaneWorkbench.removeRecipe("bellows");
ArcaneWorkbench.registerShapedRecipe("bellows", "BELLOWS@2", 25, [
	<aspect:aer>,
], 
<thaumcraft:bellows>, 
[
	[<ore:plankWood>, <ore:plankWood>, null], 
	[<ore:leather>, <ore:leather>, <thebetweenlands:items_misc:11>], 
	[<ore:plankWood>, <ore:plankWood>, null]
]);


recipes.remove(<thaumcraft:wand_workbench>);
ArcaneWorkbench.removeRecipe("wand_workbench");
ArcaneWorkbench.registerShapedRecipe("wand_workbench", "BASEAUROMANCY@2", 100, [
	<aspect:terra>,
	<aspect:aqua>,
], 
<thaumcraft:wand_workbench>, 
[
	[<ore:plateSyrmorite>, <thaumcraft:slab_arcane_stone>, <ore:plateSyrmorite>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:vis_resonator>, <thaumcraft:stone_arcane>], 
	[<thebetweenlands:octine_ingot>, <thaumcraft:table_stone>, <thebetweenlands:octine_ingot>]
]);


recipes.remove(<thaumcraft:caster_basic>);
ArcaneWorkbench.removeRecipe("caster_basic");
ArcaneWorkbench.registerShapedRecipe("caster_basic", "UNLOCKAUROMANCY@1", 100, [
	<aspect:aer>,
	<aspect:terra>,
	<aspect:aqua>,
	<aspect:ignis>,
	<aspect:ordo>,
	<aspect:perditio>,
], 
<thaumcraft:caster_basic>, 
[
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[<ore:leather>, <thaumcraft:vis_resonator>, <ore:leather>], 
	[<ore:leather>, <thaumcraft:thaumometer>, <ore:leather>]
]);


recipes.remove(<thaumcraft:focus_pouch>);
ArcaneWorkbench.removeRecipe("focuspouch");
ArcaneWorkbench.registerShapedRecipe("focuspouch", "FOCUSPOUCH@2", 25, [
], 
<thaumcraft:focus_pouch>, 
[
	[<ore:leather>, <thebetweenlands:octine_ingot>, <ore:leather>], 
	[<ore:leather>, <thaumcraft:baubles:2>, <ore:leather>], 
	[<ore:leather>, <ore:leather>, <ore:leather>]
]);


recipes.remove(<thaumcraft:recharge_pedestal>);
ArcaneWorkbench.removeRecipe("rechargepedestal");
ArcaneWorkbench.registerShapedRecipe("rechargepedestal", "RECHARGEPEDESTAL@2", 100, [
	<aspect:aer>,
	<aspect:ordo>,
], 
<thaumcraft:recharge_pedestal>, 
[
	[null, <thaumcraft:vis_resonator>, null], 
	[<thebetweenlands:items_misc:19>, <thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:19>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]
]);


recipes.remove(<thaumcraft:arcane_workbench_charger>);
ArcaneWorkbench.removeRecipe("workbenchcharger");
ArcaneWorkbench.registerShapedRecipe("workbenchcharger", "WORKBENCHCHARGER@2", 200, [
	<aspect:aer> * 2,
	<aspect:ordo> * 2,
], 
<thaumcraft:arcane_workbench_charger>, 
[
	[null, <thaumcraft:vis_resonator>, null], 
	[<thaumcraft:plank_greatwood>, null, <thaumcraft:plank_greatwood>], 
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>]
]);


recipes.remove(<thaumcraft:grapple_gun_spool>);
ArcaneWorkbench.removeRecipe("grapplegunspool");
ArcaneWorkbench.registerShapedRecipe("grapplegunspool", "GRAPPLEGUN@2", 25, [
	<aspect:aqua>,
], 
<thaumcraft:grapple_gun_spool>, 
[
	[<thebetweenlands:shambler_tongue>, <betweenlandsredstone:scabyst_tripwire_hook>, <thebetweenlands:shambler_tongue>], 
	[<thebetweenlands:shambler_tongue>, <thaumcraft:mechanism_simple>, <thebetweenlands:shambler_tongue>], 
	[<thebetweenlands:shambler_tongue>, <thebetweenlands:shambler_tongue>, <thebetweenlands:shambler_tongue>]
]);


ArcaneWorkbench.removeRecipe("matrixmotion");
ArcaneWorkbench.registerShapedRecipe("matrixmotion", "INFUSIONBOOST@2", 500, [
	<aspect:aer>,
	<aspect:ordo>,
], 
<thaumcraft:matrix_speed>, 
[
	[<thaumcraft:stone_arcane>, <ore:nitor>, <thaumcraft:stone_arcane>], 
	[<ore:nitor>, <thebetweenlands:valonite_block>, <ore:nitor>], 
	[<thaumcraft:stone_arcane>, <ore:nitor>, <thaumcraft:stone_arcane>]
]);


ArcaneWorkbench.removeRecipe("matrixcost");
ArcaneWorkbench.registerShapedRecipe("matrixcost", "INFUSIONBOOST@2", 500, [
	<aspect:aer>,
	<aspect:aqua>,
	<aspect:perditio>,
], 
<thaumcraft:matrix_cost>, 
[
	[<thaumcraft:stone_arcane>, <thaumcraft:alumentum>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:alumentum>, <thebetweenlands:valonite_block>, <thaumcraft:alumentum>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:alumentum>, <thaumcraft:stone_arcane>]
]);


ArcaneWorkbench.removeRecipe("essentiatransportout");
ArcaneWorkbench.registerShapedRecipe("essentiatransportout", "ESSENTIATRANSPORT@2", 100, [
	<aspect:aer>,
	<aspect:aqua>,
], 
<thaumcraft:essentia_output>, 
[
	[<ore:plateBrass>, <thebetweenlands:syrmorite_hopper>, <ore:plateBrass>], 
	[<ore:plateSyrmorite>, <thaumcraft:metal_alchemical>, <ore:plateSyrmorite>]
]);


ArcaneWorkbench.removeRecipe("mindclockwork");
ArcaneWorkbench.registerShapedRecipe("mindclockwork", "MINDCLOCKWORK@2", 25, [
	<aspect:ignis>,
	<aspect:ordo>,
], 
<thaumcraft:mind>, 
[
	[null, <ore:paneGlass>, null], 
	[<ore:paneGlass>, <thaumcraft:mechanism_simple>, <ore:paneGlass>], 
	[<ore:plateBrass>, <minecraft:comparator>, <ore:plateBrass>]
]);


ArcaneWorkbench.removeRecipe("modvision");
ArcaneWorkbench.registerShapedRecipe("modvision", "GOLEMVISION@2", 50, [
	<aspect:aqua>,
], 
<thaumcraft:module>, 
[
	[<thebetweenlands:dentrothyst_vial:0>, null, <thebetweenlands:dentrothyst_vial:0>], 
	[<thebetweenlands:items_misc:52>, null, <thebetweenlands:items_misc:52>], 
	[<ore:plateBrass>, <thaumcraft:mechanism_simple>, <ore:plateBrass>]
]);


ArcaneWorkbench.removeRecipe("modaggression");
ArcaneWorkbench.registerShapedRecipe("modaggression", "SEALGUARD@2", 50, [
	<aspect:ignis>,
], 
<thaumcraft:module:1>, 
[
	[null, <ore:paneGlass>, null], 
	[<ore:paneGlass>, <thebetweenlands:items_misc:45>, <ore:paneGlass>], 
	[<ore:plateBrass>, <thaumcraft:mechanism_simple>, <ore:plateBrass>]
]);


ArcaneWorkbench.removeRecipe("arcanespa");
ArcaneWorkbench.registerShapedRecipe("arcanespa", "ARCANESPA@2", 50, [
	<aspect:aqua>,
], 
<thaumcraft:spa>, 
[
	[<thebetweenlands:polished_limestone>, <ore:barsIron>, <thebetweenlands:polished_limestone>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:jar_normal>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:mechanism_simple>, <thaumcraft:stone_arcane>]
]);


ArcaneWorkbench.removeRecipe("automatedcrossbow");
ArcaneWorkbench.registerShapedRecipe("automatedcrossbow", "BASICTURRET@2", 100, [
	<aspect:aer>,
], 
<thaumcraft:turret>, 
[
	[<ore:bow>, <thaumcraft:mechanism_simple>, <ore:plateSyrmorite>], 
	[<thaumcraft:plank_greatwood>, <thaumcraft:mind>, <thaumcraft:plank_greatwood>], 
	[<ore:stickWood>, null, <ore:stickWood>]
]);


ArcaneWorkbench.removeRecipe(<thaumicaugmentation:starfield_glass>);
ArcaneWorkbench.registerShapedRecipe("starfield_glass_rift", "STARFIELD_GLASS_RIFT", 30, [
	<aspect:aer>,
	<aspect:aqua>,
	<aspect:perditio>,
], 
<thaumicaugmentation:starfield_glass> * 8, 
[
	[<thaumicaugmentation:fortified_glass>, <thaumicaugmentation:fortified_glass>, <thaumicaugmentation:fortified_glass>], 
	[<thaumicaugmentation:fortified_glass>, <ore:shimmerstone>, <thaumicaugmentation:fortified_glass>], 
	[<thaumicaugmentation:fortified_glass>, <thaumicaugmentation:fortified_glass>, <thaumicaugmentation:fortified_glass>]
]);


recipes.remove(<thaumicaugmentation:key:0>);
ArcaneWorkbench.removeRecipe(<thaumicaugmentation:key:0>);
ArcaneWorkbench.registerShapedRecipe("key_iron", "WARD_KEYS", 5, [
	<aspect:ignis>,
	<aspect:aqua>,
	<aspect:terra>,
	<aspect:perditio>,
], 
<thaumicaugmentation:key:0>, 
[
	[null, null, <thaumcraft:brain>], 
	[null, <thebetweenlands:items_misc:41>, <thebetweenlands:items_misc:41>], 
	[<thebetweenlands:items_misc:41>, <thebetweenlands:items_misc:41>, null]
]);


ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_linker>);
ArcaneWorkbench.registerShapedRecipe("impetus_linker", "IMPETUS", 125, [
	<aspect:ordo>,
	<aspect:perditio>,
], 
<thaumicaugmentation:impetus_linker>, 
[
	[<ore:plateVoid>, <ore:plateVoid>], 
	[<thaumicaugmentation:material:5>, <ore:plateVoid>], 
	[<thebetweenlands:items_misc:20>, null]
]);


ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_gate>);
ArcaneWorkbench.registerShapedRecipe("impetus_gate", "IMPETUS_GATE", 50, [
	<aspect:terra>,
	<aspect:ordo>,
	<aspect:perditio>,
], 
<thaumicaugmentation:impetus_gate>, 
[
	[null, <thaumicaugmentation:material:1>, null], 
	[<ore:plateVoid>, <thaumicaugmentation:impetus_relay>, <ore:plateVoid>], 
	[null, <minecraft:comparator>, null]
]);


recipes.remove(<thaumicaugmentation:stability_field_generator>);
ArcaneWorkbench.removeRecipe(<thaumicaugmentation:stability_field_generator>);
ArcaneWorkbench.registerShapedRecipe("stability_field_generator", "STABILITY_FIELD_GENERATOR", 250, [
	<aspect:terra>,
	<aspect:aer>,
	<aspect:ordo>,
], 
<thaumicaugmentation:stability_field_generator>, 
[
	[<ore:plateBrass>, <ore:blockAmber>, <ore:plateBrass>], 
	[<thaumcraft:slab_arcane_stone>, <thaumcraft:mechanism_complex>, <thaumcraft:slab_arcane_stone>], 
	[<thaumcraft:stone_arcane>, <ore:dustRedstone>, <thaumcraft:stone_arcane>]
]);


recipes.remove(<thaumcraft:potion_sprayer>);
ArcaneWorkbench.removeRecipe(<thaumcraft:potion_sprayer>);
ArcaneWorkbench.registerShapedRecipe("potionsprayer", "POTIONSPRAYER@2", 75, [
	<aspect:aqua>,
	<aspect:ignis>,
], 
<thaumcraft:potion_sprayer>, 
[
	[<ore:plateBrass>, <betweenlandsredstone:scabyst_dispenser>, <ore:plateBrass>], 
	[<ore:plateSyrmorite>, <thebetweenlands:infuser>, <ore:plateSyrmorite>], 
	[<ore:plateSyrmorite>, <thaumcraft:metal_alchemical>, <ore:plateSyrmorite>]
]);


ArcaneWorkbench.removeRecipe(<thaumcraft:condenser_lattice>);
ArcaneWorkbench.registerShapedRecipe("condenserlattice", "FLUXCLEANUP@2", 100, [
	<aspect:terra> * 3,
	<aspect:aer> * 3,
], 
<thaumcraft:condenser_lattice>, 
[
	[<ore:dentrothystShard>, <ore:plateThaumium>, <ore:dentrothystShard>], 
	[<ore:dentrothystShard>, <thaumcraft:filter>, <ore:dentrothystShard>], 
	[<ore:dentrothystShard>, <ore:plateThaumium>, <ore:dentrothystShard>]
]);

ArcaneWorkbench.removeRecipe(<thaumicaugmentation:material:1>);
ArcaneWorkbench.registerShapedRecipe("warding_sigil", "WARDED_ARCANA@1", 10, [
	<aspect:ignis>,
	<aspect:aqua>,
	<aspect:terra>,
	<aspect:perditio>,
], 
<thaumicaugmentation:material:1> * 3, 
[
	[null, <growthcraft_bees:bees_wax:*>, null], 
	[<ore:dyePurple>, <thaumcraft:brain>, <ore:dyePurple>], 
	[null, <growthcraft_bees:bees_wax:*>, null]
]);

recipes.remove(<embers:ignition_cannon>);
ArcaneWorkbench.registerShapedRecipe("ignition_cannon", "UNLOCKARTIFICE@2", 100, [
	<aspect:ignis> * 32,
	<aspect:ordo> * 16,
	<aspect:perditio> * 8,
], 
<embers:ignition_cannon>.withTag({cooldown: 0}), 
[
	[null, <ore:ingotDawnstone>, <embers:plate_dawnstone>], 
	[<ore:ingotDawnstone>, <embers:plate_dawnstone>, <ore:ingotSyrmorite>], 
	[<embers:shard_ember>, <ore:stickWood>, null]
]);

recipes.remove(<embers:staff_ember>);
ArcaneWorkbench.registerShapedRecipe("staff_ember", "UNLOCKARTIFICE@2", 100, [
	<aspect:ignis> * 32,
	<aspect:ordo> * 16,
	<aspect:perditio> * 8,
], 
<embers:staff_ember>.withTag({cooldown: 0}), 
[
	[<embers:plate_silver>, <embers:shard_ember>, <embers:plate_silver>], 
	[<ore:ingotDawnstone>, <ore:stickWood>, <ore:ingotDawnstone>], 
	[null, <ore:stickWood>, null]
]);

recipes.remove(<embers:axe_clockwork>);
ArcaneWorkbench.registerShapedRecipe("axe_clockwork", "UNLOCKARTIFICE@2", 100, [
	<aspect:ignis> * 32,
	<aspect:ordo> * 16,
	<aspect:perditio> * 8,
], 
<embers:axe_clockwork>, 
[
	[<ore:plateDawnstone>, <ore:plateOctine>, <ore:plateDawnstone>], 
	[<ore:ingotDawnstone>, <embers:shard_ember>, <ore:ingotDawnstone>], 
	[null, <ore:stickWood>, null]
]);

recipes.remove(<embers:pickaxe_clockwork>);
ArcaneWorkbench.registerShapedRecipe("pickaxe_clockwork", "UNLOCKARTIFICE@2", 100, [
	<aspect:ignis> * 32,
	<aspect:ordo> * 16,
	<aspect:perditio> * 8,
], 
<embers:pickaxe_clockwork>, 
[
	[<ore:ingotDawnstone>, <embers:shard_ember>, <ore:ingotDawnstone>], 
	[null, <ore:plateOctine>, null], 
	[null, <ore:stickWood>, null]
]);

recipes.remove(<embers:grandhammer>);
ArcaneWorkbench.registerShapedRecipe("grandhammer", "UNLOCKARTIFICE@2", 100, [
	<aspect:ignis> * 32,
	<aspect:ordo> * 16,
	<aspect:perditio> * 8,
], 
<embers:grandhammer>, 
[
	[<ore:blockDawnstone>, <ore:ingotDawnstone>, <ore:blockDawnstone>], 
	[null, <ore:ingotOctine>, null], 
	[null, <ore:stickWood>, null]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:lamp_arcane>);
ArcaneWorkbench.registerShapedRecipe("arcanelamp", "ARCANELAMP@1", 50, [
	<aspect:aer> * 1,
	<aspect:ignis> * 1
], 
<thaumcraft:lamp_arcane>, 
[
	[null, <ore:plateSyrmorite>, null], 
	[<ore:plateSyrmorite>, <thaumcraft:amber_block>, <ore:plateSyrmorite>], 
	[null, <ore:plateSyrmorite>, null]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun>);
ArcaneWorkbench.registerShapedRecipe("grapplegun", "GRAPPLEGUN@1", 75, [
	<aspect:aer> * 1,
	<aspect:ignis> * 1
], 
<thaumcraft:grapple_gun>, 
[
	[null, null, <thaumcraft:grapple_gun_spool>], 
	[<thaumcraft:grapple_gun_tip>, <ore:plateSyrmorite>, <ore:plateSyrmorite>], 
	[null, <ore:plateBrass>, <ore:plankWood>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:turret:1>);
ArcaneWorkbench.registerShapedRecipe("advancedcrossbow", "ADVANCEDTURRET@1", 75, [
	<aspect:aer> * 2
], 
<thaumcraft:turret:1>, 
[
	[<ore:plateSyrmorite>, <thaumcraft:mind:1>, <ore:plateSyrmorite>], 
	[<ore:plateSyrmorite>, <thaumcraft:turret>, <ore:plateSyrmorite>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:brain_box>);
ArcaneWorkbench.registerShapedRecipe("mnemonicmatrix", "THAUMATORIUM@1", 50, [
	<aspect:terra> * 1,
	<aspect:ordo> * 1
], 
<thaumcraft:brain_box>, 
[
	[<ore:plateSyrmorite>, <ore:gemAmber>, <ore:plateSyrmorite>], 
	[<ore:gemAmber>, <thaumcraft:mind>, <ore:gemAmber>], 
	[<ore:plateSyrmorite>, <ore:gemAmber>, <ore:plateSyrmorite>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:essentia_input>);
ArcaneWorkbench.registerShapedRecipe("essentiatransportin", "ESSENTIATRANSPORT@1", 100, [
	<aspect:aer> * 1,
	<aspect:aqua> * 1
], 
<thaumcraft:essentia_input>, 
[
	[<ore:plateBrass>, <betweenlandsredstone:scabyst_dispenser>, <ore:plateBrass>], 
	[<ore:plateSyrmorite>, <thaumcraft:metal_alchemical>, <ore:plateSyrmorite>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_vent>);
ArcaneWorkbench.registerShapedRecipe("smeltervent", "IMPROVEDSMELTING2@1", 150, [
	<aspect:aer> * 1
], 
<thaumcraft:smelter_vent>, 
[
	[<ore:plateSyrmorite>, <ore:plateBrass>, <ore:plateSyrmorite>], 
	[<thaumcraft:filter>, <thaumcraft:metal_alchemical>, <thaumcraft:filter>], 
	[<ore:plateSyrmorite>, <ore:plateBrass>, <ore:plateSyrmorite>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_aux>);
ArcaneWorkbench.registerShapedRecipe("smelteraux", "IMPROVEDSMELTING@1", 100, [
	<aspect:aer> * 1,
	<aspect:terra> * 1
], 
<thaumcraft:smelter_aux>, 
[
	[<thaumcraft:plank_greatwood>, <thaumcraft:tube_filter>, <thaumcraft:plank_greatwood>], 
	[<ore:plateBrass>, <thaumcraft:metal_alchemical>, <ore:plateBrass>], 
	[<ore:plateSyrmorite>, <thaumcraft:bellows>, <ore:plateSyrmorite>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:metal_alchemical>);
ArcaneWorkbench.registerShapedRecipe("alchemicalconstruct", "TUBES@1", 75, [
	<aspect:aqua> * 1,
	<aspect:ordo> * 1,
	<aspect:perditio> * 1
], 
<thaumcraft:metal_alchemical> * 2, 
[
	[<ore:plateSyrmorite>, <thaumcraft:tube_valve>, <ore:plateSyrmorite>], 
	[<thaumcraft:tube>, <thaumcraft:plank_greatwood>, <thaumcraft:tube>], 
	[<ore:plateSyrmorite>, <thaumcraft:tube_valve>, <ore:plateSyrmorite>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:dioptra>);
ArcaneWorkbench.registerShapedRecipe("dioptra", "DIOPTRA@1", 50, [
	<aspect:aer> * 1,
	<aspect:aqua> * 1
], 
<thaumcraft:dioptra>, 
[
	[<thaumcraft:stone_arcane>, <thaumcraft:vis_resonator>, <thaumcraft:stone_arcane>], 
	[<ore:plateSyrmorite>, <thaumcraft:thaumometer>, <ore:plateSyrmorite>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:levitator>);
ArcaneWorkbench.registerShapedRecipe("levitator", "LEVITATOR@1", 35, [
	<aspect:aer> * 1
], 
<thaumcraft:levitator>, 
[
	[<ore:plankWood>, <ore:plateThaumium>, <ore:plankWood>], 
	[<ore:plateSyrmorite>, <ore:nitor>, <ore:plateSyrmorite>], 
	[<ore:plankWood>, <thaumcraft:mechanism_simple>, <ore:plankWood>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:tube_buffer>);
ArcaneWorkbench.registerShapedRecipe("tubebuffer", "TUBES@1", 25, [
], 
<thaumcraft:tube_buffer>, 
[
	[<thaumcraft:phial>, <thaumcraft:tube_valve>, <thaumcraft:phial>], 
	[<thaumcraft:tube>, <ore:plateSyrmorite>, <thaumcraft:tube>], 
	[<thaumcraft:phial>, <thaumcraft:tube_restrict>, <thaumcraft:phial>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
ArcaneWorkbench.registerShapedRecipe("tube", "TUBES@1", 10, [
], 
<thaumcraft:tube> * 8, 
[
	[null, <ore:nuggetQuicksilver>, null], 
	[<ore:plateSyrmorite>, <ore:blockGlass>, <ore:plateSyrmorite>], 
	[null, <ore:nuggetBrass>, null]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_simple>);
ArcaneWorkbench.registerShapedRecipe("mechanism_simple", "BASEARTIFICE@1", 10, [
	<aspect:ignis> * 1,
	<aspect:aqua> * 1
], 
<thaumcraft:mechanism_simple>, 
[
	[null, <ore:plateBrass>, null], 
	[<ore:plateSyrmorite>, <ore:stickWood>, <ore:plateSyrmorite>], 
	[null, <ore:plateBrass>, null]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:mind>);
recipes.remove(<thaumcraft:mind>);
ArcaneWorkbench.registerShapedRecipe("mindclockwork", "MINDCLOCKWORK@1", 25, [
	<aspect:ignis> * 1,
	<aspect:ordo> * 1
], 
<thaumcraft:mind>, 
[
	[null, <ore:paneGlass>, null], 
	[<ore:paneGlass>, <thaumcraft:mechanism_simple>, <ore:paneGlass>], 
	[<ore:plateBrass>, <betweenlandsredstone:scabyst_comparator>, <ore:plateBrass>]
]);

ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_gate>);
recipes.remove(<thaumicaugmentation:impetus_gate>);
ArcaneWorkbench.registerShapedRecipe("impetus_gate", "IMPETUS_GATE@2", 50, [
	<aspect:terra> * 1,
	<aspect:ordo> * 1,
	<aspect:perditio> * 1
], 
<thaumicaugmentation:impetus_gate>, 
[
	[null, <thaumicaugmentation:material:1>, null], 
	[<ore:plateVoid>, <thaumicaugmentation:impetus_relay>, <ore:plateVoid>], 
	[null, <betweenlandsredstone:scabyst_comparator>, null]
]);

ArcaneWorkbench.removeRecipe(<thaumicaugmentation:impetus_generator>);
recipes.remove(<thaumicaugmentation:impetus_generator>);
ArcaneWorkbench.registerShapedRecipe("impetus_generator", "IMPETUS_GENERATOR@2", 100, [
	<aspect:ignis> * 1,
	<aspect:aer> * 1,
	<aspect:ordo> * 1,
	<aspect:perditio> * 1
], 
<thaumicaugmentation:impetus_generator>, 
[
	[<thaumcraft:stone_eldritch_tile>, <ore:dustRedstone>, <thaumcraft:stone_eldritch_tile>], 
	[<thaumcraft:nugget:10>, <betweenlandsredstone:scabyst_piston>, <thaumcraft:nugget:10>], 
	[<thaumcraft:stone_eldritch_tile>, <thaumicaugmentation:material:5>, <thaumcraft:stone_eldritch_tile>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:vis_generator>);
recipes.remove(<thaumcraft:vis_generator>);
ArcaneWorkbench.registerShapedRecipe("visgenerator", "VISGENERATOR@2", 25, [
	<aspect:ignis> * 1,
	<aspect:ordo> * 1
], 
<thaumcraft:vis_generator>, 
[
	[<ore:plankWood>, <ore:dustRedstone>, <ore:plankWood>], 
	[<thaumcraft:nugget:10>, <betweenlandsredstone:scabyst_piston>, <thaumcraft:nugget:10>], 
	[<ore:plankWood>, <thaumcraft:vis_resonator>, <ore:plankWood>]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_complex>);
recipes.remove(<thaumcraft:mechanism_complex>);
ArcaneWorkbench.registerShapedRecipe("mechanism_complex", "BASEARTIFICE@1", 50, [
	<aspect:ignis> * 1,
	<aspect:aqua> * 1
], 
<thaumcraft:mechanism_complex>, 
[
	[null, <thaumcraft:mechanism_simple>, null], 
	[<ore:plateThaumium>, <betweenlandsredstone:scabyst_piston>, <ore:plateThaumium>], 
	[null, <thaumcraft:mechanism_simple>, null]
]);


ArcaneWorkbench.registerShapedRecipe("sharing_tome", "FIRSTSTEPS@0", 50, [
	<aspect:ignis> * 1,
	<aspect:aqua> * 1,
	<aspect:terra> * 1,
	<aspect:ordo> * 1,
	<aspect:perditio> * 1,
	<aspect:aer> * 1
], 
<sharetome:sharing_tome>, 
[
	[null, <thaumcraft:fabric>, null], 
	[<thaumcraft:fabric>, <thaumcraft:thaumonomicon>, <thaumcraft:fabric>], 
	[null, <thaumcraft:fabric>, null]
]);

ArcaneWorkbench.removeRecipe(<thaumcraft:hungry_chest>);
ArcaneWorkbench.registerShapedRecipe("hungry_chest", "HUNGRYCHEST@2", 15, [
	<aspect:aqua> * 1,
	<aspect:terra> * 1
], 
<thaumcraft:hungry_chest>, 
[
	[<thaumcraft:plank_greatwood>, <ore:trapdoorWood>, <thaumcraft:plank_greatwood>], [<thaumcraft:plank_greatwood>, <mcwfurnitures:iron_handle>, <thaumcraft:plank_greatwood>], 
	[<thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>]
]);


ArcaneWorkbench.removeRecipe(<thaumcraft:banner_white>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_orange>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_magenta>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_lightblue>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_yellow>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_lime>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_pink>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_gray>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_silver>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_cyan>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_purple>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_blue>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_brown>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_green>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_red>);
ArcaneWorkbench.removeRecipe(<thaumcraft:banner_black>);

ArcaneWorkbench.registerShapedRecipe("bannerwhite", "BASEINFUSION", 10, [
], 
<thaumcraft:banner_white>, 
[
	[<thebetweenlands:shelf_fungus>, <ore:stickWood>], 
	[<thebetweenlands:shelf_fungus>, <ore:stickWood>], 
	[<thebetweenlands:shelf_fungus>, <ore:slabWood>]
]);

//recipes.remove(<arcanearchives:radiant_chest>);
//ArcaneWorkbench.registerShapedRecipe("radiant_chest", "", 10, [
//	<aspect:terra>,
//	<aspect:aer>,
//	<aspect:ignis>,
//	<aspect:aqua>,
//	<aspect:ordo>,
//	<aspect:perditio>,
//], 
//<arcanearchives:radiant_chest>, 
//[
//	[<ore:plankWood>, <ore:plateOctine>, <ore:plankWood>], 
//	[<ore:plankWood>, <arcanearchives:raw_quartz>, <ore:plankWood>], 	
//	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
//]);

ArcaneWorkbench.registerShapedRecipe("manifest", "FIRSTSTEPS@2", 25, [
	<aspect:terra>,
	<aspect:aer>,
	<aspect:ignis>,
	<aspect:aqua>,
	<aspect:ordo>,
	<aspect:perditio>,
], 
<arcanearchives:manifest>, 
[
	[<arcanearchives:radiant_dust>, <thebetweenlands:items_misc:32>, <arcanearchives:radiant_dust>], 
	[<thebetweenlands:items_misc:32>, <minecraft:dye:0>, <thebetweenlands:items_misc:32>], 
	[<arcanearchives:radiant_dust>, <thebetweenlands:items_misc:32>, <arcanearchives:radiant_dust>]
]);

/*
ArcaneWorkbench.registerShapedRecipe("letter_invitation", "", 25, [
	<aspect:terra>,
	<aspect:aer>,
	<aspect:ignis>,
	<aspect:aqua>,
	<aspect:ordo>,
	<aspect:perditio>,
], 
<arcanearchives:letter_invitation>, 
[
	[<arcanearchives:radiant_dust>, <thebetweenlands:items_misc:32>, <arcanearchives:radiant_dust>], 
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_crushed:45>, <thebetweenlands:items_misc:32>], 
	[<arcanearchives:radiant_dust>, <thebetweenlands:items_misc:32>, <arcanearchives:radiant_dust>]
]);

ArcaneWorkbench.registerShapedRecipe("letter_resignation", "", 25, [
	<aspect:terra>,
	<aspect:aer>,
	<aspect:ignis>,
	<aspect:aqua>,
	<aspect:ordo>,
	<aspect:perditio>,
], 
<arcanearchives:letter_resignation>, 
[
	[<arcanearchives:radiant_dust>, <thebetweenlands:items_misc:32>, <arcanearchives:radiant_dust>], 
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_crushed:28>, <thebetweenlands:items_misc:32>], 
	[<arcanearchives:radiant_dust>, <thebetweenlands:items_misc:32>, <arcanearchives:radiant_dust>]
]);

ArcaneWorkbench.registerShapedRecipe("writ_expulsion", "", 25, [
	<aspect:terra>,
	<aspect:aer>,
	<aspect:ignis>,
	<aspect:aqua>,
	<aspect:ordo>,
	<aspect:perditio>,
], 
<arcanearchives:writ_expulsion>, 
[
	[<arcanearchives:radiant_dust>, <thebetweenlands:items_misc:32>, <arcanearchives:radiant_dust>], 
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_crushed:45>, <thebetweenlands:items_misc:32>], 
	[<arcanearchives:radiant_dust>, <thebetweenlands:items_misc:32>, <arcanearchives:radiant_dust>]
]);
*/

recipes.remove(<arcanearchives:lectern_manifest>);
ArcaneWorkbench.registerShapedRecipe("lectern_manifest", "", 50, [
	<aspect:terra>,
	<aspect:aer>,
	<aspect:ignis>,
	<aspect:aqua>,
	<aspect:ordo>,
	<aspect:perditio>,
], 
<arcanearchives:lectern_manifest>, 
[
	[null, <arcanearchives:manifest>, null], 
	[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], 
	[<ore:stickWood>, null, <ore:stickWood>]
]);

ArcaneWorkbench.removeRecipe(<mystgears:vis_motor>);
ArcaneWorkbench.registerShapedRecipe("recipe_vis_motor", "VISMOTOR@2", 25, [
	<aspect:ordo>
], 
<mystgears:vis_motor>, 
[
	[<ore:plankWood>, <thaumcraft:vis_resonator>, <ore:plankWood>], 
	[<ore:nuggetSyrmorite>, <mysticalmechanics:axle_iron>, <ore:nuggetSyrmorite>]
]);

recipes.remove(<thaumcraft:grapple_gun_tip>);
ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun_tip>);
ArcaneWorkbench.registerShapedRecipe("grappleguntip", "GRAPPLEGUN@2", 25, [
	<aspect:terra>
], 
<thaumcraft:grapple_gun_tip>, 
[
	[<ore:plateBrass>, <thaumcraft:nugget:10>, <ore:plateBrass>], 
	[<thaumcraft:nugget:10>, <betweenlandsredstone:scabyst_tripwire_hook>, <thaumcraft:nugget:10>], 
	[<ore:plateBrass>, <thaumcraft:nugget:10>, <ore:plateBrass>]
]);






// ARCANE WORKBENCH - SHAPELESS
ArcaneWorkbench.removeRecipe("sealblank");
ArcaneWorkbench.registerShapelessRecipe("sealblank", "CONTROLSEALS@1", 20, [
	<aspect:aer>,
], 
<thaumcraft:seal> * 3, 
[<thebetweenlands:mud>, <growthcraft_bees:bees_wax:*>, <ore:dyeRed>, <ore:nitor>]);

recipes.remove(<thaumcraft:inlay>);
ArcaneWorkbench.removeRecipe("redstoneinlay");
ArcaneWorkbench.registerShapelessRecipe("redstoneinlay", "CONTROLSEALS@1", 25, [
	<aspect:aqua>,
], 
<thaumcraft:inlay> * 2, 
	[<ore:dustRedstone>, <thebetweenlands:octine_ingot>]
);

ArcaneWorkbench.removeRecipe("thaumicaugmentation:strength_provider_experience");
ArcaneWorkbench.registerShapelessRecipe("strength_provider_experience", "EXPERIENCE_MODIFIER", 15, [
	<aspect:ordo>,
], 
<thaumicaugmentation:augment_builder_power>.withTag({id: "thaumicaugmentation:strength_experience"}), 
	[<thaumcraft:vis_resonator>, <ore:middleGems>, <ore:middleGems>, <minecraft:dye:4>]
);

ArcaneWorkbench.removeRecipe(<thaumcraft:tube_valve>);
ArcaneWorkbench.registerShapelessRecipe("tubevalve", "TUBES@2", 10, [
], 
<thaumcraft:tube_valve>, 
	[<thaumcraft:tube>, <ore:lever>]
);

ArcaneWorkbench.removeRecipe(<thaumcraft:activator_rail>);
ArcaneWorkbench.registerShapelessRecipe("activator_rail", "", 10, [
], 
<thaumcraft:activator_rail>, 
	[<betweenlandsredstone:scabyst_activator_rail>]
);

ArcaneWorkbench.registerShapelessRecipe("caminite_blend", "", 2, [
	<aspect:ignis>,
	<aspect:terra>
], <embers:blend_caminite> * 4, 
	[<roots:runic_dust>, <pyrotech:material:4>, <pyrotech:material:4>, <pyrotech:material:4>]
);




// SALIS MUNDUS
SalisMundus.removeSingleConversion(<thaumcraft:crucible>);
SalisMundus.addSingleConversion(<growthcraft_cellar:brew_kettle>, <thaumcraft:crucible>);
SalisMundus.addSingleConversion(<thaumcraft:leaves_silverwood>, <teastory:tea_seeds>);



// CAULDRON
Crucible.removeRecipe(<thaumcraft:cluster:0>);
Crucible.removeRecipe(<thaumcraft:cluster:1>);
Crucible.removeRecipe(<thaumcraft:cluster:2>);
Crucible.removeRecipe(<thaumcraft:cluster:3>);
Crucible.removeRecipe(<thaumcraft:tallow>);
Crucible.removeRecipe(<minecraft:gunpowder>);
Crucible.removeRecipe(<minecraft:slime_ball>);
Crucible.removeRecipe(<minecraft:dye>);
Crucible.removeRecipe(<minecraft:glowstone_dust>);
Crucible.removeRecipe(<minecraft:clay_ball>);
Crucible.removeRecipe(<minecraft:string>);
Crucible.removeRecipe(<minecraft:lava_bucket>);
Crucible.removeRecipe(<congregamystica:cluster_aluminum>);
Crucible.removeRecipe(<congregamystica:cluster_nickel>);

/*
Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
Crucible.registerRecipe("nitor", "UNLOCKALCHEMY@3", <thaumcraft:nitor_yellow>, <embers:crystal_ember>, [
	<aspect:ignis> * 10, 
	<aspect:lux> * 10, 
	<aspect:potentia> * 10
]);
*/


Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
Crucible.registerRecipe("nitor", "UNLOCKALCHEMY@3", <thaumcraft:nitor_yellow>, <thebetweenlands:wisp>, [
	<aspect:ignis> * 10, 
	<aspect:lux> * 10, 
	<aspect:potentia> * 10
]);


Crucible.removeRecipe(<thaumcraft:alumentum>);
Crucible.registerRecipe("alumentum", "ALUMENTUM@2", <thaumcraft:alumentum>, <thebetweenlands:items_misc:18>, [
	<aspect:potentia> * 10,
	<aspect:ignis> * 10, 
	<aspect:perditio> * 5, 
]);


Crucible.removeRecipe(<thaumcraft:ingot>);
Crucible.registerRecipe("thaumiumingot", "METALLURGY@2", <thaumcraft:ingot>, <thebetweenlands:items_misc:11>, [
	<aspect:praecantatio> * 5, 
	<aspect:terra> * 5, 
]);


Crucible.removeRecipe(<minecraft:leather>);
Crucible.registerRecipe("hedge_leather", "HEDGEALCHEMY@1", <thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:56>, [
	<aspect:aer> * 3, 
	<aspect:bestia> * 3, 
]);


Crucible.removeRecipe(<thaumcraft:everfull_urn>);
Crucible.registerRecipe("everfullurn", "EVERFULLURN", <thaumcraft:everfull_urn>, <thebetweenlands:mud_flower_pot>, [
	<aspect:aqua> * 30,
	<aspect:fabrico> * 10,
	<aspect:terra> * 10,
]);


Crucible.removeRecipe("liquiddeath");
Crucible.removeRecipe(<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "liquid_death", Amount: 1000}}));
/*
Crucible.registerRecipe("liquiddeath", "LIQUIDDEATH", <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "liquid_death", Amount: 1000}}), <thebetweenlands:bl_bucket:1>, [
	<aspect:alkimia> * 20,
	<aspect:mortuus> * 100,
	<aspect:perditio> * 50,
]);
*/


Crucible.removeRecipe(<thaumcraft:sanity_soap>);
Crucible.registerRecipe("SaneSoap", "SANESOAP@2", <thaumcraft:sanity_soap>, <thebetweenlands:fumigant>, [
	<aspect:cognitio> * 75, 
	<aspect:ordo> * 75, 
	<aspect:alienis> * 50, 
	<aspect:victus> * 50
]);

Crucible.removeRecipe(<thaumcraft:ingot:2>);
Crucible.registerRecipe("brassingot", "METALLURGY@1", <thaumcraft:ingot:2>, <ore:ingotOctine>, [
	<aspect:instrumentum> * 5
]);




// INFUSION
Infusion.removeRecipe(<thaumicaugmentation:thaumostatic_harness>);
Infusion.removeRecipe(<thaumicaugmentation:thaumostatic_harness_augment>);
Infusion.removeRecipe(<thaumicaugmentation:thaumostatic_harness_augment:1>);
Infusion.removeRecipe(<thaumicaugmentation:elytra_harness_augment>);
Infusion.removeRecipe(<thaumicaugmentation:elytra_harness>);

Infusion.removeRecipe("cloudring");
Infusion.registerRecipe("cloudring", "CLOUDRING", <thaumcraft:cloud_ring>, 1, [
	<aspect:aer> * 50, 
], 
<thaumcraft:baubles:1>, 
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <ore:feather>]);



Infusion.removeRecipe("curiosityband");
Infusion.registerRecipe("curiosityband", "CURIOSITYBAND", <thaumcraft:curiosity_band>, 5, [
	<aspect:cognitio> * 150, 
	<aspect:vinculum> * 100, 
	<aspect:vacuos> * 50, 
], 
<thaumcraft:baubles:6>, 
[<minecraft:writable_book>, <ore:middleGems>, <minecraft:writable_book>, <ore:middleGems>, <minecraft:writable_book>, <ore:middleGems>, <minecraft:writable_book>, <ore:middleGems>]);


Infusion.removeRecipe("verdantheartlife");
Infusion.registerRecipe("verdantheartlife", "VERDANTCHARMS", <thaumcraft:verdant_charm>.withTag({type: 1 as byte}), 5, [
	<aspect:victus> * 80, 
	<aspect:humanus> * 80,
], 
<thaumcraft:verdant_charm>, 
[<thebetweenlands:spirit_fruit>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}), <thebetweenlands:wight_heart>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "humanus"}]})]);

Infusion.removeRecipe("verdantheartsustain");
Infusion.registerRecipe("verdantheartsustain", "VERDANTCHARMS", <thaumcraft:verdant_charm>.withTag({type: 2 as byte}), 5, [
	<aspect:desiderium> * 80, 
	<aspect:aer> * 80,
], 
<thaumcraft:verdant_charm>, 
[<pizzacraft:slice_9>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "desiderium"}]}), <thebetweenlands:wight_heart>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]})]);

Infusion.removeRecipe("verdantheart");
Infusion.registerRecipe("verdantheart", "VERDANTCHARMS", <thaumcraft:verdant_charm>, 5, [
	<aspect:victus> * 60, 
	<aspect:herba> * 60,
	<aspect:ordo> * 30,
], 
<thaumcraft:baubles:4>, 
[<thaumcraft:nugget:10>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}), <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "liquid_milk", Amount: 1000}}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]})]);


Infusion.removeRecipe("bootstraveller");
Infusion.registerRecipe("bootstraveller", "BOOTSTRAVELLER", <thaumcraft:traveller_boots>, 1, [
	<aspect:volatus> * 100, 
	<aspect:motus> * 100,
], 
<thaumcraft:cloth_boots:*>, 
[
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),
	<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),
	<thaumcraft:fabric>, 
	<thaumcraft:fabric>,
	<ore:feather>,
	<thebetweenlands:items_misc:21>
]);


Infusion.removeRecipe("thaumiumfortresshelm");
Infusion.registerRecipe("thaumiumfortresshelm", "ARMORFORTRESS", <thaumcraft:fortress_helm>, 3, [
	<aspect:metallum> * 50,
	<aspect:potentia> * 25,
	<aspect:praemunio> * 20,
], 
<thaumcraft:thaumium_helm:*>, 
[
	<thaumcraft:plate:2>,
	<thaumcraft:plate:2>,
	<thebetweenlands:octine_ingot>,
	<thebetweenlands:octine_ingot>,
	<ore:middleGems>,
]);


Infusion.removeRecipe("thaumiumfortresschest");
Infusion.registerRecipe("thaumiumfortresschest", "ARMORFORTRESS", <thaumcraft:fortress_chest>, 3, [
	<aspect:metallum> * 50,
	<aspect:praemunio> * 30,
	<aspect:potentia> * 25,
], 
<thaumcraft:thaumium_chest:*>, 
[
	<thaumcraft:plate:2>,
	<thaumcraft:plate:2>,
	<thaumcraft:plate:2>,
	<thaumcraft:plate:2>,
	<thebetweenlands:octine_ingot>,
	<ore:leather>
]);


Infusion.removeRecipe("thaumiumfortresslegs");
Infusion.registerRecipe("thaumiumfortresslegs", "ARMORFORTRESS", <thaumcraft:fortress_legs>, 3, [
	<aspect:metallum> * 50,
	<aspect:praemunio> * 25,
	<aspect:potentia> * 25,
], 
<thaumcraft:thaumium_legs:*>, 
[
	<thaumcraft:plate:2>,
	<thaumcraft:plate:2>,
	<thaumcraft:plate:2>,
	<thebetweenlands:octine_ingot>,
	<ore:leather>
]);

recipes.remove(<arcanearchives:gemcutters_table>);
Infusion.registerRecipe("gemcuttertable", "BASEINFUSION", <arcanearchives:gemcutters_table>, 5, [
	<aspect:fabrico> * 25,
	<aspect:praecantatio> * 100,
	<aspect:permutatio> * 50,
], 
<thebetweenlands:weedwood_workbench>, 
[
	<thebetweenlands:log_spirit_tree:*>,
	<thebetweenlands:log_spirit_tree:*>,
	<thebetweenlands:log_spirit_tree:*>,
	<arcanearchives:storage_raw_quartz>,
	<arcanearchives:storage_raw_quartz>,
	<thebetweenlands:polished_dentrothyst_pane:1>,
	<embers:focal_lens>,
	<thebetweenlands:valonite_block>
]);

/*
Infusion.registerRecipe("corrupted_bone_wayfinder_cragrock", "BASEINFUSION", <bladditions:corrupted_bone_wayfinder>.withTag({dimension: 21}), 1, [
	<aspect:fabrico> * 25,
	<aspect:praecantatio> * 25,
	<aspect:permutatio> * 25,
], 
<contenttweaker:inert_boneway_finder>, 
[
	<thaumcraft:salis_mundus>,
	<thebetweenlands:wisp>,
	<thaumcraft:salis_mundus>,
	<thebetweenlands:wisp>
]);
*/

recipes.remove(<pyrotech:wither_forge>);
Infusion.registerRecipe("wither_forge", "GOINGHOME@2", <pyrotech:wither_forge>, 5, [
	<aspect:ignis> * 100,
	<aspect:praecantatio> * 100,
	<aspect:permutatio> * 100,
], 
<pyrotech:bloomery>, 
[
	<roots:infernal_bulb>,
	<embers:wildfire_core>,
	<thaumcraft:plate:3>,
	<thebetweenlands:items_misc:24>,
	<roots:infernal_bulb>,
	<embers:wildfire_core>,
	<thaumcraft:plate:3>,
	<arcanearchives:containment_field>
]);

Infusion.registerRecipe("sludgeon_wayfinder", "BASEINFUSION", <bladditions:corrupted_bone_wayfinder>.withTag({dimension: 23}), 5, [
	<aspect:permutatio> * 30,
	<aspect:perditio> * 50,
	<aspect:vinculum> * 20,
], 
<contenttweaker:inert_boneway_finder>, 
[
	<thebetweenlands:dentrothyst:1>,
	<thebetweenlands:mud_tower_brazier>,
	<thebetweenlands:ancient_remnant_block>,
	<thebetweenlands:items_misc:44>
]);

Infusion.registerRecipe("hemp_seed", "GOINGHOME@3", <immersiveengineering:seed>, 5, [
	<aspect:herba> * 100,
	<aspect:permutatio> * 100,
], 
<thebetweenlands:aspectrus_seeds>, 
[
	<thebetweenlands:swamp_reed_item>,
	<minecraft:iron_ingot>,
	<thebetweenlands:swamp_reed_item>,
	<thaumcraft:salis_mundus>,
	<thebetweenlands:swamp_reed_item>,
	<minecraft:iron_ingot>,
	<thebetweenlands:swamp_reed_item>,
	<thaumcraft:salis_mundus>
]);

// INFERNAL FURNACE
SmeltingBonus.removeSmeltingBonus(<ore:oreLead>, <thaumcraft:nugget:4>);
SmeltingBonus.removeSmeltingBonus(<ore:oreSilver>, <thaumcraft:nugget:3>);
SmeltingBonus.removeSmeltingBonus(<ore:oreTin>, <thaumcraft:nugget:2>);
SmeltingBonus.removeSmeltingBonus(<ore:oreCopper>, <thaumcraft:nugget:1>);

SmeltingBonus.removeSmeltingBonus(<ore:clusterLead>, <thaumcraft:nugget:4>);
SmeltingBonus.removeSmeltingBonus(<ore:clusterSilver>, <thaumcraft:nugget:3>);
SmeltingBonus.removeSmeltingBonus(<ore:clusterTin>, <thaumcraft:nugget:2>);
SmeltingBonus.removeSmeltingBonus(<ore:clusterCopper>, <thaumcraft:nugget:1>);

SmeltingBonus.addSmeltingBonus(<ore:oreLead>, <embers:nugget_lead> % 5);
SmeltingBonus.addSmeltingBonus(<ore:oreSilver>, <embers:nugget_silver> % 5);

SmeltingBonus.addSmeltingBonus(<ore:clusterLead>, <embers:nugget_lead> % 10);
SmeltingBonus.addSmeltingBonus(<ore:clusterSilver>, <embers:nugget_silver> % 10);

SmeltingBonus.addSmeltingBonus(<pyrotech:material:4>, <embers:blend_caminite> % 5);



// NAME CHANGES
<thaumcraft:brain>.displayName = "Moldy Brain";
<thaumcraft:nugget:9>.displayName = "Dentrothyst Sliver";
<thaumcraft:redstone_relay>.displayName = "Bluedust Relay";
<thaumicaugmentation:key>.displayName = "Syrmorite Key";