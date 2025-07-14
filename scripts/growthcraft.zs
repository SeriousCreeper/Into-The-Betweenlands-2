import mods.jei.JEI;
import crafttweaker.item.IItemStack;


val subModNames = [
	"growthcraft",
	"growthcraft_bees",
	"growthcraft_milk",
	"growthcraft_cellar",
	"growthcraft_bamboo",
	"growthcraft_rice",
	"growthcraft_hops",
	"growthcraft_grapes",
	"growthcraft_fishtrap",
	"growthcraft_apples",
] as string[];

val itemsToKeep = [
	<growthcraft:salt>,
	<growthcraft_bees:honey_jar>,
	<growthcraft_bees:honey_comb_empty>,
	<growthcraft_bees:honey_comb_filled>,
	<growthcraft_bees:bee>,
	<growthcraft_bees:bees_wax:*>,
	<growthcraft_bees:beebox>,
	<growthcraft_bees:beehive>,
	<growthcraft_bees:bottlefluid_honey>,
	<growthcraft_cellar:brew_kettle>,
	<growthcraft_cellar:culture_jar>,
	<growthcraft_milk:cheese_cloth>,
	<growthcraft_milk:cheese_vat>,
	<growthcraft_milk:pancheon>,
	<growthcraft_milk:churn>,
	<growthcraft_milk:cheese_press>,
	<growthcraft_milk:butter:*>,
	<growthcraft_milk:ice_cream:*>,
	<growthcraft_milk:yogurt:*>,
	<growthcraft_milk:cheese_aged_slice:*>,
	<growthcraft_milk:cheese_waxed_slice:*>,
	<growthcraft_milk:cheese_simple_slice:*>,
	<growthcraft_milk:cheese_aged:*>,
	<growthcraft_milk:cheese_waxed:*>,
	<growthcraft_milk:curds_aged:*>,
	<growthcraft_milk:curds_waxed:*>,
	<growthcraft_milk:curds_simple:*>,
	<growthcraft_milk:starter_culture>,
	<growthcraft_milk:yogurt>,
	<growthcraft_milk:yogurt:1>,
	<growthcraft_milk:yogurt:3>,
	<growthcraft_milk:yogurt:4>,
] as IItemStack[];

for mod in subModNames {
	val loadedModItems = loadedMods[mod].items;

	for item in loadedModItems {
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

val honeyBucket = <thebetweenlands:bl_bucket:0>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 1000}}).transformReplace(<thebetweenlands:bl_bucket:0>) |
				  <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 1000}}).transformReplace(<thebetweenlands:bl_bucket:1>);

recipes.remove(<forge:bucketfilled>.withTag({FluidName: "fluid_honey", Amount: 1000}));

//recipes.removeByRecipeName("growthcraft_bees:beewax_normal");

recipes.remove(<growthcraft_milk:yogurt>);
recipes.remove(<growthcraft_milk:yogurt:1>);
recipes.remove(<growthcraft_milk:yogurt:3>);
recipes.remove(<growthcraft_milk:yogurt:4>);
scripts.utils.addShapeless("mud_yogurt", <growthcraft_milk:yogurt:1>, [<growthcraft_milk:yogurt>, <thebetweenlands:sludge_ball>]);
scripts.utils.addShapeless("white_pear_yogurt", <growthcraft_milk:yogurt:3>, [<growthcraft_milk:yogurt>, <thebetweenlands:middle_fruit>]);
scripts.utils.addShapeless("honey_yogurt", <growthcraft_milk:yogurt:4>, [<growthcraft_milk:yogurt>, <growthcraft_bees:honey_jar>.giveBack(<thebetweenlands:mud_flower_pot>)]);


recipes.remove(<growthcraft_milk:pancheon>);
scripts.utils.addShaped("pancheon", <growthcraft_milk:pancheon>, [
	[<thebetweenlands:items_misc:27>, null, <thebetweenlands:items_misc:27>],
	[<thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:27>, <thebetweenlands:items_misc:10>], 
	[<thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:10>]
]);


recipes.remove(<growthcraft_cellar:brew_kettle>);
scripts.utils.addShaped("brew_kettle", <growthcraft_cellar:brew_kettle>, [
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>]
]);

recipes.remove(<growthcraft_bees:bottlefluid_honey>);
scripts.utils.addShapeless("honey_comb_filled_3", <growthcraft_bees:bottlefluid_honey> * 2, [<growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <minecraft:glass_bottle:*>, <minecraft:glass_bottle:*>]);


/*
scripts.utils.addShapeless("honey_comb_filled_3_2", <bladditions:dentrothyst_fluid_vial:1>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 250}}), 
	[<growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <thebetweenlands:dentrothyst_vial:2>]
);
*/

recipes.remove(<growthcraft_bees:honey_jar>);
scripts.utils.addShapeless("honey_comb_filled_1", <growthcraft_bees:honey_jar>, [<growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <thebetweenlands:mud_flower_pot>]);

recipes.remove(<growthcraft_milk:cheese_press>);
scripts.utils.addShaped("cheese_press", <growthcraft_milk:cheese_press>, [
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <pyrotech:crate>, <thebetweenlands:items_misc:11>], 
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);


recipes.remove(<growthcraft_cellar:culture_jar>);
scripts.utils.addShaped("culture_jar", <growthcraft_cellar:culture_jar>, [
	[<thebetweenlands:dentrothyst_shard_green>, <ore:plankWood>, <thebetweenlands:dentrothyst_shard_green>], 
	[<thebetweenlands:dentrothyst_shard_green>, null, <thebetweenlands:dentrothyst_shard_green>], 
	[<thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:dentrothyst_shard_green>]
]);

recipes.remove(<growthcraft_bees:beebox>);
scripts.utils.addShaped("beebox", <growthcraft_bees:beebox>, [
	[null, <pyrotech:material:23>, null], 
	[<pyrotech:material:23>, null, <pyrotech:material:23>], 
	[<pyrotech:material:23>, <pyrotech:material:23>, <pyrotech:material:23>]
]);

recipes.remove(<growthcraft_milk:cheese_simple_slice>);
scripts.utils.addShapeless("ricotta_bowl", <growthcraft_milk:cheese_simple_slice> * 4, [<growthcraft_milk:curds_simple:24>.withTag({te_curd_block: {cheese_name: "ricotta", cheese_modid: "growthcraft_milk"}}), <thebetweenlands:items_misc:22>, <thebetweenlands:items_misc:22>, <thebetweenlands:items_misc:22>, <thebetweenlands:items_misc:22>]);



<growthcraft_bees:bee>.maxStackSize = 8;

<growthcraft_bees:bee>.displayName = "Swambee";