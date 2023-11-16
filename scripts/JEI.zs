import mods.jei.JEI;
import crafttweaker.item.IItemStack;


val itemToHide = [
	<thaumcraft:nugget>,
	<thaumcraft:nugget:1>,
	<thaumcraft:nugget:2>,
	<thaumcraft:nugget:3>,
	<thaumcraft:nugget:4>,

	<mod_lavacow:mossy_stick>,

	<itemfilters:filter>,


] as IItemStack[];


for item in itemToHide {
	JEI.removeAndHide(item);
}

val itemsToRemove = [
	<embers:geo_separator>,
	<embers:seed_gold>,
	<embers:ingot_tin>,
	<embers:plate_tin>,
	<embers:nugget_tin>,
	<embers:ore_tin>,
	<embers:seed_tin>,
	<embers:block_tin>,

	<jaopca:item_platedensealuminium>,
	<jaopca:item_platedensecopper>,
	<jaopca:item_platedensegold>,
	<jaopca:item_platedenseiron>,
	<jaopca:item_platedenselead>,
	<jaopca:item_platedensenickel>,
	<jaopca:item_platedenseoctine>,
	<jaopca:item_platedensesilver>,
	<jaopca:item_platedensesyrmorite>,
	<jaopca:item_platedensetin>,
	<jaopca:item_platedensebrass>,
	<jaopca:item_platedensebronze>,
	<jaopca:item_platedensedawnstone>,
	<jaopca:item_platedenseelectrum>,
	<jaopca:item_platedensethaumium>,
	<jaopca:item_platedensevoid>,

	<quark:color_slime:1>,
	<quark:color_slime:2>,
	<quark:color_slime:3>,
	<quark:color_slime:4>,
	<quark:glass_item_frame>,
	<quark:spruce_trapdoor>,
	<quark:birch_trapdoor>,
	<quark:jungle_trapdoor>,
	<quark:acacia_trapdoor>,
	<quark:dark_oak_trapdoor>,
	<quark:color_slime>,
	<quark:lit_lamp>,

	<ftbquests:screen>,
	<ftbquests:progress_detector>,
	<ftbquests:detector>,
	<ftbquests:detector:1>,
	<ftbquests:progress_screen>,
	<ftbquests:chest>,
	<ftbquests:loot_crate_storage>,
	<ftbquests:loot_crate_opener>,
	<ftbquests:barrier>,
	<ftbquests:reward_collector>,

	//<mystgears:gear_copper>,
] as IItemStack[];


for item in itemsToRemove {
	JEI.removeAndHide(item);
	item.removeAspects(allAspects);
}



