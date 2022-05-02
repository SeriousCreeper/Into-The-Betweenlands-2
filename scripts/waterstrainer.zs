import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val itemsToKeep = [
	<waterstrainer:strainer_base>,
	<waterstrainer:strainer_survivalist>,
	<waterstrainer:strainer_survivalist_solid>
] as IItemStack[];

val items = loadedMods["waterstrainer"].items;

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

recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped("strainer_base", <waterstrainer:strainer_base>, [
	[<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>],
	[<thebetweenlands:weedwood_planks>, <quark:chute>, <thebetweenlands:weedwood_planks>],
	[<thebetweenlands:weedwood_planks>, <pyrotech:crate>, <thebetweenlands:weedwood_planks>]
]);


recipes.remove(<waterstrainer:strainer_survivalist>);
recipes.addShaped("strainer_survivalist", <waterstrainer:strainer_survivalist>, [
	[<thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:14>, <thebetweenlands:items_misc:7>],
	[<thebetweenlands:items_misc:14>, <thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:14>],
	[<thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:14>, <thebetweenlands:items_misc:7>]
]);


recipes.remove(<waterstrainer:strainer_survivalist_solid>);
recipes.addShaped("strainer_survivalist_solid", <waterstrainer:strainer_survivalist_solid>, [
	[null, <thebetweenlands:items_misc:14>, null],
	[<thebetweenlands:items_misc:14>, <dawnoftimebuilder:silk_cocoons>, <thebetweenlands:items_misc:14>],
	[null, <thebetweenlands:items_misc:14>, null]
]);