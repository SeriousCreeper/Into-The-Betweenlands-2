import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.rustichromia.Assembler;

val moddedItems = loadedMods["rustichromia"].items;

val itemsToKeep = [
    <rustichromia:windmill>,
    <rustichromia:windmill_big>,
    <rustichromia:mech_torch>,
    <rustichromia:mech_torch_toggle>,
    <rustichromia:axle_wood>,
    <rustichromia:ratiobox>,
    <rustichromia:disk_stone>,
    <rustichromia:disk_sandstone>,
    <rustichromia:disk_red_sandstone>,
    <rustichromia:hopper_wood>,
    <rustichromia:assembler1>,
    <rustichromia:assembler2>,
    <rustichromia:assembler3>,
    <rustichromia:windmill_blade>,
    <rustichromia:press>
] as IItemStack[];

for item in moddedItems {
	var skip = false;

    for wlItem in itemsToKeep {
    	if(wlItem.matches(item)) {
            skip = true;
            break;
        }
    }

    if(!skip) {
    	JEI.removeAndHide(item);
    	furnace.remove(item);
    	item.removeAspects(allAspects);
    }
}

JEI.removeAndHide(<rustichromia:cart_control:*>);

recipes.remove(<rustichromia:mech_torch_toggle>);
scripts.utils.addShaped("mech_torch_toggle", <rustichromia:mech_torch_toggle>, [
    [<thebetweenlands:weedwood_lever>], 
    [<ore:gearWood>], 
    [<rustichromia:axle_wood>]
]);

recipes.remove(<rustichromia:ratiobox>);
scripts.utils.addShaped("ratiobox", <rustichromia:ratiobox>, [
    [null, <thebetweenlands:weedwood_lever>, null], 
    [<ore:slabWood>, <ore:gearWood>, <ore:slabWood>], 
    [null, <ore:slabWood>, null]
]);

recipes.remove(<rustichromia:disk_stone>);
scripts.utils.addShaped("disk_stone", <rustichromia:disk_stone>, [
    [<thebetweenlands:betweenstone>, <thebetweenlands:betweenstone>, <thebetweenlands:betweenstone>], 
    [<thebetweenlands:betweenstone>, <ore:nuggetSyrmorite>, <thebetweenlands:betweenstone>], 
    [<thebetweenlands:betweenstone>, <thebetweenlands:betweenstone>, <thebetweenlands:betweenstone>]
]);

recipes.remove(<rustichromia:disk_sandstone>);
scripts.utils.addShaped("disk_sandstone", <rustichromia:disk_sandstone>, [
    [<thebetweenlands:limestone>, <thebetweenlands:limestone>, <thebetweenlands:limestone>], 
    [<thebetweenlands:limestone>, <ore:nuggetSyrmorite>, <thebetweenlands:limestone>], 
    [<thebetweenlands:limestone>, <thebetweenlands:limestone>, <thebetweenlands:limestone>]
]);

recipes.remove(<rustichromia:disk_red_sandstone>);
scripts.utils.addShaped("disk_red_sandstone", <rustichromia:disk_red_sandstone>, [
    [<thebetweenlands:pitstone>, <thebetweenlands:pitstone>, <thebetweenlands:pitstone>],
    [<thebetweenlands:pitstone>, <ore:nuggetSyrmorite>, <thebetweenlands:pitstone>], 
    [<thebetweenlands:pitstone>, <thebetweenlands:pitstone>, <thebetweenlands:pitstone>]
]);

recipes.remove(<rustichromia:axle_wood>);
scripts.utils.addShaped("axle_wood", <rustichromia:axle_wood>, [
    [<ore:plankWood>],
    [<ore:stickWood>],
    [<ore:plankWood>]
]);

recipes.remove(<rustichromia:assembler1>);
scripts.utils.addShaped("assembler1", <rustichromia:assembler1>, [
    [<thebetweenlands:weedwood_planks>, <mystgears:gear_wood>, <thebetweenlands:weedwood_planks>], 
    [<mystgears:gear_wood>, <mystgears:gear_wood>, <mystgears:gear_wood>], 
    [<thebetweenlands:weedwood_planks>, <mystgears:gear_wood>, <thebetweenlands:weedwood_planks>]
]);

recipes.remove(<rustichromia:assembler2>);
scripts.utils.addShaped("assembler2", <rustichromia:assembler2>, [
    [<embers:plate_lead>, <mystgears:gear_lead>, <embers:plate_lead>], 
    [<mystgears:gear_lead>, <mystgears:gear_lead>, <mystgears:gear_lead>], 
    [<embers:plate_lead>, <mystgears:gear_lead>, <embers:plate_lead>]
]);


// Assembler
val defaultAssemblerTime = 10 * 20;
val defaultLower = 1;
val defaultUpper = 7;
val assembler2Lower = 7;
val assembler2Upper = 15;

// Tier 1
Assembler.add("assembler1", 1, [
    <mystgears:gear_wood> * 2,
    <thebetweenlands:weedwood_planks> * 2
], [
    <rustichromia:assembler1>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<rustichromia:axle_wood>);
Assembler.add("axle_wood", 1, [
    <ore:plankWood>,
    <ore:stickWood>
], [
    <rustichromia:axle_wood>
], defaultLower, defaultUpper, defaultAssemblerTime);

Assembler.add("gear_wood", 1, [
    <thebetweenlands:weedwood_planks>,
    <thebetweenlands:items_misc:20>,
], [
    <mystgears:gear_wood>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:soaking_pot>);
Assembler.add("soaking_pot", 1, [
    <pyrotech:material:16> * 3,
    <pyrotech:material:20> * 4
], [
    <pyrotech:soaking_pot>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:anvil_granite>);
Assembler.add("anvil_granite", 1, [
    <thebetweenlands:polished_limestone>,
    <thebetweenlands:betweenstone_bricks>
], [
    <pyrotech:anvil_granite>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:anvil_iron_plated>);
Assembler.add("anvil_iron_plated", 1, [
    <thebetweenlands:items_misc:11> * 3,
    <thebetweenlands:pitstone_brick_slab> * 3
], [
    <pyrotech:anvil_iron_plated>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<mcwfurnitures:iron_handle>);
Assembler.add("iron_handle", 1, [
    <thebetweenlands:items_misc:11>
], [
    <mcwfurnitures:iron_handle> * 2
], defaultLower, defaultUpper, defaultAssemblerTime);

Assembler.add("mechanical_dial", 1, [
    <mystgears:gear_wood>,
    <thebetweenlands:items_misc:20>,
], [
    <mystgears:mechanical_dial>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:bloomery>);
Assembler.add("bloomery", 1, [
    <pyrotech:refractory_brick_block> * 7,
], [
    <pyrotech:bloomery>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:brick_oven>);
Assembler.add("brick_oven", 1, [
    <pyrotech:tinder>,
    <pyrotech:refractory_brick_block> * 5,
], [
    <pyrotech:brick_oven>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:brick_sawmill>);
Assembler.add("brick_sawmill", 1, [
    <pyrotech:chopping_block>,
    <pyrotech:refractory_brick_block> * 5,
], [
    <pyrotech:brick_sawmill>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:brick_kiln>);
Assembler.add("brick_kiln", 1, [
    <pyrotech:material:5> * 4,
    <pyrotech:refractory_brick_block> * 4,
    <pyrotech:kiln_pit>
], [
    <pyrotech:brick_kiln>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:compacting_bin>);
Assembler.add("compacting_bin", 1, [
    <pyrotech:material:16> * 4,
    <thebetweenlands:weedwood_planks> * 2,
    <ore:slabWood>
], [
    <pyrotech:compacting_bin>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:bellows>);
Assembler.add("bellows", 1, [
    <pyrotech:material:20> * 2,
    <pyrotech:material:16> * 2,
    <thebetweenlands:items_misc:4> * 2,
    <pyrotech:refractory_brick_block> * 2
], [
    <pyrotech:bellows>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:mechanical_hopper>);
Assembler.add("mechanical_hopper", 1, [
    <pyrotech:material:16> * 3,
    <pyrotech:material:27>,
    <pyrotech:material:23> * 4
], [
    <pyrotech:mechanical_hopper>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:mechanical_bellows>);
Assembler.add("mechanical_bellows", 1, [
    <pyrotech:bellows>,
    <betweenlandsredstone:scabyst_piston>,
    <pyrotech:material:27> * 2,
    <pyrotech:material:23> * 6
], [
    <pyrotech:mechanical_bellows>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:mechanical_compacting_bin>);
Assembler.add("mechanical_compacting_bin", 1, [
    <pyrotech:compacting_bin>,
    <betweenlandsredstone:scabyst_piston>,
    <pyrotech:masonry_brick_block> * 3,
    <pyrotech:material:23> * 8
], [
    <pyrotech:mechanical_compacting_bin>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:mechanical_mulch_spreader>);
Assembler.add("mechanical_mulch_spreader", 1, [
    <pyrotech:mechanical_hopper> * 2,
    <betweenlandsredstone:scabyst_dispenser>,
    <pyrotech:masonry_brick_block> * 3,
    <pyrotech:material:23> * 4
], [
    <pyrotech:mechanical_mulch_spreader>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:trip_hammer>);
Assembler.add("trip_hammer", 1, [
    <mystgears:gear_wood>,
    <pyrotech:material:27> * 4,
    <pyrotech:masonry_brick_block> * 3,
    <pyrotech:material:23> * 4
], [
    <pyrotech:trip_hammer>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:cog_bone>);
Assembler.add("cog_bone", 1, [
    <thebetweenlands:items_misc:14> * 8,
    <pyrotech:material:27>
], [
    <pyrotech:cog_bone>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:cog_gold>);
Assembler.add("cog_gold", 1, [
    <thebetweenlands:items_misc:42> * 8,
    <mcwbridges:iron_rod>
], [
    <pyrotech:cog_gold>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:tongs_bone>);
Assembler.add("tongs_bone", 1, [
    <thebetweenlands:items_misc:14> * 3,
    <pyrotech:material:27> * 2
], [
    <pyrotech:tongs_bone>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:tongs_gold>);
Assembler.add("tongs_gold", 1, [
    <thebetweenlands:octine_ingot> * 3,
    <pyrotech:material:27> * 2
], [
    <pyrotech:tongs_gold>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:bone_hammer>);
Assembler.add("bone_hammer", 1, [
    <thebetweenlands:items_misc:14> * 2,
    <thebetweenlands:items_misc:7>,
    <thebetweenlands:items_misc:20> * 2
], [
    <pyrotech:bone_hammer>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:gold_hammer>);
Assembler.add("gold_hammer", 1, [
    <thebetweenlands:octine_ingot> * 2,
    <thebetweenlands:items_misc:7>,
    <thebetweenlands:items_misc:20> * 2
], [
    <pyrotech:gold_hammer>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:sawmill_blade_bone>);
Assembler.add("sawmill_blade_bone", 1, [
    <thebetweenlands:items_misc:14> * 8,
    <pyrotech:material:16>
], [
    <pyrotech:sawmill_blade_bone>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:sawmill_blade_gold>);
Assembler.add("sawmill_blade_gold", 1, [
    <thebetweenlands:items_misc:42> * 8,
    <thebetweenlands:items_misc:11>
], [
    <pyrotech:sawmill_blade_gold>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:bag_simple>);
Assembler.add("bag_simple", 1, [
    <thebetweenlands:shelf_fungus> * 2,
    <thebetweenlands:items_misc:7>,
    <thebetweenlands:items_misc:4> * 4,
    <pyrotech:stash>
], [
    <pyrotech:bag_simple>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:bag_durable>);
Assembler.add("bag_durable", 1, [
    <thebetweenlands:items_misc:4> * 6,
    <minecraft:string>,
    <pyrotech:stash_stone>,
    <thebetweenlands:octine_ingot>
], [
    <pyrotech:bag_durable>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:stash_stone>);
Assembler.add("stash_stone", 1, [
    <pyrotech:material:16> * 4,
    <pyrotech:material:23> * 4,
    <pyrotech:stash>
], [
    <pyrotech:stash_stone>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:crate_stone>);
Assembler.add("crate_stone", 1, [
    <pyrotech:material:16> * 4,
    <pyrotech:material:23> * 4,
    <pyrotech:crate>
], [
    <pyrotech:crate_stone>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<pyrotech:shelf_stone>);
Assembler.add("shelf_stone", 1, [
    <pyrotech:material:16> * 4,
    <pyrotech:material:23> * 4,
    <pyrotech:shelf>
], [
    <pyrotech:shelf_stone>
], defaultLower, defaultUpper, defaultAssemblerTime);

recipes.remove(<thebetweenlands:weedwood_workbench>);
Assembler.add("weedwood_workbench", 1, [    
    <pyrotech:worktable>,
    <thebetweenlands:octine_ingot> * 2,
], [
    <thebetweenlands:weedwood_workbench>
], defaultLower, defaultUpper, defaultAssemblerTime);

Assembler.add("wooden_scaffold", 1, [
    <thebetweenlands:weedwood_planks> * 2,
    <thebetweenlands:items_misc:20> * 3
], [
    <notenoughscaffold:wooden_scaffold> * 8
], defaultLower, defaultUpper, defaultAssemblerTime);

Assembler.add("crate", 1, [
    <thebetweenlands:weedwood_planks> * 4,
    <thebetweenlands:weedwood_plank_slab>
], [
    <pyrotech:crate>
], defaultLower, defaultUpper, defaultAssemblerTime);

Assembler.add("wood_rack", 1, [
    <thebetweenlands:weedwood_plank_slab> * 2,
    <thebetweenlands:weedwood_ladder>,
    (<thebetweenlands:log_weedwood> | <thebetweenlands:log_weedwood:12> | <thebetweenlands:weedwood>) * 2
], [
    <pyrotech:wood_rack>
], defaultLower, defaultUpper, defaultAssemblerTime);

Assembler.add("shelf", 1, [
    <thebetweenlands:weedwood_plank_slab> * 2,
    <thebetweenlands:weedwood_planks> * 3
], [
    <pyrotech:shelf>
], defaultLower, defaultUpper, defaultAssemblerTime);



// Tier 2

recipes.remove(<rustichromia:windmill_big>);
Assembler.add("windmill_big", 2, [
    <rustichromia:windmill_blade> * 4,
    <mystgears:gear_syrmorite>
], [
    <rustichromia:windmill_big>
], defaultLower, defaultUpper, defaultAssemblerTime);

Assembler.add("assembler2", 2, [
    <mystgears:gear_lead> * 2,
    <embers:plate_lead> * 2
], [
    <rustichromia:assembler2>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<thebetweenlands:syrmorite_hopper>);
Assembler.add("syrmorite_hopper", 2, [
    <thebetweenlands:items_misc:11> * 5,
    <ore:chestWood>
], [
    <thebetweenlands:syrmorite_hopper>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<thebetweenlands:weedwood_chest>);
Assembler.add("weedwood_chest", 2, [
    <thebetweenlands:weedwood_planks> * 8,
    <mcwfurnitures:iron_handle>
], [
    <thebetweenlands:weedwood_chest>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:crystal_cell>);
Assembler.add("crystal_cell", 2, [
    <embers:crystal_ember:*> * 2,
    <embers:plate_dawnstone> * 2,
    <thebetweenlands:octine_block> * 2,
    <ore:blockDawnstone>
], [
    <embers:crystal_cell>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:ember_bore>);
Assembler.add("ember_bore", 2, [
    <embers:stairs_caminite_brick:*> * 4,
    <thebetweenlands:items_misc:11> * 4,
    <embers:mech_core:*>
], [
    <embers:ember_bore>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:heat_coil>);
Assembler.add("heat_coil", 2, [
    <embers:plate_gold> * 3,
    <thebetweenlands:items_misc:11> * 2,
    <thebetweenlands:octine_block>,
    <embers:mech_core:*>
], [
    <embers:heat_coil>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:inferno_forge>);
Assembler.add("inferno_forge", 2, [
    <embers:ingot_dawnstone> * 20,
    <thebetweenlands:octine_block>,
    <embers:block_caminite_brick:*> * 2,
    <embers:wildfire_core:*>
], [
    <embers:inferno_forge>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:large_tank>);
Assembler.add("large_tank", 2, [
    <embers:stairs_caminite_brick:*> * 4,
    <thebetweenlands:items_misc:11> * 2,
    <embers:block_tank:*>
], [
    <embers:large_tank>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:steam_engine>);
Assembler.add("steam_engine", 2, [
    <embers:pipe:*> * 2,
    <mystgears:gear_syrmorite>,
    <embers:plate_gold> * 2,
    <thaumcraft:plate:1> * 3
], [
    <embers:steam_engine>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:block_furnace>);
Assembler.add("block_furnace", 2, [
    <embers:brick_caminite:*> * 4,
    <embers:plate_caminite:*>,
    <thebetweenlands:items_misc:11> * 2,
    <thebetweenlands:sulfur_furnace>
], [
    <embers:block_furnace>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:boiler>);
Assembler.add("boiler", 2, [
    <thebetweenlands:items_misc:11> * 5,
    <thebetweenlands:sulfur_furnace>,
    <thebetweenlands:octine_block>
], [
    <embers:boiler>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:breaker>);
Assembler.add("breaker", 2, [
    <thaumcraft:plate:1> * 2,
    <thebetweenlands:items_misc:11>,
    <embers:ingot_lead> * 3,
    <ore:dustRedstone>
], [
    <embers:breaker>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:cinder_plinth>);
Assembler.add("cinder_plinth", 2, [
    <embers:plate_lead> * 2,
    <embers:ingot_silver> * 2,
    <thebetweenlands:sulfur_furnace>,
    <embers:block_caminite_brick:*>
], [
    <embers:cinder_plinth>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:combustor>);
Assembler.add("combustor", 2, [
    <thebetweenlands:items_misc:11> * 2,
    <embers:plate_gold> * 2,
    <embers:ember_cluster:*>,
    <embers:mech_core:*>
], [
    <embers:combustor>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:copper_cell>);
Assembler.add("copper_cell", 2, [
    <embers:block_caminite_brick:*> * 4,
    <thebetweenlands:items_misc:11> * 4,
    <thebetweenlands:octine_block>
], [
    <embers:copper_cell>.withTag({emberCapacity: 24000.0, ember: 0.0})
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:ember_activator>);
Assembler.add("ember_activator", 2, [
    <thebetweenlands:items_misc:11> * 6,
    <thaumcraft:plate:1> * 2,
    <thebetweenlands:sulfur_furnace>
], [
    <embers:ember_activator>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:ember_siphon>);
Assembler.add("ember_siphon", 2, [
    <embers:wall_caminite_brick> * 2,
    <thebetweenlands:items_misc:11> * 2,
    <embers:plate_silver> * 2,
    <embers:brick_caminite:*> * 3
], [
    <embers:ember_siphon>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:mechanical_pump>);
Assembler.add("mechanical_pump", 2, [
    <embers:pipe:*> * 2,
    <thaumcraft:plate:1> * 4,
    <embers:brick_caminite:*> * 2,
    <embers:pump:*>
], [
    <embers:mechanical_pump>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:mech_accessor>);
Assembler.add("mech_accessor", 2, [
    <embers:stairs_caminite_brick:*>,
    <thaumcraft:plate:1>,
    <thebetweenlands:items_misc:11>
], [
    <embers:mech_accessor>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:mixer>);
Assembler.add("mixer", 2, [
    <thaumcraft:plate:1> * 5,
    <thebetweenlands:items_misc:11> * 2,
    <embers:mech_core:*>
], [
    <embers:mixer>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:reactor>);
Assembler.add("reactor", 2, [
    <thebetweenlands:items_misc:11> * 4,
    <embers:wildfire_core:*>,
    <embers:plate_silver> * 2,
    <embers:block_caminite_brick:*>
], [
    <embers:reactor>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:stamper>);
Assembler.add("stamper", 2, [
    <embers:brick_caminite:*> * 6,
    <thebetweenlands:items_misc:11>,
    <thebetweenlands:syrmorite_block>
], [
    <embers:stamper>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:stamper_base>);
Assembler.add("stamper_base", 2, [
    <thebetweenlands:items_misc:11> * 2,
    <embers:block_caminite_brick:*> * 2,
    <thebetweenlands:bl_bucket:1>.noReturn() | <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn()
], [
    <embers:stamper_base>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:stirling>);
Assembler.add("stirling", 2, [
    <embers:plate_dawnstone> * 4,
    <thebetweenlands:octine_block> * 2,
    <embers:shard_ember:*> * 2,
    <embers:wildfire_core:*>
], [
    <embers:stirling>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:mech_actuator>);
Assembler.add("mech_actuator", 2, [
    <mysticalmechanics:axle_iron:*> * 3,
    <mystgears:gear_syrmorite>,
    <embers:mech_accessor:*>
], [
    <embers:mech_actuator>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:mech_actuator_single>);
Assembler.add("mech_actuator_single", 2, [
    <embers:mech_accessor:*>,
    <mystgears:gear_syrmorite>,
    <mysticalmechanics:axle_iron:*>
], [
    <embers:mech_actuator_single>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:charger>);
Assembler.add("charger", 2, [
    <thaumcraft:plate:1>,
    <embers:ingot_dawnstone> * 2,
    <thebetweenlands:items_misc:11> * 2,
    <embers:plate_gold>
], [
    <embers:charger>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:field_chart>);
Assembler.add("field_chart", 2, [
    <embers:archaic_brick:*> * 8,
    <embers:ember_cluster:*>
], [
    <embers:field_chart>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:ember_injector>);
Assembler.add("ember_injector", 2, [
    <embers:ingot_silver> * 3,
    <embers:plate_dawnstone> * 2,
    <embers:wildfire_core:*>,
    <embers:block_caminite_brick:*> * 2
], [
    <embers:ember_injector>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:stone_edge>);
Assembler.add("stone_edge", 2, [
    <embers:wall_caminite_brick> * 4,
    <embers:brick_caminite:*> * 2
], [
    <embers:stone_edge>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);

recipes.remove(<embers:stone_valve>);
Assembler.add("stone_valve", 2, [
    <embers:wall_caminite_brick> * 6,
    <embers:mech_accessor:*> * 2
], [
    <embers:stone_valve>
], assembler2Lower, assembler2Upper, defaultAssemblerTime);



<rustichromia:windmill>.displayName = "Small Windmill";
<rustichromia:windmill_big>.displayName = "Medium Windmill";
<rustichromia:assembler1>.displayName = "Basic Assembler";
<rustichromia:assembler2>.displayName = "Advanced Assembler";