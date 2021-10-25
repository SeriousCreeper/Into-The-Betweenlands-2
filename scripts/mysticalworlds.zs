import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val mwItems = loadedMods["mysticalworld"].items;

val itemsToKeep = [
	<mysticalworld:silk_cocoon>,
	<mysticalworld:silk_thread>,
	<mysticalworld:spindle>,
	<mysticalworld:silkworm_egg>,
] as IItemStack[];


for item in mwItems {
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


recipes.remove(<mysticalworld:silk_thread>);
recipes.addShapeless("mysticalworld_silk_thread", <mysticalworld:silk_thread> * 2, [<mysticalworld:silk_cocoon>]);
recipes.addShapeless("mysticalworld_silk_thread_spindle", <mysticalworld:silk_thread> * 6, [<mysticalworld:silk_cocoon>, <mysticalworld:spindle:*>]);
recipes.addShapeless("mysticalworld_silk_thread_spindle_test", <mysticalworld:silk_thread> * 6, [<mysticalworld:silk_cocoon>, <mysticalworld:silk_cocoon>, <mysticalworld:spindle:*>.reuse()]);
