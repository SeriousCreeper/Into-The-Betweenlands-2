#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Block;
import mods.contenttweaker.Player;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Commands;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import mods.contenttweaker.AxisAlignedBB;



val items = [
	"inert_boneway_finder",
	"silk",
	"access_crystal",
	"stamp_wires_raw",
	"stamp_rod_raw",
	"book_stonetablet",
	"book_stonetablet_top",
	"book_stonetablet_bottom"
] as string[];


val brokenAncientArmor = [
	"broken_ancient_armor_helmet",
	"broken_ancient_armor_chestplate",
	"broken_ancient_armor_leggings",
	"broken_ancient_armor_boots"
] as string[];

val armorRarityLevels = [
	"common",
	"common",
	"uncommon",
	"uncommon",
	"uncommon",
	"rare",
	"rare",
] as string[];


for item in items {
	VanillaFactory.createItem(item).register();
}


for armor in brokenAncientArmor {
	for i in 0 to 7 {
		var item = VanillaFactory.createItem(armor + "_" + i);
		item.maxStackSize = 1;
		item.rarity = armorRarityLevels[i];
		item.register();
	}
}
