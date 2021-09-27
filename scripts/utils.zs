#priority 997
import crafttweaker.item.IItemStack;

function addBLChangeTooltip(stack as IItemStack, tooltip as string) {
	stack.addTooltip(format.gold(tooltip));
}


function addInfoTooltip(stack as IItemStack, tooltip as string) {
	stack.addTooltip(format.green(tooltip));
}