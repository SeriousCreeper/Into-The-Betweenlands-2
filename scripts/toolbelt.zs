recipes.removeByRecipeName("toolbelt:belt");
scripts.utils.addShaped("belt", <toolbelt:belt>.withTag({Size: 2}), [
	[<contenttweaker:silk>, <ore:leather>, <contenttweaker:silk>],
	[<ore:leather>, null, <ore:leather>],
	[<ore:leather>, <ore:ingotSyrmorite>, <ore:leather>]
]);

recipes.remove(<toolbelt:pouch>);
scripts.utils.addShaped("toolbelt_pouch", <toolbelt:pouch>, [
	[<contenttweaker:silk>, <ore:ingotOctine>, <contenttweaker:silk>], 
	[<ore:leather>, null, <ore:leather>], 
	[<contenttweaker:silk>, <ore:leather>, <contenttweaker:silk>]
]);

recipes.addShapeless("upgrade_1", <toolbelt:belt>.withTag({Size: 3}), [<toolbelt:belt>.withTag({Size: 2}), <toolbelt:pouch>]);
recipes.addShapeless("upgrade_2", <toolbelt:belt>.withTag({Size: 4}), [<toolbelt:belt>.withTag({Size: 3}), <toolbelt:pouch>]);
recipes.addShapeless("upgrade_3", <toolbelt:belt>.withTag({Size: 5}), [<toolbelt:belt>.withTag({Size: 4}), <toolbelt:pouch>]);
recipes.addShapeless("upgrade_4", <toolbelt:belt>.withTag({Size: 6}), [<toolbelt:belt>.withTag({Size: 5}), <toolbelt:pouch>]);
recipes.addShapeless("upgrade_5", <toolbelt:belt>.withTag({Size: 7}), [<toolbelt:belt>.withTag({Size: 6}), <toolbelt:pouch>]);
recipes.addShapeless("upgrade_6", <toolbelt:belt>.withTag({Size: 8}), [<toolbelt:belt>.withTag({Size: 7}), <toolbelt:pouch>]);
recipes.addShapeless("upgrade_7", <toolbelt:belt>.withTag({Size: 9}), [<toolbelt:belt>.withTag({Size: 8}), <toolbelt:pouch>]);
