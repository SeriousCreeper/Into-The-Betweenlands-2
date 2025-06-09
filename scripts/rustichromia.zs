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
    <rustichromia:gear_speckled>,
    <rustichromia:disk_stone>,
    <rustichromia:disk_sandstone>,
    <rustichromia:disk_red_sandstone>,
    <rustichromia:gear_wood>,
    <rustichromia:plate_wood>,
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
scripts.utils.addShaped("rustichromia_windmill_big", <rustichromia:windmill_big>, [
    [null, <rustichromia:windmill_blade>, null], 
    [<rustichromia:windmill_blade>, <ore:gearSyrmorite>, <rustichromia:windmill_blade>], 
    [null, <rustichromia:windmill_blade>, null]
]);

recipes.remove(<rustichromia:mech_torch_toggle>);
scripts.utils.addShaped("rustichromia_mech_torch_toggle", <rustichromia:mech_torch_toggle>, [
    [<thebetweenlands:weedwood_lever>], 
    [<ore:gearWood>], 
    [<rustichromia:axle_wood>]
]);

recipes.remove(<rustichromia:ratiobox>);
scripts.utils.addShaped("rustichromia_ratiobox", <rustichromia:ratiobox>, [
    [null, <thebetweenlands:weedwood_lever>, null], 
    [<ore:slabWood>, <ore:gearWood>, <ore:slabWood>], 
    [null, <ore:slabWood>, null]
]);
