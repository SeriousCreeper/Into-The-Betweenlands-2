import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.SmeltingBonus;



recipes.remove(<thaumcraft:nugget:1>);
recipes.remove(<thaumcraft:nugget:2>);
recipes.remove(<thaumcraft:nugget:3>);
recipes.remove(<thaumcraft:nugget:4>);

recipes.remove(<thaumcraft:plate:1>);
<ore:plateIron>.remove(<thaumcraft:plate:1>);

recipes.remove(<thaumcraft:salis_mundus>);
recipes.addShapeless("salismundus", <thaumcraft:salis_mundus>, [<thebetweenlands:items_misc:22>.reuse(), <thebetweenlands:items_misc:14>.reuse(), <coloredredstone:colored_redstone_dust:12>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>]);

recipes.remove(<thaumcraft:nugget:9>);
recipes.addShaped(<thaumcraft:nugget:9> * 9, [[<thebetweenlands:dentrothyst_shard_orange> | <thebetweenlands:dentrothyst_shard_green>]]);

recipes.remove(<thaumcraft:table_wood>);
recipes.addShaped("tablewood", <thaumcraft:table_wood>, [
	[<thaumcraft:slab_greatwood>, <thaumcraft:slab_greatwood>, <thaumcraft:slab_greatwood>], 
	[<thaumcraft:plank_greatwood>, null, <thaumcraft:plank_greatwood>]
]);

recipes.remove(<thaumcraft:phial>);
recipes.addShaped("phial", <thaumcraft:phial> * 8, [
	[null, <thebetweenlands:items_misc:23>, null], 
	[<thebetweenlands:silt_glass>, null, <thebetweenlands:silt_glass>], 
	[null, <thebetweenlands:silt_glass>, null]
]);


recipes.remove(<thaumcraft:scribing_tools>);
recipes.addShapeless("scribingtoolscraft1", <thaumcraft:scribing_tools>, [<thaumcraft:phial>, <minecraft:dye>, <thebetweenlands:items_misc:3>]);
recipes.addHiddenShaped("scribingtoolscraft1_shaped", <thaumcraft:scribing_tools>, [[<thaumcraft:phial>, <minecraft:dye>, <thebetweenlands:items_misc:3>]]);
recipes.addShapeless("scribingtoolsrefill", <thaumcraft:scribing_tools>, [<thaumcraft:scribing_tools:*>, <minecraft:dye>]);

recipes.remove(<thaumcraft:stone_arcane>);
recipes.addShaped("stonearcane", <thaumcraft:stone_arcane> * 9, [
	[<thebetweenlands:pitstone>, <thebetweenlands:pitstone>, <thebetweenlands:pitstone>], 
	[<thebetweenlands:pitstone>, <thaumcraft:crystal_essence>, <thebetweenlands:pitstone>], 
	[<thebetweenlands:pitstone>, <thebetweenlands:pitstone>, <thebetweenlands:pitstone>]
]);


recipes.remove(<thaumcraft:arcane_ear_toggle>);
recipes.addShapeless("arcaneeartoggle", <thaumcraft:arcane_ear_toggle>, [<thaumcraft:arcane_ear>, <ore:lever>]);

recipes.remove(<thaumcraft:table_stone>);
recipes.addShaped("tablestone", <thaumcraft:table_stone>, [
	[<thebetweenlands:smooth_cragrock_slab>, <thebetweenlands:smooth_cragrock_slab>, <thebetweenlands:smooth_cragrock_slab>], 
	[<thebetweenlands:smooth_cragrock>, null, <thebetweenlands:smooth_cragrock>]
]);

recipes.remove(<thaumcraft:baubles:5>);
recipes.addShaped("baubleringfancy", <thaumcraft:baubles:5>, [
	[<thebetweenlands:items_misc:42>, <thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:42>], 
	[<thebetweenlands:items_misc:42>, null, <thebetweenlands:items_misc:42>], 
	[<thebetweenlands:items_misc:42>, <thebetweenlands:items_misc:42>, <thebetweenlands:items_misc:42>]
]);

recipes.remove(<thaumcraft:baubles:4>);
recipes.addShaped("baubleamuletfancy", <thaumcraft:baubles:4>, [
	[null, <ore:string>, null], 
	[<ore:string>, <thebetweenlands:items_misc:19>, <ore:string>], 
	[null, <thebetweenlands:octine_ingot>, null]
]);

recipes.remove(<thaumcraft:baubles:6>);
recipes.addShaped("baublegirdlefancy", <thaumcraft:baubles:6>, [
	[null, <thebetweenlands:items_misc:4>, null], 
	[<thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:19>, <thebetweenlands:items_misc:4>], 
	[null, <thebetweenlands:octine_ingot>, null]
]);

recipes.remove(<thaumcraft:golem_bell>);
recipes.addShaped("golembell", <thaumcraft:golem_bell>, [
	[null, <ore:dentrothystShard>, <ore:dentrothystShard>], 
	[null, <ore:dentrothystShard>, <ore:dentrothystShard>], 
	[<ore:stickWood>, null, null]
]);


recipes.remove(<thaumicaugmentation:material:4>);
recipes.addShaped("harness_base", <thaumicaugmentation:material:4>, [
	[<ore:plateBrass>], 
	[<thebetweenlands:lurker_skin_chestplate:*>], 
	[<thaumcraft:baubles:2>]
]);

recipes.remove(<thaumcraft:vis_generator>);
recipes.remove(<thaumicaugmentation:impetus_generator>);

recipes.remove(<thaumcraft:label>);
recipes.addShapeless("thaumcraft_jarlabel", <thaumcraft:label> * 4, 
	[<ore:dyeBlack>, 
	<roots:strange_ooze> | <thebetweenlands:sludge_ball> | <thebetweenlands:sap_spit> | <thebetweenlands:sludge_ball>, 
	<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
);
recipes.addShapeless("thaumcraft_jarlabelnull", <thaumcraft:label>, 
	[<thaumcraft:label:1>]
);

recipes.remove(<thaumcraft:plate:*>);
recipes.addShapeless("brassplate", <thaumcraft:plate:0>, 
	[<ore:ingotBrass>, <ore:ingotBrass>, <immersiveengineering:tool:*>.transformDamage(1)]
);
recipes.addShapeless("thaumiumplate", <thaumcraft:plate:2>, 
	[<ore:ingotThaumium>, <ore:ingotThaumium>, <immersiveengineering:tool:*>.transformDamage(1)]
);
recipes.addShapeless("voidplate", <thaumcraft:plate:3>, 
	[<ore:ingotVoid>, <ore:ingotVoid>, <immersiveengineering:tool:*>.transformDamage(1)]
);

recipes.addShapeless(<thaumcraft:banner_white>, [<ore:banner>, <minecraft:dye:15>]);
recipes.addShapeless(<thaumcraft:banner_orange>, [<ore:banner>, <minecraft:dye:14>]);
recipes.addShapeless(<thaumcraft:banner_magenta>, [<ore:banner>, <minecraft:dye:13>]);
recipes.addShapeless(<thaumcraft:banner_lightblue>, [<ore:banner>, <minecraft:dye:12>]);
recipes.addShapeless(<thaumcraft:banner_yellow>, [<ore:banner>, <minecraft:dye:11>]);
recipes.addShapeless(<thaumcraft:banner_lime>, [<ore:banner>, <minecraft:dye:10>]);
recipes.addShapeless(<thaumcraft:banner_pink>, [<ore:banner>, <minecraft:dye:9>]);
recipes.addShapeless(<thaumcraft:banner_gray>, [<ore:banner>, <minecraft:dye:8>]);
recipes.addShapeless(<thaumcraft:banner_silver>, [<ore:banner>, <minecraft:dye:7>]);
recipes.addShapeless(<thaumcraft:banner_cyan>, [<ore:banner>, <minecraft:dye:6>]);
recipes.addShapeless(<thaumcraft:banner_purple>, [<ore:banner>, <minecraft:dye:5>]);
recipes.addShapeless(<thaumcraft:banner_blue>, [<ore:banner>, <minecraft:dye:4>]);
recipes.addShapeless(<thaumcraft:banner_brown>, [<ore:banner>, <minecraft:dye:3>]);
recipes.addShapeless(<thaumcraft:banner_green>, [<ore:banner>, <minecraft:dye:2>]);
recipes.addShapeless(<thaumcraft:banner_red>, [<ore:banner>, <minecraft:dye:1>]);
recipes.addShapeless(<thaumcraft:banner_black>, [<ore:banner>, <minecraft:dye:0>]);



// ARCANE WORKBENCH - SHAPED
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


ArcaneWorkbench.removeRecipe("vis_resonator");
ArcaneWorkbench.registerShapedRecipe("vis_resonator", "UNLOCKAUROMANCY@2", 50, [
	<aspect:aer>, 
	<aspect:aqua>, 
], 
<thaumcraft:vis_resonator>, 
[
	[<ore:plateIron>, <ore:dentrothystShard>]
]);


ArcaneWorkbench.removeRecipe("enchantedfabric");
ArcaneWorkbench.registerShapedRecipe("enchantedfabric", "UNLOCKINFUSION@2", 5, [
], 
<thaumcraft:fabric>, 
[
	[null, <ore:string>, null], 
	[<ore:string>, <thebetweenlands:shelf_fungus>, <ore:string>], 
	[null, <ore:string>, null]
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
	[<ore:plateBrass>, <thebetweenlands:bl_bucket:1>, <ore:plateBrass>], 
	[<thaumcraft:plank_greatwood>, <thaumcraft:filter>, <thaumcraft:plank_greatwood>]
]);


ArcaneWorkbench.removeRecipe("resonator");
ArcaneWorkbench.registerShapedRecipe("resonator", "ESSENTIASMELTER@3", 50, [
], 
<thaumcraft:resonator>, 
[
	[<ore:plateIron>, null, <ore:plateIron>], 
	[<ore:plateIron>, <ore:dentrothystShard>, <ore:plateIron>], 
	[null, <ore:stickWood>, null]
]);


ArcaneWorkbench.removeRecipe("goggles");
ArcaneWorkbench.registerShapedRecipe("goggles", "UNLOCKARTIFICE@2", 50, [
], 
<thaumcraft:goggles>, 
[
	[<thebetweenlands:items_misc:4>, <ore:ingotBrass>, <thebetweenlands:items_misc:4>], 
	[<thebetweenlands:items_misc:4>, null, <thebetweenlands:items_misc:4>], 
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
	[<coloredredstone:colored_redstone_torch_item:12>, <thaumcraft:mechanism_simple>, <coloredredstone:colored_redstone_torch_item:12>], 
	[<thebetweenlands:smooth_cragrock_slab>, <thebetweenlands:smooth_cragrock_slab>, <thebetweenlands:smooth_cragrock_slab>]
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
	[<ore:slabWood>, <coloredredstone:colored_redstone_dust:12>, <ore:slabWood>]
]);



recipes.remove(<thaumcraft:bellows>);
ArcaneWorkbench.removeRecipe("bellows");
ArcaneWorkbench.registerShapedRecipe("bellows", "BELLOWS@2", 25, [
	<aspect:aer>,
], 
<thaumcraft:bellows>, 
[
	[<ore:plankWood>, <ore:plankWood>, null], 
	[<thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:11>], 
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
	[<ore:plateIron>, <thaumcraft:slab_arcane_stone>, <ore:plateIron>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:vis_resonator>, <thaumcraft:stone_arcane>], 
	[<thebetweenlands:octine_ingot>, <thaumcraft:table_stone>, <thebetweenlands:octine_ingot>]
]);


recipes.remove(<thaumcraft:caster_basic>);
ArcaneWorkbench.removeRecipe("caster_basic");
ArcaneWorkbench.registerShapedRecipe("caster_basic", "BELLOWS@1", 100, [
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
	[<thebetweenlands:items_misc:4>, <thaumcraft:vis_resonator>, <thebetweenlands:items_misc:4>], 
	[<thebetweenlands:items_misc:4>, <thaumcraft:thaumometer>, <thebetweenlands:items_misc:4>]
]);


recipes.remove(<thaumcraft:focus_pouch>);
ArcaneWorkbench.removeRecipe("focuspouch");
ArcaneWorkbench.registerShapedRecipe("focuspouch", "FOCUSPOUCH@2", 25, [
], 
<thaumcraft:focus_pouch>, 
[
	[<thebetweenlands:items_misc:4>, <thebetweenlands:octine_ingot>, <thebetweenlands:items_misc:4>], 
	[<thebetweenlands:items_misc:4>, <thaumcraft:baubles:2>, <thebetweenlands:items_misc:4>], 
	[<thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:4>]
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
	[<thebetweenlands:shambler_tongue>, <minecraft:tripwire_hook>, <thebetweenlands:shambler_tongue>], 
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
	[<ore:plateIron>, <thaumcraft:metal_alchemical>, <ore:plateIron>]
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
	[<ore:plateBrass>, <coloredredstone:colored_redstone_comparator_item:12>, <ore:plateBrass>]
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
	[<thebetweenlands:polished_limestone>, <minecraft:iron_bars>, <thebetweenlands:polished_limestone>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:jar_normal>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:mechanism_simple>, <thaumcraft:stone_arcane>]
]);


ArcaneWorkbench.removeRecipe("automatedcrossbow");
ArcaneWorkbench.registerShapedRecipe("automatedcrossbow", "BASICTURRET@2", 100, [
	<aspect:aer>,
], 
<thaumcraft:turret>, 
[
	[<ore:bow>, <thaumcraft:mechanism_simple>, <ore:plateIron>], 
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
	[null, <coloredredstone:colored_redstone_comparator_item:12>, null]
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
	[<thaumcraft:stone_arcane>, <coloredredstone:colored_redstone_dust:12>, <thaumcraft:stone_arcane>]
]);


recipes.remove(<thaumcraft:potion_sprayer>);
ArcaneWorkbench.removeRecipe(<thaumcraft:potion_sprayer>);
ArcaneWorkbench.registerShapedRecipe("potionsprayer", "POTIONSPRAYER@2", 75, [
	<aspect:aqua>,
	<aspect:ignis>,
], 
<thaumcraft:potion_sprayer>, 
[
	[<ore:plateBrass>, <minecraft:dispenser>, <ore:plateBrass>], 
	[<immersiveengineering:metal:39>, <thebetweenlands:infuser>, <immersiveengineering:metal:39>], 
	[<immersiveengineering:metal:39>, <thaumcraft:metal_alchemical>, <immersiveengineering:metal:39>]
]);


ArcaneWorkbench.removeRecipe(<thaumcraft:condenser_lattice>);
ArcaneWorkbench.registerShapedRecipe("condenserlattice", "POTIONSPRAYER@2", 100, [
	<aspect:terra> * 3,
	<aspect:aer> * 3,
], 
<thaumcraft:condenser_lattice>, 
[
	[<ore:dentrothystShard>, <ore:plateThaumium>, <ore:dentrothystShard>], 
	[<ore:dentrothystShard>, <thaumcraft:filter>, <ore:dentrothystShard>], 
	[<ore:dentrothystShard>, <ore:plateThaumium>, <ore:dentrothystShard>]
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

ArcaneWorkbench.registerShapedRecipe("bannerwhite", "POTIONSPRAYER@2", 10, [
], 
<thaumcraft:banner_white>, 
[
	[<thebetweenlands:shelf_fungus>, <ore:stickWood>], 
	[<thebetweenlands:shelf_fungus>, <ore:stickWood>], 
	[<thebetweenlands:shelf_fungus>, <ore:slabWood>]
]);




// ARCANE WORKBENCH - SHAPELESS
ArcaneWorkbench.removeRecipe("sealblank");
ArcaneWorkbench.registerShapelessRecipe("sealblank", "CONTROLSEALS@1", 20, [
	<aspect:aer>,
], 
<thaumcraft:seal> * 3, 
[<thebetweenlands:mud>, <thaumcraft:tallow>, <ore:dyeRed>, <ore:nitor>]);


recipes.remove(<thaumcraft:inlay>);
ArcaneWorkbench.removeRecipe("redstoneinlay");
ArcaneWorkbench.registerShapelessRecipe("redstoneinlay", "CONTROLSEALS@1", 25, [
	<aspect:aqua>,
], 
<thaumcraft:inlay> * 2, 
	[<coloredredstone:colored_redstone_dust:12>, <thebetweenlands:octine_ingot>]
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




// SALIS MUNDUS
SalisMundus.removeSingleConversion(<thaumcraft:crucible>);
SalisMundus.addSingleConversion(<ore:blockSyrmorite>, <thaumcraft:crucible>);



// CAULDRON
Crucible.removeRecipe(<thaumcraft:cluster:0>);
Crucible.removeRecipe(<thaumcraft:cluster:1>);

/*
Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
Crucible.registerRecipe("nitor", "UNLOCKALCHEMY@3", <thaumcraft:nitor_yellow>, <embers:crystal_ember>, [
	<aspect:ignis> * 10, 
	<aspect:lux> * 10, 
	<aspect:potentia> * 10
]);
*/


Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
Crucible.registerRecipe("nitor_2", "UNLOCKALCHEMY@3", <thaumcraft:nitor_yellow>, <thebetweenlands:items_misc:45>, [
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


/*
Crucible.removeRecipe("liquiddeath");
Crucible.registerRecipe("liquiddeath", "LIQUIDDEATH", <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "liquid_death", Amount: 1000}}), <thebetweenlands:bl_bucket:1>, [
	<aspect:alkimia> * 20,
	<aspect:mortuus> * 100,
	<aspect:perditio> * 50,
]);
*/


// INFUSION
Infusion.removeRecipe("cloudring");
Infusion.registerRecipe("cloudring", "CLOUDRING", <thaumcraft:cloud_ring>, 1, [
	<aspect:aer> * 50, 
], 
<thaumcraft:baubles:1>, 
[<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thebetweenlands:items_misc:3>]);



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
[<thaumcraft:triple_meat_treat>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "desiderium"}]}), <thebetweenlands:wight_heart>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]})]);


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
	<thebetweenlands:items_misc:3>,
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




// INFERNAL FURNACE
SmeltingBonus.removeSmeltingBonus(<ore:oreLead>, <thaumcraft:nugget:4>);
SmeltingBonus.removeSmeltingBonus(<ore:oreSilver>, <thaumcraft:nugget:3>);
SmeltingBonus.removeSmeltingBonus(<ore:oreTin>, <thaumcraft:nugget:2>);
SmeltingBonus.removeSmeltingBonus(<ore:oreCopper>, <thaumcraft:nugget:1>);

SmeltingBonus.removeSmeltingBonus(<ore:clusterLead>, <thaumcraft:nugget:4>);
SmeltingBonus.removeSmeltingBonus(<ore:clusterSilver>, <thaumcraft:nugget:3>);
SmeltingBonus.removeSmeltingBonus(<ore:clusterTin>, <thaumcraft:nugget:2>);
SmeltingBonus.removeSmeltingBonus(<ore:clusterCopper>, <thaumcraft:nugget:1>);

SmeltingBonus.addSmeltingBonus(<ore:oreLead>, <immersiveengineering:metal:22> % 10);
SmeltingBonus.addSmeltingBonus(<ore:oreSilver>, <immersiveengineering:metal:23> % 20);
SmeltingBonus.addSmeltingBonus(<ore:oreCopper>, <immersiveengineering:metal:20> % 10);

SmeltingBonus.addSmeltingBonus(<ore:clusterLead>, <immersiveengineering:metal:22> % 20);
SmeltingBonus.addSmeltingBonus(<ore:clusterSilver>, <immersiveengineering:metal:23> % 20);
SmeltingBonus.addSmeltingBonus(<ore:clusterCopper>, <immersiveengineering:metal:20> % 20);



// NAME CHANGES
<thaumcraft:inlay>.displayName = "Bluedust Inlay";
<thaumcraft:redstone_relay>.displayName = "Bluedust Relay";
<thaumcraft:brain>.displayName = "Swamphag Brain";
<thaumcraft:nugget:9>.displayName = "Dentrothyst Sliver";