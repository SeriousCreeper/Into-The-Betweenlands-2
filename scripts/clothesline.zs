recipes.remove(<clothesline:clothesline_anchor>);
recipes.addShaped("clothesline_anchor", <clothesline:clothesline_anchor> * 4, [
	[<ore:ingotSyrmorite>], 
	[<ore:stickWood>]
]);

recipes.remove(<clothesline:crank>);
recipes.addShaped("crank", <clothesline:crank>, [
	[<ore:stickWood>, <ore:ingotSyrmorite>, <ore:stickWood>]
]);

recipes.remove(<clothesline:spinner>);
recipes.addShaped("spinner", <clothesline:spinner>, [
	[<ore:stickWood>, <mysticalworld:spindle>], 
	[<ore:plankWood>, <ore:stickWood>]
]);

recipes.remove(<clothesline:clothesline>);
recipes.addShaped("clothesline", <clothesline:clothesline>, [
[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>],
	[<thebetweenlands:swamp_reed_item>, <clothesline:spinner:*>, <thebetweenlands:swamp_reed_item>],
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>]
]);
