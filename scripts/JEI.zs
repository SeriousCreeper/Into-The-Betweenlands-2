import mods.jei.JEI;
import crafttweaker.item.IItemStack;


val itemToHide = [
	<thaumcraft:nugget>,
	<thaumcraft:nugget:1>,
	<thaumcraft:nugget:2>,
	<thaumcraft:nugget:3>,
	<thaumcraft:nugget:4>,
] as IItemStack[];


for item in itemToHide {
	JEI.removeAndHide(item);
}