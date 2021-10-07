import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

recipes.remove(<immersiveengineering:metal:29>);



val platesToReplace = {
	<immersiveengineering:metal:30> : <immersiveengineering:metal:0>, 
	<immersiveengineering:metal:31> : <immersiveengineering:metal:1>, 
	<immersiveengineering:metal:32> : <immersiveengineering:metal:2>, 
	<immersiveengineering:metal:33> : <immersiveengineering:metal:3>, 
	<immersiveengineering:metal:34> : <immersiveengineering:metal:4>, 
	<immersiveengineering:metal:35> : <immersiveengineering:metal:5>, 
	<immersiveengineering:metal:36> : <immersiveengineering:metal:6>, 
	<immersiveengineering:metal:37> : <immersiveengineering:metal:7>, 
	<immersiveengineering:metal:38> : <immersiveengineering:metal:8>, 
	<immersiveengineering:metal:39> : <thebetweenlands:items_misc:11>, 
	<immersiveengineering:metal:40> : <thebetweenlands:octine_ingot>, 
} as IItemStack[IItemStack];


for plate in platesToReplace {
	recipes.remove(plate);
	recipes.addShapeless(plate, [platesToReplace[plate], platesToReplace[plate], platesToReplace[plate], <immersiveengineering:tool>.transformDamage()]);
}