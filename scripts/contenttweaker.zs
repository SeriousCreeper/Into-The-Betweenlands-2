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
	//"menhir_core",
	//"boss_item_1",
	//"boss_item_2",
	//"boss_item_3",
	//"boss_item_4",
	//"boss_item_5",
	//"boss_item_6",
	"inert_boneway_finder",
	"silk",
	"access_crystal",
	//"plate_syrmorite"
] as string[];


for item in items {
	VanillaFactory.createItem(item).register();
}
