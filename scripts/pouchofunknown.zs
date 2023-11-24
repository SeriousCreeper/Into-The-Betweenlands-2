import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

recipes.remove(<pouchofunknown:pouch>);
scripts.utils.addShaped("pouch", <pouchofunknown:pouch>, [
	[<ore:leather>, <ore:ingotSyrmorite>, <ore:leather>],
	[null, <ore:leather>, null]
]);


<pouchofunknown:pouch>.displayName = "Pouch of Curiosity";
scripts.utils.addInfoTooltip(<pouchofunknown:pouch>, "Holds any unknown items for later.");
