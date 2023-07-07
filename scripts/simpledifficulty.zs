import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val itemsToKeep = [
	<simpledifficulty:purified_water_bottle>,
	<simpledifficulty:canteen>,
	<simpledifficulty:iron_canteen>,
	<thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "purifiedwater", Amount: 1000}}),
	<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "purifiedwater", Amount: 1000}}),
	<simpledifficulty:purifiedwater>,
] as IItemStack[];

val items = loadedMods["simpledifficulty"].items;

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

recipes.remove(<simpledifficulty:purified_water_bottle>);
furnace.remove(<simpledifficulty:purified_water_bottle>);

/*
recipes.remove(<simpledifficulty:charcoal_filter>);
scripts.utils.addShaped("charcoal_filter", <simpledifficulty:charcoal_filter> * 3, [
	[<thebetweenlands:items_misc:32>], 
	[<thebetweenlands:items_misc:18>], 
	[<thebetweenlands:items_misc:32>]
]);
*/

recipes.removeByRegex("simpledifficulty:canteen_empty");
scripts.utils.addShaped("canteen_empty", <simpledifficulty:canteen>.withTag({Doses: 0, CanteenType: 0}), [
	[null, <thebetweenlands:items_misc:4>, null], 
	[<thebetweenlands:items_misc:4>, null, <thebetweenlands:items_misc:4>], 
	[<thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:4>, <thebetweenlands:items_misc:4>]
]);

recipes.removeByRegex("simpledifficulty:iron_canteen_empty");
scripts.utils.addShaped("iron_canteen_empty", <simpledifficulty:iron_canteen>.withTag({Doses: 0, CanteenType: 0}), [
	[null, <ore:plateSyrmorite>, null], 
	[<ore:plateSyrmorite>, <simpledifficulty:canteen>.withTag({Doses: 0}), <ore:plateSyrmorite>], 
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateSyrmorite>]
]);



<simpledifficulty:purified_water_bottle>.maxStackSize = 1;