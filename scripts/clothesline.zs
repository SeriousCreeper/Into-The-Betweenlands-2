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
	[<thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:7>],
	[<thebetweenlands:items_misc:7>, <clothesline:spinner:*>, <thebetweenlands:items_misc:7>],
	[<thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:7>, <thebetweenlands:items_misc:7>]
]);
