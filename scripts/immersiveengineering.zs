import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;


static itemsToRemove as IItemStack[] = [
	<immersiveengineering:ore>,
	<immersiveengineering:ore:1>,
	<immersiveengineering:ore:2>,
	<immersiveengineering:ore:3>,
	<immersiveengineering:ore:4>,
	<immersiveengineering:ore:5>,
	<immersiveengineering:storage>,
	<immersiveengineering:storage:1>,
	<immersiveengineering:storage:2>,
	<immersiveengineering:storage:3>,
	<immersiveengineering:storage:4>,
	<immersiveengineering:storage:7>,
	<immersiveengineering:storage_slab>,
	<immersiveengineering:storage_slab:1>,
	<immersiveengineering:storage_slab:2>,
	<immersiveengineering:storage_slab:3>,
	<immersiveengineering:storage_slab:4>,
	<immersiveengineering:storage_slab:7>,
	<immersiveengineering:stone_decoration:3>,
	<immersiveengineering:material:6>,
	<immersiveengineering:material:7>,
	<immersiveengineering:material:17>,
	<immersiveengineering:material:24>,
	<immersiveengineering:material:25>,
	<immersiveengineering:metal>,
	<immersiveengineering:metal:1>,
	<immersiveengineering:metal:2>,
	<immersiveengineering:metal:3>,
	<immersiveengineering:metal:4>,
	<immersiveengineering:metal:7>,
	<immersiveengineering:metal:9>,
	<immersiveengineering:metal:10>,
	<immersiveengineering:metal:11>,
	<immersiveengineering:metal:12>,
	<immersiveengineering:metal:13>,
	<immersiveengineering:metal:15>,
	<immersiveengineering:metal:14>,
	<immersiveengineering:metal:16>,
	<immersiveengineering:metal:17>,
	<immersiveengineering:metal:18>,
	<immersiveengineering:metal:19>,
	<immersiveengineering:metal:20>,
	<immersiveengineering:metal:21>,
	<immersiveengineering:metal:22>,
	<immersiveengineering:metal:23>,
	<immersiveengineering:metal:24>,
	<immersiveengineering:metal:27>,
	<immersiveengineering:metal:28>,
	<immersiveengineering:metal:29>,
	<immersiveengineering:metal:30>,
	<immersiveengineering:metal:31>,
	<immersiveengineering:metal:32>,
	<immersiveengineering:metal:33>,
	<immersiveengineering:metal:34>,
	<immersiveengineering:metal:37>,
	<immersiveengineering:metal:40>,
	<immersiveengineering:metal:39>,
] as IItemStack[];

for item in itemsToRemove {
	JEI.removeAndHide(item);
	item.removeAspects(allAspects);
}

//recipes.remove(<immersiveengineering:metal:29>);
//recipes.remove(<immersiveengineering:stone_decoration>);

recipes.remove(<immersiveengineering:bullet>);
recipes.remove(<alternatingflux:material>);
recipes.remove(<immersiveengineering:material:20>);
recipes.remove(<immersiveengineering:material:21>);
recipes.remove(<immersiveengineering:material:22>);
recipes.remove(<immersiveengineering:material:23>);

recipes.remove(<immersiveengineering:wooden_device0:2>);
scripts.utils.addShaped("wooden_devices/workbench", <immersiveengineering:wooden_device0:2>, [
	[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>], 
	[<thebetweenlands:weedwood_workbench>, null, <ore:fenceTreatedWood>]
]);

recipes.remove(<immersiveengineering:stone_decoration:1>);
//scripts.utils.addShaped("stone_decoration/blastbrick", <immersiveengineering:stone_decoration:1> * 3, [
//	[<pyrotech:material:5>, <thebetweenlands:items_misc:10>, <pyrotech:material:5>], 
//	[<thebetweenlands:items_misc:10>, <thebetweenlands:wisp>, <thebetweenlands:items_misc:10>], 
//	[<pyrotech:material:5>, <thebetweenlands:items_misc:10>, <pyrotech:material:5>]
//]);

recipes.remove(<immersiveengineering:stone_decoration:8>);
scripts.utils.addShaped("stone_decoration/insulating_glass", <immersiveengineering:stone_decoration:8> * 3, [
	[null, <ore:blockGlass>, null], 
	[<embers:dust_ember>, <thebetweenlands:dye:11>, <embers:dust_ember>], 
	[null, <ore:blockGlass>, null]
]);

recipes.remove(<immersiveengineering:material:1>);
scripts.utils.addShaped("material/stick_iron", <immersiveengineering:material:8>, [
	[<ore:ingotIron>], 
	[<ore:ingotIron>], 
	[<ore:ingotIron>]
]);

recipes.remove(<immersiveengineering:material:2>);
scripts.utils.addShaped("material/stick_steel", <immersiveengineering:material:2>, [
	[<ore:ingotSteel>], 
	[<ore:ingotSteel>], 
	[<ore:ingotSteel>]
]);

recipes.remove(<immersiveengineering:material:3>);
scripts.utils.addShaped("material/stick_aluminum", <immersiveengineering:material:3>, [
	[<ore:ingotAluminum>], 
	[<ore:ingotAluminum>], 
	[<ore:ingotAluminum>]
]);

recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");
recipes.addShaped("treated_wood_treated_wood", <immersiveengineering:treated_wood> * 8, [
	[<roots:wildwood_planks>, <roots:wildwood_planks>, <roots:wildwood_planks>], 
	[<roots:wildwood_planks>, <thebetweenlands:bl_bucket_fish_oil:0>.transformReplace(<thebetweenlands:bl_bucket:0>), <roots:wildwood_planks>], 
	[<roots:wildwood_planks>, <roots:wildwood_planks>, <roots:wildwood_planks>]
]);
recipes.addShaped("treated_wood_treated_wood2", <immersiveengineering:treated_wood> * 8, [
	[<roots:wildwood_planks>, <roots:wildwood_planks>, <roots:wildwood_planks>], 
	[<roots:wildwood_planks>, <thebetweenlands:bl_bucket_fish_oil:1>.transformReplace(<thebetweenlands:bl_bucket:1>), <roots:wildwood_planks>], 
	[<roots:wildwood_planks>, <roots:wildwood_planks>, <roots:wildwood_planks>]
]);

recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick_reinforced");
scripts.utils.addShapeless("stone_decoration/blastbrick_reinforced", <immersiveengineering:stone_decoration:2>, 
	[<ore:plateIron>, <embers:archaic_bricks>]
);



BlastFurnace.removeAll();
BlastFurnace.addRecipe(<immersiveengineering:metal:8>, <minecraft:iron_ingot>, 4000, <pyrotech:slag>);

BlastFurnace.removeFuel(<immersiveengineering:material:6>);

BlastFurnace.addFuel(<embers:shard_ember>, 800);
BlastFurnace.addFuel(<thebetweenlands:items_misc:45>, 2000);
BlastFurnace.addFuel(<embers:crystal_ember>, 4800);
BlastFurnace.addFuel(<thebetweenlands:octine_ingot>, 8000);


CokeOven.removeAll();
CokeOven.addRecipe(<thebetweenlands:items_misc:18>, 4, <pyrotech:log_pile>, 6000);




<immersiveengineering:stone_decoration:2>.displayName = "Reinforced Archaic Bricks";



//val platesToReplace = {
//	<immersiveengineering:metal:30> : <immersiveengineering:metal:0>, 
//	<immersiveengineering:metal:31> : <immersiveengineering:metal:1>, 
//	<immersiveengineering:metal:32> : <immersiveengineering:metal:2>, 
//	<immersiveengineering:metal:33> : <immersiveengineering:metal:3>, 
//	<immersiveengineering:metal:34> : <immersiveengineering:metal:4>, 
//	<immersiveengineering:metal:35> : <immersiveengineering:metal:5>, 
//	<immersiveengineering:metal:36> : <immersiveengineering:metal:6>, 
//	<immersiveengineering:metal:37> : <immersiveengineering:metal:7>, 
//	<immersiveengineering:metal:38> : <immersiveengineering:metal:8>, 
//	<immersiveengineering:metal:39> : <thebetweenlands:items_misc:11>, 
//	<immersiveengineering:metal:40> : <thebetweenlands:octine_ingot>, 
//} as IItemStack[IItemStack];


//for plate in platesToReplace {
//	recipes.remove(plate);
//	scripts.utils.addShapeless(plate, [platesToReplace[plate], platesToReplace[plate], platesToReplace[plate], <immersiveengineering:tool>.transformDamage()]);
//}



//<immersiveengineering:metal:39>.displayName = "Syrmorite Plate";
//<immersiveengineering:metal:40>.displayName = "Octine Plate";