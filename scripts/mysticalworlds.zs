import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val mwItems = loadedMods["mysticalworld"].items;

val itemsToKeep = [
	//<mysticalworld:silk_cocoon>,
	//<mysticalworld:silk_thread>,
	<mysticalworld:spindle>,
	//<mysticalworld:silkworm_egg>,
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
recipes.remove(<patchouli:guide_book>.withTag({"patchouli:book": "mysticalworld:world_guide"}));