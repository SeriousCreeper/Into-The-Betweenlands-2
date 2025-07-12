import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val itemsToRemove = [
	<pizzacraft:knife>,
	<pizzacraft:ham>,
	<pizzacraft:tomato_slice>,
	<pizzacraft:cucumber_slice>,
	<pizzacraft:milk_bottle>,
	<pizzacraft:olive_oil>,
	<pizzacraft:cheese>,
	<pizzacraft:flour>,
	<pizzacraft:flour_corn>,
	<pizzacraft:onion>,
	<pizzacraft:onion_slice>,
	<pizzacraft:pepper>,
	<pizzacraft:olive>,
	<pizzacraft:black_olive>,
	<pizzacraft:pineapple>,
	<pizzacraft:tomato>,
	<pizzacraft:cucumber>,
	<pizzacraft:corn>,
	<pizzacraft:broccoli>,
	<pizzacraft:seed_onion>,
	<pizzacraft:seed_pepper>,
	<pizzacraft:seed_pineapple>,
	<pizzacraft:seed_tomato>,
	<pizzacraft:seed_cucumber>,
	<pizzacraft:seed_corn>,
	<pizzacraft:seed_broccoli>,
	<pizzacraft:slice_10>,
	<pizzacraft:pizza_10>,
	<pizzacraft:raw_pizza_10>,
	<pizzacraft:pizza_board_10>,
	<pizzacraft:olive_log>,
	<pizzacraft:olive_leaves>,
	<pizzacraft:olive_leaves_growing>,
	<pizzacraft:olive_sapling>,
	<pizzacraft:olive_planks>,
	<pizzacraft:chopping_board>,
	<pizzacraft:mortar_and_pestle>,
	<pizzacraft:cardboard>,
] as IItemStack[];


for item in itemsToRemove {
	JEI.removeAndHide(item);
	item.removeAspects(allAspects);
}

val waterBucket = <thebetweenlands:bl_bucket:0>.withTag({Fluid: {FluidName: "clean_water", Amount: 1000}}).transformReplace(<thebetweenlands:bl_bucket:0>) |
				  <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "clean_water", Amount: 1000}}).transformReplace(<thebetweenlands:bl_bucket:1>);


recipes.remove(<pizzacraft:pizza_oven>);
scripts.utils.addShaped("pizza_oven", <pizzacraft:pizza_oven>, [
	[<thebetweenlands:betweenstone_tiles>, <thebetweenlands:betweenstone_tiles>, <thebetweenlands:betweenstone_tiles>], 
	[<thebetweenlands:items_misc:10>, null, <thebetweenlands:items_misc:10>], 
	[<thebetweenlands:betweenstone_tiles>, <thebetweenlands:betweenstone_tiles>, <thebetweenlands:betweenstone_tiles>]
]);

recipes.remove(<pizzacraft:peel>);
scripts.utils.addShaped("peel", <pizzacraft:peel>, [
	[null, null, <thebetweenlands:items_misc:11>], 
	[null, <thebetweenlands:items_misc:20>, null], 
	[<thebetweenlands:items_misc:20>, null, null]
]);

recipes.remove(<pizzacraft:paper_mass>);

recipes.remove(<pizzacraft:white_cloth>);
scripts.utils.addShaped("white_cloth", <pizzacraft:white_cloth> * 3, [
	[<minecraft:string>, <thebetweenlands:shelf_fungus>, <minecraft:string>], 
	[<thebetweenlands:shelf_fungus>, <minecraft:string>, <thebetweenlands:shelf_fungus>], 
	[<minecraft:string>, <thebetweenlands:shelf_fungus>, <minecraft:string>]
]);

recipes.remove(<pizzacraft:red_cloth>);
scripts.utils.addShapeless("red_cloth", <pizzacraft:red_cloth>, [<pizzacraft:white_cloth>, <minecraft:dye:1>]);


recipes.remove(<pizzacraft:pizza_bag>);
scripts.utils.addShaped("pizza_bag", <pizzacraft:pizza_bag>, [
	[<thebetweenlands:items_misc:11>, <pizzacraft:red_cloth>, <thebetweenlands:items_misc:11>], 
	[<pizzacraft:red_cloth>, <pyrotech:crate>, <pizzacraft:red_cloth>], 
	[<pizzacraft:red_cloth>, <pizzacraft:red_cloth>, <pizzacraft:red_cloth>]
]);


recipes.remove(<pizzacraft:dough>);
recipes.addShaped("dough", <pizzacraft:dough>, [
	[null, <growthcraft_milk:butter>, null], 
	[<growthcraft_bees:bottlefluid_honey>.transformReplace(<minecraft:glass_bottle>), waterBucket, <growthcraft_bees:bottlefluid_honey>.transformReplace(<minecraft:glass_bottle>)], 
	[<thebetweenlands:items_crushed:17>, <thebetweenlands:items_crushed:17>, <thebetweenlands:items_crushed:17>]
]);


recipes.remove(<pizzacraft:bakeware>);
scripts.utils.addShaped("bakeware", <pizzacraft:bakeware>, [
	[null, <ore:ingotSyrmorite>, null], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[null, <ore:ingotSyrmorite>, null]
]);

recipes.remove(<pizzacraft:pizza_box>);
scripts.utils.addShaped("pizza_box", <pizzacraft:pizza_box>, [
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>], 
	[<thebetweenlands:items_misc:32>, null, <thebetweenlands:items_misc:32>],
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
]);



recipes.remove(<pizzacraft:pizza_board>);
scripts.utils.addShaped("pizza_board", <pizzacraft:pizza_board>, [[<thebetweenlands:weedwood_plank_pressure_plate>]]);
