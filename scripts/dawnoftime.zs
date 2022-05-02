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


val itemsToKeep = [
	<dawnoftimebuilder:silk_worm_hatchery>,
	<dawnoftimebuilder:silk_worms>,
	<dawnoftimebuilder:silk_worm_eggs>,
	<dawnoftimebuilder:silk_cocoons>,
	<dawnoftimebuilder:silk>,
	<dawnoftimebuilder:stick_bundle>,
	<dawnoftimebuilder:japanese_light_armor_feet>,
	<dawnoftimebuilder:japanese_light_armor_chest>,
	<dawnoftimebuilder:japanese_light_armor_head>,
	<dawnoftimebuilder:iron_plate_armor_feet>,
	<dawnoftimebuilder:iron_plate_armor_chest>,
	<dawnoftimebuilder:iron_plate_armor_head>,
	<dawnoftimebuilder:iron_plate_armor_legs>,
	<dawnoftimebuilder:o_yoroi_armor_chest>,
	<dawnoftimebuilder:o_yoroi_armor_head>,
	<dawnoftimebuilder:o_yoroi_armor_legs>,
	<dawnoftimebuilder:o_yoroi_armor_feet>,
	<dawnoftimebuilder:raijin_armor_feet>,
	<dawnoftimebuilder:raijin_armor_chest>,
	<dawnoftimebuilder:raijin_armor_head>,
	<dawnoftimebuilder:raijin_armor_legs>,
	<dawnoftimebuilder:bamboo_hat>,
	<dawnoftimebuilder:japanese_light_armor_legs>,
] as IItemStack[];

val items = loadedMods["dawnoftimebuilder"].items;

for item in items {
	var skip = false;

    for wlItem in itemsToKeep {
    	if(wlItem.matches(item)) {
            skip = true;
            break;
        }
    }

    if(!skip) {
    	JEI.removeAndHide(item);
    	furnace.remove(item);
    	item.removeAspects(allAspects);
    }
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

recipes.remove(<dawnoftimebuilder:silk>);
recipes.addShapeless("silk", <dawnoftimebuilder:silk>, [<dawnoftimebuilder:silk_cocoons>, <dawnoftimebuilder:silk_cocoons>, <dawnoftimebuilder:silk_cocoons>, <mysticalworld:spindle:*>.transformDamage(1)]);



<dawnoftimebuilder:iron_chain>.displayName = "Syrmorite Tea Chains";