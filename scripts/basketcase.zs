import mods.jei.JEI;
import crafttweaker.item.IItemStack;

scripts.utils.removeAllExcept("basketcase", [
	<basketcase:wicker_small_generic>,
	<basketcase:wicker_medium_generic>,
	<basketcase:wicker_large_generic>,
	<basketcase:basket_medium_generic>,
	<basketcase:basket_large_generic>
]);

recipes.remove(<basketcase:wicker_small_generic>);
scripts.utils.addShaped("wicker_small", <basketcase:wicker_small_generic>, [
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>],
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>]
]);

recipes.remove(<basketcase:wicker_medium_generic>);
scripts.utils.addShaped("wicker_medium", <basketcase:wicker_medium_generic>, [
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>],
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>]
]);

recipes.remove(<basketcase:wicker_large_generic>);
scripts.utils.addShaped("wicker_large", <basketcase:wicker_large_generic>, [
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>],
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>],
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>]
]);


recipes.remove(<basketcase:basket_medium_generic>);
scripts.utils.addShaped("basket_medium_generic", <basketcase:basket_medium_generic>, [
	[<thebetweenlands:swamp_reed_item>, <basketcase:wicker_medium_generic>, <thebetweenlands:swamp_reed_item>], 
	[<basketcase:wicker_medium_generic>, <basketcase:wicker_medium_generic>, <basketcase:wicker_medium_generic>], 
	[<thebetweenlands:swamp_reed_item>, <basketcase:wicker_medium_generic>, <thebetweenlands:swamp_reed_item>]
]);

recipes.remove(<basketcase:basket_large_generic>);
scripts.utils.addShaped("basket_large_generic", <basketcase:basket_large_generic>, [
	[<thebetweenlands:swamp_reed_item>, <basketcase:wicker_large_generic>, <thebetweenlands:swamp_reed_item>], 
	[<basketcase:wicker_large_generic>, <basketcase:wicker_large_generic>, <basketcase:wicker_large_generic>], 
	[<thebetweenlands:swamp_reed_item>, <basketcase:wicker_large_generic>, <thebetweenlands:swamp_reed_item>]
]);
