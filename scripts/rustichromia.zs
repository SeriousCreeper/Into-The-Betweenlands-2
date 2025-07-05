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
    //<rustichromia:crank>,
    <rustichromia:disk_stone>,
    <rustichromia:disk_sandstone>,
    <rustichromia:disk_red_sandstone>,
    <rustichromia:hopper_wood>,
    <rustichromia:assembler1>,
    <rustichromia:assembler2>,
    <rustichromia:assembler3>,
    <rustichromia:windmill_blade>
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

recipes.remove(<rustichromia:windmill_big>);
scripts.utils.addShaped("windmill_big", <rustichromia:windmill_big>, [
    [null, <rustichromia:windmill_blade>, null], 
    [<rustichromia:windmill_blade>, <mystgears:gear_syrmorite>, <rustichromia:windmill_blade>], 
    [null, <rustichromia:windmill_blade>, null]
]);

recipes.remove(<rustichromia:assembler1>);
scripts.utils.addShaped("assembler1", <rustichromia:assembler2>, [
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

// Tier 1
Assembler.add("assembler1", 1, [
    <mystgears:gear_wood> * 2,
    <thebetweenlands:weedwood_planks> * 2
], [
    <rustichromia:assembler2>
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

recipes.remove(<mystgears:mechanical_dial>);
Assembler.add("mechanical_dial", 1, [
    <mystgears:gear_wood> * 2,
    <thebetweenlands:items_misc:32>,
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
    <pyrotech:mechanical_hopper>,
    <pyrotech:cog_bone>,
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



// Tier 2
recipes.remove(<thebetweenlands:weedwood_workbench>);
Assembler.add("weedwood_workbench", 2, [
    <thebetweenlands:weedwood_planks> * 4,
    <thebetweenlands:octine_ingot> * 2
], [
    <thebetweenlands:weedwood_workbench>
], defaultLower, defaultUpper, defaultAssemblerTime);

Assembler.add("assembler2", 2, [
    <mystgears:gear_lead> * 2,
    <embers:plate_lead> * 2
], [
    <rustichromia:assembler2>
], defaultLower, defaultUpper, defaultAssemblerTime);


<rustichromia:windmill>.displayName = "Small Windmill";
<rustichromia:windmill_big>.displayName = "Medium Windmill";
<rustichromia:assembler1>.displayName = "Basic Assembler";
<rustichromia:assembler2>.displayName = "Advanced Assembler";