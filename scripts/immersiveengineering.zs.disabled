import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


val itemsToRemove = [
	<immersiveengineering:stone_decoration:0>
] as IItemStack[];

for item in itemsToRemove {
	JEI.removeAndHide(item);
	item.removeAspects(allAspects);
}

recipes.remove(<immersiveengineering:metal:29>);
recipes.remove(<immersiveengineering:stone_decoration>);

recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShaped("wooden_devices/workbench", <immersiveengineering:wooden_device0:2>, [
	[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], 
	[<thebetweenlands:weedwood_workbench>, null, <ore:fenceTreatedWood>]
]);

recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped("stone_decoration/blastbrick", <immersiveengineering:stone_decoration:1> * 3, [
	[<pyrotech:material:5>, <thebetweenlands:items_misc:10>, <pyrotech:material:5>], 
	[<thebetweenlands:items_misc:10>, <thebetweenlands:wisp>, <thebetweenlands:items_misc:10>], 
	[<pyrotech:material:5>, <thebetweenlands:items_misc:10>, <pyrotech:material:5>]
]);


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



<immersiveengineering:metal:39>.displayName = "Syrmorite Plate";
<immersiveengineering:metal:40>.displayName = "Octine Plate";