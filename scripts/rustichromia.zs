import crafttweaker.item.IItemStack;
import mods.jei.JEI;

val moddedItems = loadedMods["rustichromia"].items;

val itemsToKeep = [
    <rustichromia:windmill>,
    <rustichromia:windmill_big>,
    <rustichromia:mech_torch>,
    <rustichromia:mech_torch_toggle>,
    <rustichromia:axle_wood>,
    <rustichromia:ratiobox>,
    <rustichromia:crank>,
    <rustichromia:disk_stone>,
    <rustichromia:disk_sandstone>,
    <rustichromia:disk_red_sandstone>,
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

recipes.remove(<rustichromia:windmill_big>);
scripts.utils.addShaped("windmill_big", <rustichromia:windmill_big>, [
    [null, <rustichromia:windmill_blade>, null], 
    [<rustichromia:windmill_blade>, <ore:gearSyrmorite>, <rustichromia:windmill_blade>], 
    [null, <rustichromia:windmill_blade>, null]
]);

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

recipes.remove(<rustichromia:disk_sandstone>);
scripts.utils.addShaped("disk_red_sandstone", <rustichromia:disk_red_sandstone>, [
    [<thebetweenlands:pitstone>, <thebetweenlands:pitstone>, <thebetweenlands:pitstone>],
    [<thebetweenlands:pitstone>, <ore:nuggetSyrmorite>, <thebetweenlands:pitstone>], 
    [<thebetweenlands:pitstone>, <thebetweenlands:pitstone>, <thebetweenlands:pitstone>]
]);
