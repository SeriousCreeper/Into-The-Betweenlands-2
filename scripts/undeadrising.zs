val allItems = loadedMods["mod_lavacow"].items;


for item in allItems {
	recipes.remove(item);
	furnace.remove(item);
	item.removeAspects(allAspects);
}