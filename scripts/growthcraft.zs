
val honeyBucket = <thebetweenlands:bl_bucket:0>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 1000}}).transformReplace(<thebetweenlands:bl_bucket:0>) |
				  <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 1000}}).transformReplace(<thebetweenlands:bl_bucket:1>);

recipes.remove(<forge:bucketfilled>.withTag({FluidName: "fluid_honey", Amount: 1000}));


recipes.remove(<growthcraft_milk:pancheon>);
recipes.addShaped("pancheon", <growthcraft_milk:pancheon>, [
	[<thebetweenlands:items_misc:27>, null, <thebetweenlands:items_misc:27>],
	[<thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:27>, <thebetweenlands:items_misc:10>], 
	[<thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:10>]
]);


recipes.remove(<growthcraft_cellar:brew_kettle>);
recipes.addShaped("brew_kettle", <growthcraft_cellar:brew_kettle>, [
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>]
]);


recipes.remove(<growthcraft_bees:bottlefluid_honey>);
recipes.addShapeless("fluid_honey_to_bottles", <bladditions:dentrothyst_fluid_vial>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 250}}) * 4, 
	[honeyBucket, <thebetweenlands:dentrothyst_vial>, <thebetweenlands:dentrothyst_vial>, <thebetweenlands:dentrothyst_vial>, <thebetweenlands:dentrothyst_vial>]
);
recipes.addShapeless("fluid_honey_to_bottles_2", <bladditions:dentrothyst_fluid_vial:1>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 250}}) * 4, 
	[honeyBucket, <thebetweenlands:dentrothyst_vial>, <thebetweenlands:dentrothyst_vial>, <thebetweenlands:dentrothyst_vial>, <thebetweenlands:dentrothyst_vial>]
);

recipes.addShapeless("honey_comb_filled_3", <bladditions:dentrothyst_fluid_vial>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 250}}), 
	[<growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <thebetweenlands:dentrothyst_vial:0>]
);
recipes.addShapeless("honey_comb_filled_3_2", <bladditions:dentrothyst_fluid_vial:1>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 250}}), 
	[<growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <thebetweenlands:dentrothyst_vial:2>]
);

recipes.remove(<growthcraft_bees:honey_jar>);
recipes.addShapeless("honey_comb_filled_1", <growthcraft_bees:honey_jar>, [<growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <growthcraft_bees:honey_comb_filled>, <thebetweenlands:mud_flower_pot>]);


recipes.addShapeless("honey_to_bucket_1", <thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 1000}}), [<growthcraft_bees:honey_jar>, <growthcraft_bees:honey_jar>, <thebetweenlands:bl_bucket>]);
recipes.addShapeless("honey_to_bucket_2", <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "fluid_honey", Amount: 1000}}), [<growthcraft_bees:honey_jar>, <growthcraft_bees:honey_jar>, <thebetweenlands:bl_bucket:1>]);


recipes.remove(<growthcraft_milk:cheese_press>);
recipes.addShaped("cheese_press", <growthcraft_milk:cheese_press>, [
	[<thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <ore:chestWood>, <thebetweenlands:items_misc:11>], 
	[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);


recipes.remove(<growthcraft_cellar:culture_jar>);
recipes.addShaped("culture_jar", <growthcraft_cellar:culture_jar>, [
	[<thebetweenlands:dentrothyst_shard_green>, <ore:plankWood>, <thebetweenlands:dentrothyst_shard_green>], 
	[<thebetweenlands:dentrothyst_shard_green>, null, <thebetweenlands:dentrothyst_shard_green>], 
	[<thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:dentrothyst_shard_green>]
]);
