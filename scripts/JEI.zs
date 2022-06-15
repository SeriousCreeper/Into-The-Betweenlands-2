import mods.jei.JEI;
import crafttweaker.item.IItemStack;


val itemToHide = [
	<thaumcraft:nugget>,
	<thaumcraft:nugget:1>,
	<thaumcraft:nugget:2>,
	<thaumcraft:nugget:3>,
	<thaumcraft:nugget:4>,

	<mod_lavacow:mossy_stick>,

	<itemfilters:filter>,
] as IItemStack[];


for item in itemToHide {
	JEI.removeAndHide(item);
}

val itemsToRemove = [
	<embers:ingot_copper>,
	<embers:block_copper>,
	<embers:plate_copper>,
	<embers:seed_copper>,
	<embers:nugget_copper>,
	<embers:geo_separator>,

	<mystgears:gear_copper>,
] as IItemStack[];


for item in itemsToRemove {
	JEI.removeAndHide(item);
	item.removeAspects(allAspects);
}



