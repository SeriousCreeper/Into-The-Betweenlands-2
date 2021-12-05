import crafttweaker.item.IItemStack;
import mods.jei.JEI;


val itemsWithoutRecipes = [
	<dawnoftimebuilder:iron_plate_armor_feet>,
	<dawnoftimebuilder:iron_plate_armor_chest>,
	<dawnoftimebuilder:iron_plate_armor_head>,
	<dawnoftimebuilder:iron_plate_armor_legs>,
	<dawnoftimebuilder:japanese_light_armor_feet>,
	<dawnoftimebuilder:japanese_light_armor_chest>,
	<dawnoftimebuilder:japanese_light_armor_head>,
	<dawnoftimebuilder:japanese_light_armor_legs>,
	<dawnoftimebuilder:o_yoroi_armor_feet>,
	<dawnoftimebuilder:o_yoroi_armor_chest>,
	<dawnoftimebuilder:o_yoroi_armor_head>,
	<dawnoftimebuilder:o_yoroi_armor_legs>,

	<dawnoftimebuilder:raijin_armor_feet>,
	<dawnoftimebuilder:raijin_armor_chest>,
	<dawnoftimebuilder:raijin_armor_head>,
	<dawnoftimebuilder:raijin_armor_legs>,
] as IItemStack[];

for item in itemsWithoutRecipes {
	recipes.remove(item);
}


val itemsToRemoveAndHide = [
	<dawnoftimebuilder:pharaoh_armor_feet>,
	<dawnoftimebuilder:pharaoh_armor_chest>,
	<dawnoftimebuilder:pharaoh_armor_head>,
	<dawnoftimebuilder:pharaoh_armor_legs>,
	<dawnoftimebuilder:tachi_sword>,
	<dawnoftimebuilder:wax>,
	<dawnoftimebuilder:grey_clay_tile>,
	<dawnoftimebuilder:mulberry_leaves>,
	<dawnoftimebuilder:camellia_leaves>,
	<dawnoftimebuilder:tea_leaves>,
	<dawnoftimebuilder:camellia_seed>,
	<dawnoftimebuilder:mulberry>,
	<dawnoftimebuilder:bamboo_drying_tray>,
	<dawnoftimebuilder:cast_iron_teapot>,
	<dawnoftimebuilder:cast_iron_teapot:1>,
	<dawnoftimebuilder:cast_iron_teapot:2>,
	<dawnoftimebuilder:cast_iron_teacup>,
	<dawnoftimebuilder:cast_iron_teacup:1>,
	<dawnoftimebuilder:cast_iron_teacup:2>,
	<dawnoftimebuilder:rice>,
	<dawnoftimebuilder:commelina>,
	<dawnoftimebuilder:maize>,
] as IItemStack[];

for item in itemsToRemoveAndHide {
	JEI.removeAndHide(item);
	recipes.remove(item);
}


furnace.remove(<dawnoftimebuilder:grey_tile>);
recipes.addShaped("grey_tile", <dawnoftimebuilder:grey_tile> * 8, [
	[<pyrotech:material:16>, null, null],
	[<pyrotech:material:16>, <pyrotech:material:16>, null],
	[<pyrotech:material:16>, <pyrotech:material:16>, <pyrotech:material:16>]
]);

recipes.remove(<dawnoftimebuilder:silk_worm_hatchery>);
recipes.addShapeless("silk_worm_hatchery", <dawnoftimebuilder:silk_worm_hatchery>, 
	[<dawnoftimebuilder:silk_worm_eggs>, <thebetweenlands:items_plant_drop>, <thebetweenlands:items_plant_drop>]
);

recipes.remove(<dawnoftimebuilder:stick_bundle>);
recipes.addShaped("stick_bundle", <dawnoftimebuilder:stick_bundle>, [
	[null, <ore:stickWood>, null], 
	[<ore:stickWood>, null, <ore:stickWood>], 
	[null, <ore:stickWood>, null]
]);

recipes.remove(<dawnoftimebuilder:iron_chain>);
recipes.addShaped("iron_chain", <dawnoftimebuilder:iron_chain>, [
	[<ore:ingotSyrmorite>], [<ore:ingotSyrmorite>]
]);


<dawnoftimebuilder:iron_chain>.displayName = "Syrmorite Tea Chains";