recipes.remove(<clothesline:clothesline_anchor>);
scripts.utils.addShaped("clothesline_anchor", <clothesline:clothesline_anchor> * 4, [
	[<ore:ingotSyrmorite>], 
	[<ore:stickWood>]
]);

recipes.remove(<clothesline:crank>);
scripts.utils.addShaped("crank", <clothesline:crank>, [
	[<ore:stickWood>, <ore:ingotSyrmorite>, <ore:stickWood>]
]);

recipes.remove(<clothesline:spinner>);
scripts.utils.addShaped("spinner", <clothesline:spinner>, [
	[<ore:stickWood>, <mysticalworld:spindle>], 
	[<ore:plankWood>, <ore:stickWood>]
]);

recipes.remove(<clothesline:clothesline>);
scripts.utils.addShaped("clothesline", <clothesline:clothesline>, [
[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>],
	[<thebetweenlands:swamp_reed_item>, <clothesline:spinner:*>, <thebetweenlands:swamp_reed_item>],
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>]
]);
