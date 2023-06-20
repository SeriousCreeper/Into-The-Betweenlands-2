import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val itemsToKeep = [
	<spartanweaponry:quiver_bolt>,
	<spartanweaponry:quiver_bolt_moderate>,
	<spartanweaponry:quiver_bolt_heavy>,
	<spartanweaponry:bolt>,
	<spartanweaponry:bolt_diamond>,
	<spartanweaponry:bolt_spectral>,
] as IItemStack[];

val items = loadedMods["spartanweaponry"].items;

for item in items {
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

