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
	"book_stonetablet_bottom",
	"gold_coin",
	"rat_brain",
	"essence_strength",
	"essence_efficiency",
	"dentrothyst_sliver_green",
	"dentrothyst_sliver_orange"
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

var aspects as string[string][string] = {
	armaniis: {
		id: "armaniis",
		name: "Armaniis",
		color: "FFCC00",
	},
	azuwynn: {
		id: "azuwynn",
		name: "Azuwynn",
		color: "DF1414",
	},
	byariis: {
		id: "byariis",
		name: "Byariis",
		color: "285937",
	},
	byrginaz: {
		id: "byrginaz",
		name: "Byrginaz",
		color: "1EBBDB",
	},
	celawynn: {
		id: "celawynn",
		name: "Celawynn",
		color: "4CCD48",
	},
	dayuniis: {
		id: "dayuniis",
		name: "Dayuniis",
		color: "B148CE",
	},
	fergalaz: {
		id: "fergalaz",
		name: "Fergalaz",
		color: "29B538",
	},
	firnalaz: {
		id: "firnalaz",
		name: "Firnalaz",
		color: "FF7F00",
	},
	freiwynn: {
		id: "freiwynn",
		name: "Freiwynn",
		color: "C1D8F4",
	},
	geoliirgaz: {
		id: "geoliirgaz",
		name: "Geoliirgaz",
		color: "222229",
	},
	ordaniis: {
		id: "ordaniis",
		name: "Ordaniis",
		color: "64E69A",
	},
	uduriis: {
		id: "uduriis",
		name: "Uduriis",
		color: "3C1328",
	},
	wodren: {
		id: "wodren",
		name: "Wodren",
		color: "63C2AF",
	},
	yeowynn: {
		id: "yeowynn",
		name: "Yeowynn",
		color: "FC0069",
	},
	yihinren: {
		id: "yihinren",
		name: "Yihinren",
		color: "FFFFFF",
	},
	yunugaz: {
		id: "yunugaz",
		name: "Yunugaz",
		color: "01FFBB",
	}
};

for aspect in aspects {
	var aspectFluid = VanillaFactory.createFluid(aspects[aspect].id, Color.fromHex(aspects[aspect].color));
	aspectFluid.setDensity(1000);
	aspectFluid.register();
}

