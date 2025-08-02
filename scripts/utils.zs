#priority 997
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thaumcraft.ArcaneWorkbench;
import mods.pyrotech.Stages;
import mods.pyrotech.Worktable;
import mods.jei.JEI;


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

function addShapedWT(name as string, stage as string, output as IItemStack, input as IIngredient[][]) {
	recipes.addShaped(name, output, input);

	Worktable.blacklistVanillaRecipes(["crafttweaker:" ~ name]);

	Worktable.buildShaped(output, input)
		.setName(name)
		.setRecipeGameStages(Stages.and([stage]))
		.register();

	//ArcaneWorkbench.registerShapedRecipe(name, "", 0, [], output, input);
}

function addShapedMirroredWT(name as string, stage as string, output as IItemStack, input as IIngredient[][]) {
	recipes.addShapedMirrored(name, output, input);

	Worktable.blacklistVanillaRecipes(["crafttweaker:" ~ name]);

	Worktable.buildShaped(output, input)
		.setName(name)
		.setRecipeGameStages(Stages.and([stage]))
		.setMirrored(true)
		.register();

	//ArcaneWorkbench.registerShapedRecipe(name, "", 0, [], output, input);
}

function addShapelessWT(name as string, stage as string, output as IItemStack, input as IIngredient[]) {
	recipes.addShapeless(name, output, input);

	Worktable.blacklistVanillaRecipes(["crafttweaker:" ~ name]);

	Worktable.buildShapeless(output, input)
		.setName(name)
		.setRecipeGameStages(Stages.and([stage]))
		.register();

	//ArcaneWorkbench.registerShapelessRecipe(name, "", 0, [], output, input);
}

function removeAll(itemsToKeep as IItemStack[]) {
	for item in itemsToKeep {
		JEI.removeAndHide(item);
		furnace.remove(item);
		item.removeAspects(allAspects);
	}
}

function removeAllExcept(modId as string, itemsToKeep as IItemStack[]) {
	val moddedItems = loadedMods[modId].items;

	for item in moddedItems {
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
}