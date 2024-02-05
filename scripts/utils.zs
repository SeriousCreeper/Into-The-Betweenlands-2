#priority 997
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thaumcraft.ArcaneWorkbench;


function addBLChangeTooltip(stack as IItemStack, tooltip as string) {
	stack.addTooltip(format.gold(tooltip));
}


function addInfoTooltip(stack as IItemStack, tooltip as string) {
	stack.addTooltip(format.green(tooltip));
}


function addShapeless(name as string, output as IItemStack, input as IIngredient[]) {
	recipes.addShapeless(name, output, input);

	//ArcaneWorkbench.registerShapelessRecipe(name, "", 0, [], output, input);
}


function addShaped(name as string, output as IItemStack, input as IIngredient[][]) {
	recipes.addShaped(name, output, input);

	//ArcaneWorkbench.registerShapedRecipe(name, "", 0, [], output, input);
}

function addShapedMirrored(name as string, output as IItemStack, input as IIngredient[][]) {
	recipes.addShapedMirrored(name, output, input);

	//ArcaneWorkbench.registerShapedRecipe(name, "", 0, [], output, input);
}