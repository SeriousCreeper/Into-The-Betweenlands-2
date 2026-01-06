import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.Fermenter;
import mods.immersiveengineering.AlloySmelter;

val itemsToRemove as IItemStack[] = [
	<immersiveengineering:ore>,
	<immersiveengineering:ore:1>,
	<immersiveengineering:ore:2>,
	<immersiveengineering:ore:3>,
	<immersiveengineering:ore:4>,
	<immersiveengineering:ore:5>,
	<immersiveengineering:storage:*>,
	<immersiveengineering:storage_slab:*>,
	<immersiveengineering:stone_decoration:3>,
	<immersiveengineering:material:6>,
	<immersiveengineering:material:7>,
	<immersiveengineering:material:8>,
	<immersiveengineering:material:9>,
	<immersiveengineering:material:17>,
	<immersiveengineering:material:24>,
	<immersiveengineering:metal>,
	<immersiveengineering:metal:1>,
	<immersiveengineering:metal:2>,
	<immersiveengineering:metal:3>,
	<immersiveengineering:metal:4>,
	<immersiveengineering:metal:7>,
	<immersiveengineering:metal:9>,
	<immersiveengineering:metal:10>,
	<immersiveengineering:metal:11>,
	<immersiveengineering:metal:12>,
	<immersiveengineering:metal:13>,
	<immersiveengineering:metal:15>,
	<immersiveengineering:metal:14>,
	<immersiveengineering:metal:16>,
	<immersiveengineering:metal:17>,
	<immersiveengineering:metal:18>,
	<immersiveengineering:metal:19>,
	<immersiveengineering:metal:20>,
	<immersiveengineering:metal:21>,
	<immersiveengineering:metal:22>,
	<immersiveengineering:metal:23>,
	<immersiveengineering:metal:24>,
	<immersiveengineering:metal:27>,
	<immersiveengineering:metal:28>,
	<immersiveengineering:metal:29>,
	<immersiveengineering:metal:30>,
	<immersiveengineering:metal:31>,
	<immersiveengineering:metal:32>,
	<immersiveengineering:metal:33>,
	<immersiveengineering:metal:34>,
	<immersiveengineering:metal:37>,
	<immersiveengineering:metal:40>,
	<immersiveengineering:metal:39>,
	<immersiveengineering:pickaxe_steel>,
	<immersiveengineering:shovel_steel>,
	<immersiveengineering:axe_steel>,
	<immersiveengineering:hoe_steel>,
	<immersiveengineering:sword_steel>,
	<immersiveengineering:metal_device1:3>,
	//<immersiveengineering:metal_device0:5>,
	//<immersiveengineering:metal_device1:6>,
	<immersiveengineering:stone_decoration>,
	<immersiveengineering:stone_decoration:10>,
	<immersiveengineering:stone_decoration_slab>,
	<immersiveengineering:stone_decoration_slab:1>,
	<immersiveengineering:stone_decoration_slab:10>,
	<immersiveengineering:wooden_device0:2>,
	<immersiveengineering:sheetmetal:5>,
	<immersiveengineering:sheetmetal_slab:5>,
	<immersiveengineering:metal:5>,
	<immersiveengineering:metal:14>,
	<immersiveengineering:metal:25>,
	<immersiveengineering:metal:35>,
	<immersiveposts:fence_uranium>,
	<immersiveposts:metal_rods:7>,
	<immersiveposts:fence_copper>,
	<immersiveposts:metal_rods:1>,
	<immersiveengineering:wooden_device1>,
	<immersiveengineering:wooden_device0:0>,
	<immersiveengineering:metal:6>,
	<immersiveengineering:metal:36>,
	<immersiveengineering:metal:26>,
	<immersiveengineering:sheetmetal:3>,
	<immersiveengineering:sheetmetal>,
	<immersiveengineering:sheetmetal:4>,
] as IItemStack[];

for item in itemsToRemove {
	JEI.removeAndHide(item);
	item.removeAspects(allAspects);
}

furnace.remove(<immersiveengineering:metal:0>);
furnace.remove(<immersiveengineering:metal:1>);
furnace.remove(<immersiveengineering:metal:2>);
furnace.remove(<immersiveengineering:metal:3>);
furnace.remove(<immersiveengineering:metal:4>);
furnace.remove(<immersiveengineering:metal:5>);
furnace.remove(<immersiveengineering:metal:6>);
furnace.remove(<immersiveengineering:metal:7>);
furnace.remove(<immersiveengineering:metal:8>);

//recipes.remove(<immersiveengineering:metal:29>);
//recipes.remove(<immersiveengineering:stone_decoration>);

recipes.remove(<immersiveengineering:bullet>);
recipes.remove(<alternatingflux:material>);
recipes.remove(<immersiveengineering:material:20>);
recipes.remove(<immersiveengineering:material:21>);
recipes.remove(<immersiveengineering:material:22>);
recipes.remove(<immersiveengineering:material:23>);
recipes.remove(<immersiveengineering:metal:38>);

//recipes.remove(<immersiveengineering:wooden_device0:2>);
//scripts.utils.addShaped("wooden_devices/workbench", <immersiveengineering:wooden_device0:2>, [
//	[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], 
//	[<thebetweenlands:weedwood_workbench>, null, <ore:fenceTreatedWood>]
//]);

recipes.remove(<immersiveengineering:stone_decoration:1>);
//scripts.utils.addShaped("stone_decoration/blastbrick", <immersiveengineering:stone_decoration:1> * 3, [
//	[<pyrotech:material:5>, <thebetweenlands:items_misc:10>, <pyrotech:material:5>], 
//	[<thebetweenlands:items_misc:10>, <thebetweenlands:wisp>, <thebetweenlands:items_misc:10>], 
//	[<pyrotech:material:5>, <thebetweenlands:items_misc:10>, <pyrotech:material:5>]
//]);

recipes.remove(<immersiveengineering:stone_decoration:8>);
scripts.utils.addShaped("stone_decoration/insulating_glass", <immersiveengineering:stone_decoration:8> * 3, [
	[null, <ore:blockGlass>, null], 
	[<embers:dust_ember>, <thebetweenlands:dye:11> | <minecraft:dye:2>, <embers:dust_ember>], 
	[null, <ore:blockGlass>, null]
]);

recipes.remove(<immersiveengineering:material:1>);
recipes.remove(<immersiveengineering:material:2>);
recipes.remove(<immersiveengineering:material:3>);

recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood_slab_back0");
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood_slab_back1");
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood_slab_back2");

recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick_reinforced");
scripts.utils.addShapeless("stone_decoration/blastbrick_reinforced", <immersiveengineering:stone_decoration:2>, 
	[<ore:plateIron>, <embers:archaic_bricks>]
);

//recipes.remove(<immersiveengineering:material:5>);
scripts.utils.addShaped("material/hemp_fabric", <immersiveengineering:material:5>, [
	[<thebetweenlands:items_misc:63>, <thebetweenlands:items_misc:63>, <thebetweenlands:items_misc:63>],
	[<thebetweenlands:items_misc:63>, <ore:stickWood>, <thebetweenlands:items_misc:63>],
	[<thebetweenlands:items_misc:63>, <thebetweenlands:items_misc:63>, <thebetweenlands:items_misc:63>]
]);

recipes.remove(<immersiveengineering:wooden_device1:3>);
scripts.utils.addShaped("wooden_devices/post", <immersiveengineering:wooden_device1:3>, [
	[<ore:fenceTreatedWood>],
	[<ore:fenceTreatedWood>],
	[<thebetweenlands:cragrock_bricks>]
]);

recipes.remove(<immersiveengineering:metal_decoration2>);
scripts.utils.addShaped("metal_decoration/steel_post", <immersiveengineering:metal_decoration2>, [
	[<ore:fenceSteel>],
	[<ore:fenceSteel>],
	[<thebetweenlands:cragrock_bricks>]
]);

recipes.remove(<immersiveengineering:metal_decoration2:2>);
scripts.utils.addShaped("metal_decoration/aluminum_post", <immersiveengineering:metal_decoration2:2>, [
	[<ore:fenceAluminum>],
	[<ore:fenceAluminum>],
	[<thebetweenlands:cragrock_bricks>]
]);



scripts.utils.addShaped("stamp_wires_raw", <contenttweaker:stamp_wires_raw>, [
	[null, null, <embers:blend_caminite>],
	[<embers:blend_caminite>, null, <embers:blend_caminite>],
	[<embers:blend_caminite>, null, null]
]);

scripts.utils.addShaped("stamp_rod_raw", <contenttweaker:stamp_rod_raw>, [
	[<embers:blend_caminite>, <embers:blend_caminite>, null],
	[<embers:blend_caminite>, null, <embers:blend_caminite>],
	[null, <embers:blend_caminite>, <embers:blend_caminite>]
]);


recipes.remove(<immersiveengineering:wirecoil:*>);
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}));
scripts.utils.addShaped("blueprints/common_cartridges", <immersiveengineering:blueprint>.withTag({blueprint: "bullet"}), [
	[<thebetweenlands:angry_pebble>, <ore:ingotOctine>, <thebetweenlands:angry_pebble>],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
]);

scripts.utils.addShaped("blueprints/wires", <immersiveengineering:blueprint>.withTag({blueprint: "Wires"}), [
	[<immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
]);

recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}));
scripts.utils.addShapeless("conveyors/conveyor_dropper", <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <thebetweenlands:syrmorite_trapdoor>]);

recipes.remove(<immersiveengineering:connector:11>);
scripts.utils.addShaped("connectors/current_transformer", <immersiveengineering:connector:11>, [
	[null, <immersiveengineering:tool:2>, null], 
	[<thebetweenlands:mud_bricks>, <immersiveengineering:metal_decoration0>, <thebetweenlands:mud_bricks>], 
	[<ore:ingotIron>, <immersiveengineering:metal_decoration0>, <ore:ingotIron>]
]);

recipes.remove(<immersiveengineering:connector:13>);
scripts.utils.addShaped("connectors/connector_probe", <immersiveengineering:connector:13>, [
	[null, <immersiveengineering:connector:12>, null], 
	[<ore:paneGlass>, <immersiveengineering:material:27>, <ore:paneGlass>],
	[null, <thebetweenlands:dentrothyst_shard_orange>, null]
]);

recipes.remove(<immersiveengineering:toolupgrade:7>);
scripts.utils.addShaped("toolupgrades/chemthrower_focus", <immersiveengineering:toolupgrade:7>, [
	[null, <ore:ingotSteel>, <ore:ingotSteel>], 
	[<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <thebetweenlands:syrmorite_hopper>], 
	[null, <ore:ingotSteel>, <ore:ingotSteel>]
]);

recipes.remove(<immersiveengineering:toolupgrade:4>);
scripts.utils.addShaped("toolupgrades/revolver_bayonet", <immersiveengineering:toolupgrade:4>, [
	[<thebetweenlands:octine_sword>, <ore:ingotSteel>], 
	[<ore:ingotSteel>, <ore:plankTreatedWood>]
]);

recipes.remove(<immersiveengineering:toolupgrade:3>);
scripts.utils.addShaped("toolupgrades/drill_capacity", <immersiveengineering:toolupgrade:3>, [
	[<immersiveengineering:material:8>, <ore:ingotSteel>, null], 
	[<ore:ingotSteel>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}), <ore:dyeRed>], 
	[null, <ore:dyeRed>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}})]
]);

recipes.remove(<immersiveengineering:toolupgrade:0>);
scripts.utils.addShaped("toolupgrades/drill_waterproof", <immersiveengineering:toolupgrade>, [
	[<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}), <ore:dyeBlue>, null], 
	[<ore:dyeBlue>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}), <ore:dyeBlue>], 
	[null, <ore:dyeBlue>, <immersiveengineering:material:8>]
]);

recipes.remove(<immersiveengineering:chemthrower>);
scripts.utils.addShaped("tool/chemthrower", <immersiveengineering:chemthrower>, [
	[null, <immersiveengineering:toolupgrade>, <immersiveengineering:material:13>], 
	[null, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:material:13>], 
	[<immersiveengineering:metal_device1:6>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}), null]
]);

recipes.remove(<immersiveengineering:toolupgrade:13>);
scripts.utils.addShaped("toolupgrades/chemthrower_multitank", <immersiveengineering:toolupgrade:13>, [
	[null, <immersiveengineering:metal_device1:6>, null], 
	[<immersiveengineering:toolupgrade:3>, <immersiveengineering:material:9>, <immersiveengineering:toolupgrade:3>]
]);

recipes.remove(<immersiveengineering:jerrycan>);
scripts.utils.addShaped("tool/jerrycan", <immersiveengineering:jerrycan>, [
	[null, <ore:plateIron>, <ore:plateIron>], 
	[<ore:plateIron>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}), <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}})], 
	[<ore:plateIron>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}), <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}})]
]);

recipes.remove(<immersiveengineering:earmuffs>);
scripts.utils.addShaped("armor/earmuffs", <immersiveengineering:earmuffs>, [
	[null, <ore:stickIron>, null], 
	[<ore:stickIron>, null, <ore:stickIron>], 
	[<contenttweaker:silk>, null, <contenttweaker:silk>]
]);

recipes.remove(<immersiveengineering:shield>);
scripts.utils.addShaped("tool/shield", <immersiveengineering:shield>, [
	[<ore:plateSteel>, <ore:plankTreatedWood>, <ore:plateSteel>], 
	[<ore:plateSteel>, <thebetweenlands:octine_shield>, <ore:plateSteel>], 
	[<ore:plateSteel>, <ore:plankTreatedWood>, <ore:plateSteel>]
]);

recipes.remove(<immersiveengineering:shield>);
scripts.utils.addShaped("wooden_devices/fluid_router", <immersiveengineering:wooden_device0:7>, [
	[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>], 
	[<ore:ingotIron>, <immersiveengineering:metal_device1:6>, <ore:ingotIron>], 
	[<ore:plankTreatedWood>, <immersiveengineering:material:8>, <ore:plankTreatedWood>]
]);

recipes.remove(<immersiveengineering:metal_decoration2:4>);
scripts.utils.addShaped("metal_decoration/lantern", <immersiveengineering:metal_decoration2:4> * 3, [
	[null, <ore:plateIron>, null], 
	[<ore:paneGlass>, <embers:archaic_light>, <ore:paneGlass>], 
	[null, <ore:plateIron>, null]
]);

recipes.remove(<immersiveengineering:metal_device1:4>);
scripts.utils.addShaped("metal_devices/powered_lantern_modified", <immersiveengineering:metal_device1:4> * 3, [
	[null, <ore:plateIron>, null], 
	[<thebetweenlands:filtered_silt_glass_pane>, <immersiveengineering:material:26>, <thebetweenlands:filtered_silt_glass_pane>], 
	[<ore:plateIron>, <betweenlandsredstone:scabyst_dust>, <ore:plateIron>]
]);

recipes.remove(<immersiveengineering:metal_device1:5>);
scripts.utils.addShaped("metal_devices/charging_station", <immersiveengineering:metal_device1:5>, [
	[<ore:ingotIron>, <immersiveengineering:connector:2>, <ore:ingotIron>], 
	[<thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>, <thebetweenlands:filtered_silt_glass>],
	[<ore:plankTreatedWood>, <immersiveengineering:metal_decoration0>, <ore:plankTreatedWood>]
]);

recipes.remove(<immersiveengineering:material:13>);
scripts.utils.addShaped("material/wooden_grip", <immersiveengineering:material:13>, [
	[<pyrotech:material:23>, <pyrotech:material:23>], 
	[<ore:ingotOctine>, <pyrotech:material:23>], 
	[<pyrotech:material:23>, <pyrotech:material:23>]
]);

recipes.remove(<immersiveengineering:skyhook>);
scripts.utils.addShaped("tool/skyhook", <immersiveengineering:skyhook>, [
	[<ore:ingotSilver>, <ore:ingotSilver>, null], 
	[<ore:ingotSilver>, <mystgears:gear_syrmorite>, null], 
	[null, <immersiveengineering:material:13>, <immersiveengineering:material:13>]
]);

recipes.remove(<immersiveengineering:connector:6>);
scripts.utils.addShaped("connectors/connector_structural", <immersiveengineering:connector:6> * 8, [
	[<ore:ingotSyrmorite>, <ore:nuggetSyrmorite>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>]
]);

scripts.utils.addShaped("hemp_coil", <immersiveengineering:wirecoil:3> * 4, [
	[null, <clothesline:clothesline>, null], 
	[<clothesline:clothesline>, <pyrotech:material:23>, <clothesline:clothesline>],
	[null, <clothesline:clothesline>, null]
]);

scripts.utils.addShapeless("string_ie", <minecraft:string>, 
	[<immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>]
);

recipes.removeByRegex("crafttweaker:immersiveengineering_conveyors/conveyor_basic_modified");
scripts.utils.addShaped("immersiveengineering_conveyors/conveyor_basic", <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [
	[<thebetweenlands:items_misc:23>, <thebetweenlands:items_misc:23>, <thebetweenlands:items_misc:23>], 
	[<thebetweenlands:items_misc:23>, <thebetweenlands:items_misc:23>, <thebetweenlands:items_misc:23>], 
	[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]
]);

recipes.remove(<immersiveengineering:metal_decoration0:4>);
scripts.utils.addShaped("metal_decoration/light_engineering", <immersiveengineering:metal_decoration0:4> * 2, [
	[<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>], 
	[<ore:ingotOctine>, <ore:ingotOctine>, <ore:ingotOctine>], 
	[<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>]
]);

recipes.remove(<immersiveengineering:metal_decoration0:3>);
scripts.utils.addShaped("metal_decoration/redstone_engineering", <immersiveengineering:metal_decoration0:3> * 2, [
	[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], 
	[<ore:dustRedstone>, <ore:ingotOctine>, <ore:dustRedstone>], 
	[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]
]);

recipes.remove(<immersiveengineering:metal_decoration0:5>);
scripts.utils.addShaped("metal_decoration/heavy_engineering", <immersiveengineering:metal_decoration0:5> * 2, [
	[<ore:ingotSteel>, <immersiveengineering:material:9>, <ore:ingotSteel>],
	[<betweenlandsredstone:scabyst_piston>, <ore:ingotSilver>, <betweenlandsredstone:scabyst_piston>], 
	[<ore:ingotSteel>, <immersiveengineering:material:9>, <ore:ingotSteel>]
]);

recipes.remove(<immersiveengineering:toolupgrade:5>);
scripts.utils.addShaped("toolupgrades/revolver_magazine", <immersiveengineering:toolupgrade:5>, [
	[null, <ore:ingotOctine>, <ore:ingotSteel>], 
	[<ore:ingotOctine>, null, <ore:ingotOctine>], 
	[<immersiveengineering:material:8>, <ore:ingotOctine>, null]
]);

recipes.remove(<immersiveengineering:toolupgrade:8>);
scripts.utils.addShaped("toolupgrades/railgun_scope", <immersiveengineering:toolupgrade:8>, [
	[<thebetweenlands:filtered_silt_glass_pane>, <ore:ingotOctine>, null],
	[<ore:ingotOctine>, null, <ore:ingotOctine>],
	[null, <ore:ingotOctine>, <thebetweenlands:filtered_silt_glass_pane>]
]);

recipes.remove(<immersiveengineering:tool:2>);
scripts.utils.addShaped("tool/voltmeter", <immersiveengineering:tool:2>, [
	[null, <embers:ember_detector>, null], 
	[<ore:stickTreatedWood>, <ore:ingotOctine>, <ore:stickTreatedWood>]
]);

recipes.remove(<immersiveengineering:bullet:1>);
scripts.utils.addShaped("material/empty_shell", <immersiveengineering:bullet:1> * 5, [
	[<thebetweenlands:items_misc:32>, <ore:dyeRed>, <thebetweenlands:items_misc:32>], 
	[<thebetweenlands:items_misc:32>, <ore:dyeRed>, <thebetweenlands:items_misc:32>], 
	[null, <ore:ingotOctine>, null]
]);

recipes.remove(<immersiveengineering:connector:9>);
scripts.utils.addShaped("connectors/breaker_switch", <immersiveengineering:connector:9>, [
	[null, <ore:lever>, null], 
	[<thebetweenlands:mud_bricks>, <ore:ingotOctine>, <thebetweenlands:mud_bricks>]
]);

recipes.remove(<immersiveengineering:metal_decoration0:7>);
scripts.utils.addShaped("metal_decoration/radiator", <immersiveengineering:metal_decoration0:7> * 2, [
	[<ore:ingotSteel>, <ore:ingotOctine>, <ore:ingotSteel>], 
	[<ore:ingotOctine>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}) | <thebetweenlands:bl_bucket:1>, <ore:ingotOctine>], 
	[<ore:ingotSteel>, <ore:ingotOctine>, <ore:ingotSteel>]
]);

recipes.remove(<immersiveengineering:metal_device1:1>);
scripts.utils.addShaped("immersiveengineering_metal_devices/furnace_heater", <immersiveengineering:metal_device1:1>, [
	[<ore:ingotIron>, <ore:ingotOctine>, <ore:ingotIron>], 
	[<ore:ingotOctine>, <immersiveengineering:metal_decoration0>, <ore:ingotOctine>], 
	[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]
]);

recipes.remove(<immersiveengineering:metal_device0>);
scripts.utils.addShaped("immersiveengineering_metal_devices/capacitor_lv", <immersiveengineering:metal_device0>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<ore:ingotOctine>, <ore:ingotLead>, <ore:ingotOctine>],
	[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>]
]);

scripts.utils.replaceShapeless("tool/manual", <immersiveengineering:tool:3>, [<minecraft:book>, <ore:lever>]);

scripts.utils.replaceShaped("wooden_devices/gunpowder_barrel", <immersiveengineering:wooden_device0:4>, [
	[<ore:fiberHemp>], 
	[<immersiveengineering:wooden_device0:1>],
	[<thebetweenlands:angry_pebble>]
]);

scripts.utils.replaceShaped("cloth_devices/strip_curtain", <immersiveengineering:cloth_device:2> * 3, [
	[<ore:stickIron> | <ore:stickSteel>, <ore:stickIron> | <ore:stickSteel>, <ore:stickIron> | <ore:stickSteel>], 
	[<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>],
	[<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]
]);

scripts.utils.replaceShaped("connectors/connector_lv", <immersiveengineering:connector> * 4, [
	[null, <ore:ingotOctine>, null], 
	[<thebetweenlands:mud_bricks>, <ore:ingotOctine>, <thebetweenlands:mud_bricks>], 
	[<thebetweenlands:mud_bricks>, <ore:ingotOctine>, <thebetweenlands:mud_bricks>]
]);

scripts.utils.replaceShaped("connectors/relay_lv", <immersiveengineering:connector:1> * 8, [
	[null, <ore:ingotOctine>, null],
	[<thebetweenlands:mud_bricks>, <ore:ingotOctine>, <thebetweenlands:mud_bricks>]
]);

scripts.utils.replaceShaped("connectors/connector_mv", <immersiveengineering:connector:2> * 4, [
	[null, <ore:ingotDawnstone>, null], 
	[<thebetweenlands:mud_bricks>, <ore:ingotDawnstone>, <thebetweenlands:mud_bricks>], 
	[<thebetweenlands:mud_bricks>, <ore:ingotDawnstone>, <thebetweenlands:mud_bricks>]
]);

scripts.utils.replaceShaped("connectors/relay_mv", <immersiveengineering:connector:3> * 8, [
	[null, <ore:ingotDawnstone>, null],
	[<thebetweenlands:mud_bricks>, <ore:ingotDawnstone>, <thebetweenlands:mud_bricks>]
]);

scripts.utils.replaceShaped("connectors/connector_hv", <immersiveengineering:connector:4> * 4, [
	[null, <ore:ingotSilver>, null], 
	[<thebetweenlands:mud_bricks>, <ore:ingotSilver>, <thebetweenlands:mud_bricks>], 
	[<thebetweenlands:mud_bricks>, <ore:ingotSilver>, <thebetweenlands:mud_bricks>]
]);

scripts.utils.replaceShaped("connectors/relay_hv", <immersiveengineering:connector:5> * 8, [
	[null, <ore:ingotSilver>, null],
	[<immersiveengineering:stone_decoration:8>, <ore:ingotSilver>, <immersiveengineering:stone_decoration:8>],
	[<immersiveengineering:stone_decoration:8>, <ore:ingotSilver>, <immersiveengineering:stone_decoration:8>]
]);

scripts.utils.replaceShaped("metal_devices/capacitor_mv", <immersiveengineering:metal_device0:1>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<ore:ingotDawnstone>, <ore:ingotLead>, <ore:ingotDawnstone>],
	[<ore:plankTreatedWood>, <ore:blockRedstone>, <ore:plankTreatedWood>]
]);

scripts.utils.replaceShaped("metal_devices/capacitor_hv", <immersiveengineering:metal_device0:2>, [
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
	[<ore:ingotSilver>, <ore:blockLead>, <ore:ingotSilver>],
	[<ore:plankTreatedWood>, <ore:blockRedstone>, <ore:plankTreatedWood>]
]);

scripts.utils.replaceShaped("metal_devices/tesla_coil", <immersiveengineering:metal_device1:8>, [
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>],
	[null, <immersiveengineering:metal_decoration0>, null],
	[<immersiveengineering:metal_device0:2>, <immersiveengineering:metal_decoration0>, <immersiveengineering:metal_device0:2>]
]);

scripts.utils.replaceShaped("tool/hammer", <immersiveengineering:tool>, [
	[null, <ore:ingotIron>, <minecraft:string>],
	[null, <ore:stickTreatedWood>, <ore:ingotIron>], 
	[<ore:stickTreatedWood>, null, null]
]);

scripts.utils.replaceShaped("tool/wirecutters", <immersiveengineering:tool:1>, [
	[<ore:stickTreatedWood>, <ore:ingotIron>],
	[null, <ore:stickTreatedWood>]
]);

scripts.utils.replaceShaped("tool/toolbox", <immersiveengineering:toolbox>, [
	[<ore:plateLead>, <ore:plateLead>, <ore:plateLead>], 
	[<ore:dyeRed>, <ore:chest>, <ore:dyeRed>]
]);

scripts.utils.replaceShaped("wooden_devices/reinforced_crate", <immersiveengineering:wooden_device0:5>, [
	[<ore:plankTreatedWood>, <ore:plateIron>, <ore:plankTreatedWood>], 
	[<ore:stickIron>, <ore:chest>, <ore:stickIron>], 
	[<ore:plankTreatedWood>, <ore:plateIron>, <ore:plankTreatedWood>]
]);

scripts.utils.replaceShaped("toolupgrades/drill_lube", <immersiveengineering:toolupgrade:1>, [
	[<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "oil_dwarf", Amount: 1000}}) | <thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "oil_dwarf", Amount: 1000}}), <ore:ingotIron>, null], 
	[<ore:ingotIron>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "oil_dwarf", Amount: 1000}}) | <thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "oil_dwarf", Amount: 1000}}), <ore:ingotIron>], 
	[null, <ore:ingotIron>, <immersiveengineering:material:8>]
]);

scripts.utils.replaceShaped("toolupgrades/shield_flash", <immersiveengineering:toolupgrade:10>, [
	[<ore:plateSilver>, <ore:paneGlass>, <ore:plateSilver>], 
	[<ore:paneGlass>, <immersiveengineering:material:26>, <ore:paneGlass>]
]);

scripts.utils.replaceShaped("armor/faraday_helm", <immersiveengineering:faraday_suit_head>, [
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>],
	[<ore:plateSilver>, null, <ore:plateSilver>]
]);

scripts.utils.replaceShaped("armor/faraday_chest", <immersiveengineering:faraday_suit_chest>, [
	[<ore:plateSilver>, null, <ore:plateSilver>],
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>],
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]
]);

scripts.utils.replaceShaped("armor/faraday_legs", <immersiveengineering:faraday_suit_legs>, [
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 
	[<ore:plateSilver>, null, <ore:plateSilver>], 
	[<ore:plateSilver>, null, <ore:plateSilver>]
]);

scripts.utils.replaceShaped("armor/faraday_boots", <immersiveengineering:faraday_suit_feet>, [
	[<ore:plateSilver>, null, <ore:plateSilver>], 
	[<ore:plateSilver>, null, <ore:plateSilver>]
]);

recipes.removeByRegex("immersiveengineering:stone_decoration/hempcrete");
scripts.utils.addShaped("stone_decoration/hempcrete", <immersiveengineering:stone_decoration:4> * 6, [
	[<pyrotech:material:4>, <pyrotech:material:4>, <pyrotech:material:4>], 
	[<ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>], 
	[<pyrotech:material:4>, <pyrotech:material:4>, <pyrotech:material:4>]
]);

recipes.removeByRegex("immersiveengineering:stone_decoration/concrete");
recipes.removeByRegex("immersiveengineering:stone_decoration/concrete2");
scripts.utils.addShaped("stone_decoration/concrete2", <immersiveengineering:stone_decoration:5> * 12, [
	[<ore:itemSlag>, <pyrotech:material:4>, <ore:itemSlag>], 
	[<thebetweenlands:silt>, <thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "swamp_water", Amount: 1000}}) | <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "swamp_water", Amount: 1000}}), <thebetweenlands:silt>], 
	[<ore:itemSlag>, <pyrotech:material:4>, <ore:itemSlag>]
]);

scripts.utils.replaceShaped("connectors/connector_redstone", <immersiveengineering:connector:12> * 4, [
	[<ore:nuggetDawnstone>, <ore:nuggetDawnstone>, <ore:nuggetDawnstone>], 
	[<thebetweenlands:mud_bricks>, <ore:dustRedstone>, <thebetweenlands:mud_bricks>]
]);

scripts.utils.replaceShaped("metal_decoration/aluminum_wallmount", <immersiveengineering:metal_decoration2:3> * 4, [
	[<ore:ingotSilver>, <ore:ingotSilver>], 
	[<ore:ingotSilver>, <ore:stickAluminum>]
]);

recipes.removeByRegex("immersiveengineering:metal_decoration/aluminum_scaffolding");
scripts.utils.addShaped("metal_decoration/aluminum_scaffolding", <immersiveengineering:metal_decoration1:5> * 6, [
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>], 
	[null, <ore:stickAluminum>, null], 
	[<ore:stickAluminum>, null, <ore:stickAluminum>]
]);

scripts.utils.replaceShaped("metal_decoration/aluminum_fence", <immersiveengineering:metal_decoration1:4> * 3, [
	[<ore:ingotSilver>, <ore:stickAluminum>, <ore:ingotSilver>], 
	[<ore:ingotSilver>, <ore:stickAluminum>, <ore:ingotSilver>]
]);

scripts.utils.replaceShaped("blueprints/components", <immersiveengineering:blueprint>.withTag({blueprint: "components"}), [
	[<ore:ingotOctine>, <ore:ingotSilver>, <ore:ingotIron>],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
]);

scripts.utils.replaceShaped("sheetmetal/aluminum_sheetmetal", <immersiveengineering:sheetmetal:1> * 4, [
	[null, <ore:plateSilver>, null], 
	[<ore:plateSilver>, null, <ore:plateSilver>], 
	[null, <ore:plateSilver>, null]
]);



// SQUEEZER RECIPES
var defaultAspectrusPower = 2048;
Squeezer.removeAll();
Squeezer.addRecipe(null, <liquid:plantoil> * 120, <immersiveengineering:seed>, defaultAspectrusPower);

Squeezer.addRecipe(null, <liquid:armaniis> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Armaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:azuwynn> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Azuwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:byariis> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byariis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:byrginaz> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byrginaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:celawynn> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Celawynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:dayuniis> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Dayuniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:fergalaz> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Fergalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:firnalaz> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Firnalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:freiwynn> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Freiwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:geoliirgaz> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Geoliirgaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:ordaniis> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Ordaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:uduriis> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Uduriis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:wodren> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Wodren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:yeowynn> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yeowynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:yihinren> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yihinren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);
Squeezer.addRecipe(null, <liquid:yunugaz> * 250, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yunugaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), defaultAspectrusPower);

Squeezer.addRecipe(null, <liquid:fluid_booze_purple_juice> * 40, <thebetweenlands:middle_fruit>, defaultAspectrusPower);
Squeezer.addRecipe(<growthcraft_bees:honey_comb_empty>, <liquid:fluid_honey> * 160, <growthcraft_bees:honey_comb_filled>, defaultAspectrusPower);


// FERMENTER RECIPES
Fermenter.removeAll();
Fermenter.addRecipe(null, <liquid:ethanol> * 80, <thebetweenlands:middle_fruit>, 2048);




Blueprint.removeRecipe(<immersiveengineering:mold:0>);
Blueprint.removeRecipe(<immersiveengineering:mold:1>);
Blueprint.removeRecipe(<immersiveengineering:mold:2>);
Blueprint.removeRecipe(<immersiveengineering:mold:3>);
Blueprint.removeRecipe(<immersiveengineering:mold:4>);
Blueprint.removeRecipe(<immersiveengineering:mold:5>);
Blueprint.removeRecipe(<immersiveengineering:mold:6>);
Blueprint.removeRecipe(<immersiveengineering:mold:7>);
Blueprint.removeRecipe(<immersiveengineering:graphite_electrode>);
Blueprint.removeRecipe(<immersiveengineering:wirecoil>);

// Wires
Blueprint.removeRecipe(<immersiveengineering:wirecoil:0>);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:0> * 4, [<immersiveengineering:material>, <immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>]);

Blueprint.removeRecipe(<immersiveengineering:wirecoil:1>);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:1> * 4, [<immersiveengineering:material>, <immersiveengineering:material:21>, <immersiveengineering:material:21>, <immersiveengineering:material:21>, <immersiveengineering:material:21>]);

Blueprint.removeRecipe(<immersiveengineering:wirecoil:2>);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:2> * 4, [<immersiveengineering:material>, <immersiveengineering:material:22>, <immersiveengineering:material:22>, <immersiveengineering:material:23>, <immersiveengineering:material:23>]);

Blueprint.removeRecipe(<immersiveengineering:wirecoil:3>);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:3> * 4, [<immersiveengineering:material>, <immersiveengineering:material:4>, <immersiveengineering:material:4>]);

Blueprint.removeRecipe(<immersiveengineering:wirecoil:4>);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:4> * 4, [<immersiveengineering:material>, <immersiveengineering:material:23>, <immersiveengineering:material:23>, <immersiveengineering:material:23>, <immersiveengineering:material:23>]);

Blueprint.removeRecipe(<immersiveengineering:wirecoil:5>);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:5> * 4, [<immersiveengineering:material>, <immersiveengineering:material:22>, <immersiveengineering:material:22>, <betweenlandsredstone:scabyst_dust>, <betweenlandsredstone:scabyst_dust>]);

Blueprint.removeRecipe(<immersiveengineering:wirecoil:6>);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:6>, [<immersiveengineering:wirecoil:0>, <immersiveengineering:material:5>]);

Blueprint.removeRecipe(<immersiveengineering:wirecoil:7>);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:7>, [<immersiveengineering:wirecoil:1>, <immersiveengineering:material:5>]);

Blueprint.removeRecipe(<immersiveengineering:material:26>);
Blueprint.addRecipe("Wires", <immersiveengineering:material:26>, [<thebetweenlands:silt_glass>, <embers:plate_silver>, <immersiveengineering:material:20>, <betweenlandsredstone:scabyst_dust>]);

Blueprint.removeRecipe(<immersiveengineering:material:27>);
Blueprint.addRecipe("Wires", <immersiveengineering:material:27>, [<immersiveengineering:stone_decoration:8>, <embers:plate_gold>, <immersiveengineering:material:26>, <immersiveengineering:material:26>]);

// Components
Blueprint.removeRecipe(<immersiveengineering:material:8>);
Blueprint.addRecipe("components", <immersiveengineering:material:8>, [<embers:plate_iron>, <embers:plate_iron>, <ore:ingotOctine>]);

Blueprint.removeRecipe(<immersiveengineering:material:9>);
Blueprint.addRecipe("components", <immersiveengineering:material:9>, [<ore:plateSteel>, <ore:plateSteel>, <ore:ingotOctine>]);

// Bullets
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "casull"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({bullet: "casull"}), [<immersiveengineering:bullet>, <embers:dust_ember>, <ore:nuggetLead>, <embers:nugget_lead>]);

Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "armor_piercing"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({bullet: "armor_piercing"}), [<immersiveengineering:bullet>, <embers:dust_ember>, <ore:nuggetSteel>, <ore:nuggetSteel>, <embers:shard_ember>, <embers:shard_ember>]);

Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "buckshot"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({bullet: "buckshot"}), [<immersiveengineering:bullet:1>, <embers:dust_ember>, <thebetweenlands:items_crushed:61>]);

Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "he"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({bullet: "he"}), [<immersiveengineering:bullet>, <embers:dust_ember>, <thebetweenlands:angry_pebble>]);

Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({bullet: "dragonsbreath"}), [<immersiveengineering:bullet:1>, <embers:dust_ember>, <thebetweenlands:pyrad_flame>]);

recipes.remove(<immersiveengineering:bullet:2>.withTag({bullet: "potion"}));
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "potion"}));

Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 13381126, bullet: "flare"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({flareColour: 13381126, bullet: "flare"}), [<immersiveengineering:bullet:1>, <embers:dust_ember>, <thebetweenlands:items_misc:18>, <minecraft:dye:1>]);

Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 2925323, bullet: "flare"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({flareColour: 2925323, bullet: "flare"}), [<immersiveengineering:bullet:1>, <embers:dust_ember>, <thebetweenlands:items_misc:18>, <minecraft:dye:2>]);

Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({flareColour: 16777090, bullet: "flare"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({flareColour: 16777090, bullet: "flare"}), [<immersiveengineering:bullet:1>, <embers:dust_ember>, <thebetweenlands:items_misc:18>, <minecraft:dye:11>]);

Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "terrasteel"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({bullet: "terrasteel"}), [<immersiveengineering:bullet>, <embers:dust_ember>, <ore:nuggetTerrasteel>, <ore:nuggetTerrasteel>]);

Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "crystalwill"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({bullet: "crystalwill"}), [<immersiveengineering:bullet>, <embers:dust_ember>, <bloodmagic:item_demon_crystal>]);

Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "wolfpack"}));
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({bullet: "wolfpack"}), [<immersiveengineering:bullet:1>, <embers:dust_ember>, <immersiveengineering:bullet:2>.withTag({bullet: "terrasteel"}), <immersiveengineering:bullet:2>.withTag({bullet: "terrasteel"}), <immersiveengineering:bullet:2>.withTag({bullet: "terrasteel"}), <immersiveengineering:bullet:2>.withTag({bullet: "terrasteel"})]);
Blueprint.addRecipe("bullet", <immersiveengineering:bullet:2>.withTag({bullet: "wolfpack"}), [<immersiveengineering:bullet:1>, <embers:dust_ember>, <immersiveengineering:bullet:2>.withTag({bullet: "crystalwill"}), <immersiveengineering:bullet:2>.withTag({bullet: "crystalwill"}), <immersiveengineering:bullet:2>.withTag({bullet: "crystalwill"}), <immersiveengineering:bullet:2>.withTag({bullet: "crystalwill"})]);



BlastFurnace.removeAll();
BlastFurnace.addRecipe(<immersiveengineering:metal:8>, <minecraft:iron_ingot>, 4000, <pyrotech:slag>);

BlastFurnace.removeFuel(<immersiveengineering:material:6>);

BlastFurnace.addFuel(<embers:shard_ember>, 800);
BlastFurnace.addFuel(<thebetweenlands:items_misc:45>, 2000);
BlastFurnace.addFuel(<embers:crystal_ember>, 4800);
BlastFurnace.addFuel(<thebetweenlands:octine_ingot>, 8000);


CokeOven.removeAll();
CokeOven.addRecipe(<soot:sulfur> * 1, 125, <thebetweenlands:log_weedwood>, 600);
CokeOven.addRecipe(<soot:sulfur> * 4, 125, <thebetweenlands:log_hearthgrove:1>, 600);
CokeOven.addRecipe(<soot:sulfur> * 4, 125, <thebetweenlands:log_hearthgrove:3>, 600);
CokeOven.addRecipe(<soot:sulfur> * 6, 125, <thebetweenlands:log_hearthgrove:5>, 600);
CokeOven.addRecipe(<soot:sulfur> * 6, 125, <thebetweenlands:log_hearthgrove:7>, 600);

MetalPress.removeAll();



// Bottling Machine
val bottlingRecipesToRemove = [
	<minecraft:sponge:1>
] as IItemStack[];

for recipe in bottlingRecipesToRemove {
	BottlingMachine.removeRecipe(recipe);
}

BottlingMachine.addRecipe(<simpledifficulty:purified_water_bottle>, <minecraft:glass_bottle>, <liquid:clean_water> * 125);

for i in 0 to 4 {
	var dose = 4 - i;

	BottlingMachine.addRecipe(<simpledifficulty:canteen>.withTag({Doses: dose, CanteenType: 3}), <simpledifficulty:canteen>.withTag({Doses: 0, CanteenType: 0}), <liquid:clean_water> * (dose * 1000));

	if (i < 4) {
		BottlingMachine.addRecipe(<simpledifficulty:canteen>.withTag({Doses: 4, CanteenType: 3}), <simpledifficulty:canteen>.withTag({Doses: (4 - dose), CanteenType: 3}), <liquid:clean_water> * (dose * 1000));
	}
}

for i in 0 to 8 {
	var dose = 8 - i;

	BottlingMachine.addRecipe(<simpledifficulty:iron_canteen>.withTag({Doses: dose, CanteenType: 3}), <simpledifficulty:iron_canteen>.withTag({Doses: 0, CanteenType: 0}), <liquid:clean_water> * (dose * 1000));

	if (i < 8) {
		BottlingMachine.addRecipe(<simpledifficulty:iron_canteen>.withTag({Doses: 8, CanteenType: 3}), <simpledifficulty:iron_canteen>.withTag({Doses: (8 - dose), CanteenType: 3}), <liquid:clean_water> * (dose * 1000));
	}
}


BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Armaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:armaniis> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Azuwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:azuwynn> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byariis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:byariis> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byrginaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:byrginaz> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Celawynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:celawynn> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Dayuniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:dayuniis> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Fergalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:fergalaz> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Firnalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:firnalaz> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Freiwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:freiwynn> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Geoliirgaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:geoliirgaz> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Ordaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:ordaniis> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Uduriis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:uduriis> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Wodren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:wodren> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yeowynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:yeowynn> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yihinren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:yihinren> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yunugaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:yunugaz> * 250);

BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Armaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:armaniis> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Azuwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:azuwynn> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byariis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:byariis> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byrginaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:byrginaz> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Celawynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:celawynn> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Dayuniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:dayuniis> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Fergalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:fergalaz> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Firnalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:firnalaz> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Freiwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:freiwynn> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Geoliirgaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:geoliirgaz> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Ordaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:ordaniis> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Uduriis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:uduriis> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Wodren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:wodren> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yeowynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:yeowynn> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yihinren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:yihinren> * 250);
BottlingMachine.addRecipe(<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yunugaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}), <thebetweenlands:dentrothyst_vial:2>, <liquid:yunugaz> * 250);

// Crusher - Doesn't break down anything that requires precision, like plants
Crusher.removeAll();
// limestone
// loot scrap
// runestone
// anything that turns into dyes, but without the middle product
// things that break into dentrothyst slivers
// cobble into ground pebbles
// anvil recipes that break down stuff using the hammer
// valonite into shards
// something to turn into silt?



AlloySmelter.removeAll();



<immersiveengineering:stone_decoration:2>.displayName = "Reinforced Archaic Bricks";
<immersiveengineering:mold:2>.displayName = "Rod Stamp";
<immersiveengineering:mold:4>.displayName = "Wire Stamp";
<immersiveengineering:wooden_device1:1>.displayName = "Large Windmill";
<immersiveengineering:wirecoil:5>.displayName = "Bluedust Wire Coil";
<immersiveengineering:connector:13>.displayName = "Bluedust Probe Connector";
<immersiveengineering:connector:12>.displayName = "Bluedust Wire Connector";
<immersiveengineering:connector:10>.displayName = "Bluedust Breaker";
<immersiveengineering:metal_decoration0:3>.displayName = "Bluedust Engineering Block";
<immersiveengineering:material:20>.displayName = "Octine Wire";
<immersiveengineering:metal_decoration0>.displayName = "Low-Voltage Coil Block";
<immersiveengineering:material:21>.displayName = "Dawnstone Wire";
<immersiveengineering:metal_decoration0:1>.displayName = "Medium-Voltage Coil Block";
<immersiveengineering:material:22>.displayName = "Mirrium Wire";
<immersiveengineering:material:1>.displayName = "Wrought Iron Rod";
<immersiveengineering:sheetmetal:2>.displayName = "Gloomsilver Sheetmetal";
<immersiveengineering:sheetmetal:3>.displayName = "Mirrium Sheetmetal";
<immersiveengineering:sheetmetal:9>.displayName = "Wrought Iron Sheetmetal";
<immersiveengineering:sheetmetal_slab:2>.displayName = "Gloomsilver Sheetmetal Slab";
<immersiveengineering:sheetmetal_slab:3>.displayName = "Mirrium Sheetmetal Slab";
<immersiveengineering:sheetmetal_slab:9>.displayName = "Wrought Iron Sheetmetal Slab";
<immersiveengineering:material:3>.displayName = "Mirrium Rod";
<immersiveengineering:metal_decoration1:4>.displayName = "Mirrium Fence";
<immersiveengineering:metal_decoration1:5>.displayName = "Mirrium Scaffolding";
<immersiveengineering:metal_decoration2:3>.displayName = "Mirrium Wallmount";
<immersiveengineering:sheetmetal:1>.displayName = "Mirrium Sheetmetal";
<immersiveengineering:sheetmetal_slab:1>.displayName = "Mirrium Sheetmetal Slab";
<immersiveengineering:metal_decoration1:6>.displayName = "Mirrium Scaffolding";
<immersiveengineering:metal_decoration1:7>.displayName = "Mirrium Scaffolding";
<immersiveengineering:metal_decoration2:8>.displayName = "Mirrium Structural Arm";
<immersiveengineering:metal_decoration1_slab:5>.displayName = "Mirrium Scaffolding Slab";
<immersiveengineering:metal_decoration1_slab:6>.displayName = "Mirrium Scaffolding Slab";
<immersiveengineering:metal_decoration1_slab:7>.displayName = "Mirrium Scaffolding Slab";
<immersiveengineering:aluminum_scaffolding_stairs0>.displayName = "Mirrium Scaffolding Stairs";
<immersiveengineering:aluminum_scaffolding_stairs1>.displayName = "Mirrium Scaffolding Stairs";
<immersiveengineering:aluminum_scaffolding_stairs2>.displayName = "Mirrium Scaffolding Stairs";


//val platesToReplace = {
//	<immersiveengineering:metal:30> : <immersiveengineering:metal:0>, 
//	<immersiveengineering:metal:31> : <immersiveengineering:metal:1>, 
//	<immersiveengineering:metal:32> : <immersiveengineering:metal:2>, 
//	<immersiveengineering:metal:33> : <immersiveengineering:metal:3>, 
//	<immersiveengineering:metal:34> : <immersiveengineering:metal:4>, 
//	<immersiveengineering:metal:35> : <immersiveengineering:metal:5>, 
//	<immersiveengineering:metal:36> : <immersiveengineering:metal:6>, 
//	<immersiveengineering:metal:37> : <immersiveengineering:metal:7>, 
//	<immersiveengineering:metal:38> : <immersiveengineering:metal:8>, 
//	<immersiveengineering:metal:39> : <thebetweenlands:items_misc:11>, 
//	<immersiveengineering:metal:40> : <thebetweenlands:octine_ingot>, 
//} as IItemStack[IItemStack];


//for plate in platesToReplace {
//	recipes.remove(plate);
//	scripts.utils.addShapeless(plate, [platesToReplace[plate], platesToReplace[plate], platesToReplace[plate], <immersiveengineering:tool>.transformDamage()]);
//}



//<immersiveengineering:metal:39>.displayName = "Syrmorite Plate";
//<immersiveengineering:metal:40>.displayName = "Octine Plate";