import crafttweaker.item.IItemStack;


recipes.remove(<fairylights:light:*>);

for i in 0 to 16 {
	var offset = 0;

	recipes.addShaped("fairy_" ~ i, <fairylights:light>.definition.makeStack(i) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<ore:ingotSyrmorite>, <minecraft:dye>.definition.makeStack(i), <ore:ingotSyrmorite>],
		[null, <ore:paneGlass>, null]
	]);

	offset += 16;

	recipes.addShaped("paper_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<thebetweenlands:items_misc:32>, <minecraft:dye>.definition.makeStack(i), <thebetweenlands:items_misc:32>],
		[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
	]);

	offset += 16;

	recipes.addShaped("orb_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<ore:string>, <minecraft:dye>.definition.makeStack(i), <ore:string>],
		[null, <thebetweenlands:shelf_fungus>, null]
	]);

	offset += 32;

	recipes.addShaped("ornate_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<ore:nuggetOctine>, <minecraft:dye>.definition.makeStack(i), <ore:nuggetOctine>],
		[<ore:ingotSyrmorite>, <ore:nuggetOctine>, <ore:ingotSyrmorite>]
	]);

	offset += 16;

	recipes.addShaped("oil_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<ore:stickWood>, <minecraft:dye>.definition.makeStack(i), <ore:stickWood>],
		[<ore:ingotSyrmorite>, <ore:paneGlass>, <ore:ingotSyrmorite>]
	]);

	offset += 32;

	recipes.addShaped("jack_o_lantern_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<ore:slabWood>, <minecraft:dye>.definition.makeStack(i), <ore:slabWood>],
		[<ore:torch>, <ore:candyHalloween>, <ore:torch>]
	]);

	offset += 16;

	recipes.addShaped("skull_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<ore:ingotSyrmorite>, <minecraft:dye>.definition.makeStack(i), <ore:ingotSyrmorite>],
		[null, <ore:candyHalloween>, null]
	]);

	offset += 16;

	recipes.addShaped("ghost_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<thebetweenlands:items_misc:32>, <minecraft:dye>.definition.makeStack(i), <thebetweenlands:items_misc:32>],
		[<ore:ingotSyrmorite>, <ore:candyHalloween>, <ore:ingotSyrmorite>]
	]);

	offset += 16;

	recipes.addShaped("spider_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<ore:string>, <minecraft:dye>.definition.makeStack(i), <ore:string>],
		[<ore:string>, <ore:candyHalloween>, <ore:string>]
	]);

	offset += 16;

	recipes.addShaped("witch_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<thebetweenlands:dentrothyst_vial>, <minecraft:dye>.definition.makeStack(i), <ore:stickWood>],
		[null, <ore:candyHalloween>, null]
	]);

	offset += 16;

	recipes.addShaped("snowflake_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<ore:snowball>, <minecraft:dye>.definition.makeStack(i), <ore:snowball>],
		[null, <ore:paneGlass>, null]
	]);

	offset += 16;

	recipes.addShaped("icicle_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<ore:paneGlass>, <minecraft:dye>.definition.makeStack(i), <ore:paneGlass>],
		[null, <thebetweenlands:candy_cane>, null]
	]);

	offset += 16;

	recipes.addShaped("meteor_" ~ i, <fairylights:light>.definition.makeStack(i + offset) * 4, [
		[null, <ore:ingotSyrmorite>, null],
		[<embers:shard_ember>, <minecraft:dye>.definition.makeStack(i), <embers:shard_ember>],
		[<ore:ingotSyrmorite>, <thebetweenlands:items_misc:32>, <ore:ingotSyrmorite>]
	]);
}

recipes.remove(<fairylights:garland>);
recipes.addShaped("vine_garland", <fairylights:garland> * 2, [
	[<ore:ingotSyrmorite>, <thebetweenlands:hanger>, <ore:ingotSyrmorite>]
]);

recipes.remove(<fairylights:letter_bunting>);
recipes.addShaped("letter_bunting", <fairylights:letter_bunting>.withTag({text: {styling: [] as byte[] as byte[], value: ""}}), [
	[<ore:ingotSyrmorite>, <ore:string>, <ore:ingotSyrmorite>], 
	[<thebetweenlands:items_misc:32>, <ore:dyeBlack>, <thebetweenlands:items_misc:3>]
]);

recipes.remove(<fairylights:ladder>);
recipes.addShaped("stepladder", <fairylights:ladder>, [
	[<thebetweenlands:weedwood_ladder>, <ore:stickWood>], 
	[<thebetweenlands:weedwood_ladder>, <ore:stickWood>], 
	[<thebetweenlands:weedwood_ladder>, <ore:stickWood>]
]);
