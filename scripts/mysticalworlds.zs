import mods.jei.JEI;
import crafttweaker.item.IItemStack;

scripts.utils.removeAllExcept("mysticalworld", [
	<mysticalworld:spindle>,
]);

recipes.remove(<mysticalworld:silk_thread>);
recipes.remove(<patchouli:guide_book>.withTag({"patchouli:book": "mysticalworld:world_guide"}));