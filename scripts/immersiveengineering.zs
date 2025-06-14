import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.BottlingMachine;


val itemsToRemove as IItemStack[] = [
	<immersiveengineering:ore>,
	<immersiveengineering:ore:1>,
	<immersiveengineering:ore:2>,
	<immersiveengineering:ore:3>,
	<immersiveengineering:ore:4>,
	<immersiveengineering:ore:5>,
	<immersiveengineering:storage>,
	<immersiveengineering:storage:1>,
	<immersiveengineering:storage:2>,
	<immersiveengineering:storage:3>,
	<immersiveengineering:storage:4>,
	<immersiveengineering:storage:7>,
	<immersiveengineering:storage_slab>,
	<immersiveengineering:storage_slab:1>,
	<immersiveengineering:storage_slab:2>,
	<immersiveengineering:storage_slab:3>,
	<immersiveengineering:storage_slab:4>,
	<immersiveengineering:storage_slab:7>,
	<immersiveengineering:stone_decoration:3>,
	<immersiveengineering:material:6>,
	<immersiveengineering:material:7>,
	<immersiveengineering:material:8>,
	<immersiveengineering:material:9>,
	<immersiveengineering:material:17>,
	<immersiveengineering:material:24>,
	<immersiveengineering:material:25>,
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

recipes.remove(<immersiveengineering:wooden_device0:2>);
scripts.utils.addShaped("wooden_devices/workbench", <immersiveengineering:wooden_device0:2>, [
	[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], 
	[<thebetweenlands:weedwood_workbench>, null, <ore:fenceTreatedWood>]
]);

recipes.remove(<immersiveengineering:stone_decoration:1>);
//scripts.utils.addShaped("stone_decoration/blastbrick", <immersiveengineering:stone_decoration:1> * 3, [
//	[<pyrotech:material:5>, <thebetweenlands:items_misc:10>, <pyrotech:material:5>], 
//	[<thebetweenlands:items_misc:10>, <thebetweenlands:wisp>, <thebetweenlands:items_misc:10>], 
//	[<pyrotech:material:5>, <thebetweenlands:items_misc:10>, <pyrotech:material:5>]
//]);

recipes.remove(<immersiveengineering:stone_decoration:8>);
scripts.utils.addShaped("stone_decoration/insulating_glass", <immersiveengineering:stone_decoration:8> * 3, [
	[null, <ore:blockGlass>, null], 
	[<embers:dust_ember>, <thebetweenlands:dye:11>, <embers:dust_ember>], 
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

recipes.remove(<immersiveengineering:connector:9>);
recipes.addShaped("connectors/breaker_switch", <immersiveengineering:connector:9>, [
	[null, <ore:lever>, null],
	[<thebetweenlands:mud_bricks>, <ore:ingotCopper>, <thebetweenlands:mud_bricks>]
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

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
scripts.utils.addShaped("blueprints/components", <immersiveengineering:blueprint>.withTag({blueprint: "components"}), [
	[<ore:ingotCopper>, <ore:ingotAluminum>, <ore:ingotIron>],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
]);

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}));
scripts.utils.addShaped("blueprints/common_cartridges", <immersiveengineering:blueprint>.withTag({blueprint: "bullet"}), [
	[<thebetweenlands:angry_pebble>, <ore:ingotCopper>, <thebetweenlands:angry_pebble>],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
]);

scripts.utils.addShaped("blueprints/wires", <immersiveengineering:blueprint>.withTag({blueprint: "Wires"}), [
	[<immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>],
	[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
]);

recipes.remove(<immersiveengineering:connector:0>);
scripts.utils.addShaped("connectors/connector_lv", <immersiveengineering:connector:0> * 4, [
	[null, <ore:ingotCopper>, null],
	[<thebetweenlands:mud_bricks>, <ore:ingotCopper>, <thebetweenlands:mud_bricks>],
	[<thebetweenlands:mud_bricks>, <ore:ingotCopper>, <thebetweenlands:mud_bricks>]
]);

recipes.remove(<immersiveengineering:connector:1>);
scripts.utils.addShaped("connectors/relay_lv", <immersiveengineering:connector:1> * 8, [
	[null, <ore:ingotCopper>, null],
	[<thebetweenlands:mud_bricks>, <ore:ingotCopper>, <thebetweenlands:mud_bricks>]
]);

recipes.remove(<immersiveengineering:connector:2>);
scripts.utils.addShaped("connectors/connector_mv", <immersiveengineering:connector:2> * 4, [
	[null, <ore:ingotIron>, null],
	[<thebetweenlands:mud_bricks>, <ore:ingotIron>, <thebetweenlands:mud_bricks>],
	[<thebetweenlands:mud_bricks>, <ore:ingotIron>, <thebetweenlands:mud_bricks>]
]);

recipes.remove(<immersiveengineering:connector:3>);
scripts.utils.addShaped("connectors/relay_mv", <immersiveengineering:connector:3> * 8, [
	[null, <ore:ingotIron>, null],
	[<thebetweenlands:mud_bricks>, <ore:ingotIron>, <thebetweenlands:mud_bricks>]
]);

recipes.remove(<immersiveengineering:connector:4>);
scripts.utils.addShaped("connectors/connector_hv", <immersiveengineering:connector:4> * 4, [
	[null, <ore:ingotAluminum>, null],
	[<thebetweenlands:mud_bricks>, <ore:ingotAluminum>, <thebetweenlands:mud_bricks>],
	[<thebetweenlands:mud_bricks>, <ore:ingotAluminum>, <thebetweenlands:mud_bricks>]
]);

recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}));
scripts.utils.addShapeless("conveyors/conveyor_dropper", <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <thebetweenlands:syrmorite_trapdoor>]);

recipes.remove(<immersiveengineering:connector:11>);
scripts.utils.addShaped("connectors/current_transformer", <immersiveengineering:connector:11>, [
	[null, <immersiveengineering:tool:2>, null], 
	[<thebetweenlands:mud_bricks>, <immersiveengineering:metal_decoration0>, <thebetweenlands:mud_bricks>], 
	[<ore:ingotIron>, <immersiveengineering:metal_decoration0>, <ore:ingotIron>]
]);

recipes.remove(<immersiveengineering:connector:12>);
scripts.utils.addShaped("connectors/connector_redstone", <immersiveengineering:connector:12> * 4, [
	[<ore:nuggetElectrum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>], 
	[<thebetweenlands:mud_bricks>, null, <thebetweenlands:mud_bricks>]
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

recipes.remove(<immersiveengineering:metal_decoration0:7>);
scripts.utils.addShaped("metal_decoration/radiator", <immersiveengineering:metal_decoration0:7> * 2, [
	[<ore:ingotSteel>, <ore:ingotCopper>, <ore:ingotSteel>], 
	[<ore:ingotCopper>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}), <ore:ingotCopper>], 
	[<ore:ingotSteel>, <ore:ingotCopper>, <ore:ingotSteel>]
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
	[<ore:ingotSilver>, <ore:nuggetSilver>, <ore:ingotSilver>], 
	[<ore:ingotSilver>, null, <ore:ingotSilver>]
]);

scripts.utils.addShaped("hemp_coil", <immersiveengineering:wirecoil:3> * 4, [
	[null, <clothesline:clothesline>, null], 
	[<clothesline:clothesline>, <pyrotech:material:23>, <clothesline:clothesline>],
	[null, <clothesline:clothesline>, null]
]);

scripts.utils.addShapeless("string_ie", <minecraft:string>, 
	[<immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>]
);




Blueprint.removeRecipe(<immersiveengineering:mold:0>);
Blueprint.removeRecipe(<immersiveengineering:mold:1>);
Blueprint.removeRecipe(<immersiveengineering:mold:2>);
Blueprint.removeRecipe(<immersiveengineering:mold:3>);
Blueprint.removeRecipe(<immersiveengineering:mold:4>);
Blueprint.removeRecipe(<immersiveengineering:mold:5>);
Blueprint.removeRecipe(<immersiveengineering:mold:6>);
Blueprint.removeRecipe(<immersiveengineering:mold:7>);
Blueprint.removeRecipe(<immersiveengineering:graphite_electrode>);

Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:0> * 4, [<immersiveengineering:material>, <immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>]);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:1> * 4, [<immersiveengineering:material>, <immersiveengineering:material:21>, <immersiveengineering:material:21>, <immersiveengineering:material:21>, <immersiveengineering:material:21>]);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:2> * 4, [<immersiveengineering:material>, <immersiveengineering:material:22>, <immersiveengineering:material:22>, <immersiveengineering:material:23>, <immersiveengineering:material:23>]);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:3> * 4, [<immersiveengineering:material>, <clothesline:clothesline>, <clothesline:clothesline>]);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:5> * 4, [<immersiveengineering:material>, <immersiveengineering:material:22>, <immersiveengineering:material:22>, <betweenlandsredstone:scabyst_dust>, <betweenlandsredstone:scabyst_dust>]);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:6>, [<immersiveengineering:wirecoil:0>, <immersiveengineering:material:5>]);
Blueprint.addRecipe("Wires", <immersiveengineering:wirecoil:7>, [<immersiveengineering:wirecoil:1>, <immersiveengineering:material:5>]);


BlastFurnace.removeAll();
BlastFurnace.addRecipe(<immersiveengineering:metal:8>, <minecraft:iron_ingot>, 4000, <pyrotech:slag>);

BlastFurnace.removeFuel(<immersiveengineering:material:6>);

BlastFurnace.addFuel(<embers:shard_ember>, 800);
BlastFurnace.addFuel(<thebetweenlands:items_misc:45>, 2000);
BlastFurnace.addFuel(<embers:crystal_ember>, 4800);
BlastFurnace.addFuel(<thebetweenlands:octine_ingot>, 8000);


CokeOven.removeAll();
CokeOven.addRecipe(<thebetweenlands:items_misc:18>, 4, <pyrotech:log_pile>, 6000);


MetalPress.removeRecipeByMold(<immersiveengineering:mold:0>);
MetalPress.removeRecipeByMold(<immersiveengineering:mold:1>);
MetalPress.removeRecipeByMold(<immersiveengineering:mold:2>);
MetalPress.removeRecipeByMold(<immersiveengineering:mold:4>);
MetalPress.removeRecipeByMold(<immersiveengineering:mold:7>);



// Bottling Machine
val bottlingRecipesToRemove = [
	<minecraft:sponge:1>,
	<minecraft:potion>.withTag({Potion: "simpledifficulty:long_heat_resist_type"}),
	<minecraft:potion>.withTag({Potion: "simpledifficulty:long_cold_resist_type"}),
	<minecraft:potion>.withTag({Potion: "simpledifficulty:heat_resist_type"}),
	<minecraft:potion>.withTag({Potion: "simpledifficulty:cold_resist_type"}),
	<minecraft:potion>.withTag({Potion: "pizzacraft:eye_irritation"}),
	<minecraft:potion>.withTag({Potion: "pizzacraft:long_eye_irritation"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_weakness"}),
	<minecraft:potion>.withTag({Potion: "minecraft:weakness"}),
	<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_strength"}),
	<minecraft:potion>.withTag({Potion: "minecraft:strength"}),
	<minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_regeneration"}),
	<minecraft:potion>.withTag({Potion: "minecraft:regeneration"}),
	<minecraft:potion>.withTag({Potion: "minecraft:strong_poison"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_poison"}),
	<minecraft:potion>.withTag({Potion: "minecraft:poison"}),
	<minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),
	<minecraft:potion>.withTag({Potion: "minecraft:harming"}),
	<minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}),
	<minecraft:potion>.withTag({Potion: "minecraft:healing"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}),
	<minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}),
	<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),
	<minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}),
	<minecraft:potion>.withTag({Potion: "minecraft:slowness"}),
	<minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_leaping"}),
	<minecraft:potion>.withTag({Potion: "minecraft:leaping"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}),
	<minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_invisibility"}),
	<minecraft:potion>.withTag({Potion: "minecraft:invisibility"}),
	<minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"}),
	<minecraft:potion>.withTag({Potion: "minecraft:night_vision"}),
	<minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
	<minecraft:potion>.withTag({Potion: "minecraft:thick"}),
	<minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
] as IItemStack[];

for recipe in bottlingRecipesToRemove {
	BottlingMachine.removeRecipe(recipe);
}


BottlingMachine.addRecipe(<simpledifficulty:purified_water_bottle>, <minecraft:glass_bottle>, <liquid:clean_water> * 125);
BottlingMachine.addRecipe(<simpledifficulty:canteen>.withTag({Doses: 3, CanteenType: 3}), <simpledifficulty:canteen>.withTag({Doses: 0, CanteenType: 0}), <liquid:clean_water> * 4000);
BottlingMachine.addRecipe(<simpledifficulty:iron_canteen>.withTag({Doses: 7, CanteenType: 3}), <simpledifficulty:iron_canteen>.withTag({Doses: 0, CanteenType: 0}), <liquid:clean_water> * 8000);

BottlingMachine.addRecipe(<thebetweenlands:aspect_vial>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byrginaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 5000}}]}}), <thebetweenlands:dentrothyst_vial>, <liquid:clean_water> * 125);

<immersiveengineering:stone_decoration:2>.displayName = "Reinforced Archaic Bricks";
<immersiveengineering:mold:2>.displayName = "Rod Stamp";
<immersiveengineering:mold:4>.displayName = "Wire Stamp";


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