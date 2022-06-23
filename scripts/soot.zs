import mods.soot.AlchemicalMixer;
import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val itemsToRemove = [
	<soot:stamp_text_raw>,
	<soot:stamp_text>,
] as IItemStack[];

for item in itemsToRemove {
	JEI.removeAndHide(item);
	item.removeAspects(allAspects);
}



recipes.remove(<soot:redstone_bin>);
scripts.utils.addShaped("redstone_bin", <soot:redstone_bin>, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <thebetweenlands:syrmorite_trapdoor>, <ore:ingotSyrmorite>]
]);

recipes.remove(<soot:scale>);
scripts.utils.addShaped("scale", <soot:scale>, [
	[<ore:ingotSilver>, <minecraft:redstone>, <ore:ingotSilver>], 
	[null, <ore:ingotSilver>, null], 
	[null, <embers:block_caminite_brick_slab>, null]
]);

recipes.remove(<soot:alchemy_gauge>);
scripts.utils.addShaped("alchemy_gauge", <soot:alchemy_gauge>, [
	[<ore:dustRedstone>], 
	[<thebetweenlands:items_misc:32>], 
	[<ore:ingotAntimony>]
]);

recipes.remove(<soot:insulation>);
scripts.utils.addShaped("insulation", <soot:insulation>, [
	[<ore:plateNickel>], 
	[<ore:blockOctine>], 
	[<embers:ashen_tile>]
]);




AlchemicalMixer.remove(<liquid:iron>);
AlchemicalMixer.remove(<liquid:gold>);

AlchemicalMixer.add(<liquid:syrmorite> * 4, [<liquid:tin> * 4, <liquid:alchemical_redstone> * 3], {"lead":16 to 32});
AlchemicalMixer.add(<liquid:octine> * 4, [<liquid:silver> * 4, <liquid:alchemical_redstone> * 3], {"lead":100 to 200});
