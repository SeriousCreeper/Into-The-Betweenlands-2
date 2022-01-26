import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val itemsToKeep = [
] as IItemStack[];

val basketItems = loadedMods["primallib"].items;

for item in basketItems {
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