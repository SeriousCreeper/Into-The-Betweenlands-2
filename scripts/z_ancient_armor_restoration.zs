import crafttweaker.item.IItemStack;
import mods.roots.Fey;
import mods.pyrotech.IroncladAnvil;
import moretweaker.betweenlands.Purifier;
import mods.embers.Alchemy;
import mods.arcanearchives.GCT;
import mods.thaumcraft.Infusion;
import moretweaker.betweenlands.DruidAltar;

val armor_stage_0 = [
	<contenttweaker:broken_ancient_armor_helmet_0>,
	<contenttweaker:broken_ancient_armor_chestplate_0>,
	<contenttweaker:broken_ancient_armor_leggings_0>,
	<contenttweaker:broken_ancient_armor_boots_0>,
] as IItemStack[];

val armor_stage_1 = [
	<contenttweaker:broken_ancient_armor_helmet_1>,
	<contenttweaker:broken_ancient_armor_chestplate_1>,
	<contenttweaker:broken_ancient_armor_leggings_1>,
	<contenttweaker:broken_ancient_armor_boots_1>,
] as IItemStack[];

val armor_stage_2 = [
	<contenttweaker:broken_ancient_armor_helmet_2>,
	<contenttweaker:broken_ancient_armor_chestplate_2>,
	<contenttweaker:broken_ancient_armor_leggings_2>,
	<contenttweaker:broken_ancient_armor_boots_2>,
] as IItemStack[];

val armor_stage_3 = [
	<contenttweaker:broken_ancient_armor_helmet_3>,
	<contenttweaker:broken_ancient_armor_chestplate_3>,
	<contenttweaker:broken_ancient_armor_leggings_3>,
	<contenttweaker:broken_ancient_armor_boots_3>,
] as IItemStack[];

val armor_stage_4 = [
	<contenttweaker:broken_ancient_armor_helmet_4>,
	<contenttweaker:broken_ancient_armor_chestplate_4>,
	<contenttweaker:broken_ancient_armor_leggings_4>,
	<contenttweaker:broken_ancient_armor_boots_4>,
] as IItemStack[];

val armor_stage_5 = [
	<contenttweaker:broken_ancient_armor_helmet_5>,
	<contenttweaker:broken_ancient_armor_chestplate_5>,
	<contenttweaker:broken_ancient_armor_leggings_5>,
	<contenttweaker:broken_ancient_armor_boots_5>,
] as IItemStack[];

val armor_stage_6 = [
	<contenttweaker:broken_ancient_armor_helmet_6>,
	<contenttweaker:broken_ancient_armor_chestplate_6>,
	<contenttweaker:broken_ancient_armor_leggings_6>,
	<contenttweaker:broken_ancient_armor_boots_6>,
] as IItemStack[];

val armor_stage_7 = [
	<thebetweenlands:ancient_helmet>,
	<thebetweenlands:ancient_chestplate>,
	<thebetweenlands:ancient_leggings>,
	<thebetweenlands:ancient_boots>,
] as IItemStack[];



for i, item in armor_stage_0 {
	Fey.addRecipe("armor_stage_1_" + i, armor_stage_1[i], 
		[item, <thaumcraft:bath_salts>, <thebetweenlands:fumigant>, <thebetweenlands:weeping_blue_petal>, <thebetweenlands:sap_spit>]);
}

for i, item in armor_stage_1 {
	IroncladAnvil.addRecipe("armor_stage_2_" + i, armor_stage_2[i], armor_stage_1[i], 32, "hammer");
}

for i, item in armor_stage_2 {
	Purifier.addRecipe(item, armor_stage_3[i]);
}

for i, item in armor_stage_3 {
	Alchemy.add(armor_stage_4[i], 
	[item, <thebetweenlands:ancient_remnant_block>, <thebetweenlands:octine_block>, <thebetweenlands:syrmorite_block>, <embers:block_dawnstone>], 
		{
			"dawnstone" : 64 to 64, 
			"iron" : 64 to 64, 
			"copper" : 64 to 64, 
			"silver" : 64 to 64, 
			"lead" : 64 to 64
		}
	);
}

for i, item in armor_stage_4 {
	GCT.addRecipe("armor_stage_5_" + i, armor_stage_5[i], 
		[
			armor_stage_4[i],
			<arcanearchives:material_interface>,
			<arcanearchives:shaped_quartz> * 2, 
			<thaumcraft:salis_mundus> * 8,
			<thebetweenlands:shimmer_stone>,
			<thebetweenlands:items_misc:19> * 8
		]
	);
}

for i, item in armor_stage_5 {
	Infusion.registerRecipe("armor_stage_6_" + i, "BASEINFUSION", armor_stage_6[i], 5, [
		<aspect:praecantatio> * 50,
		<aspect:praemunio> * 25,
		<aspect:ordo> * 50,
	], 
	item, 
	[
		<thaumcraft:crystal_aer>,
		<thaumcraft:crystal_ignis>,
		<thaumcraft:crystal_aqua>,
		<thaumcraft:crystal_terra>,
		<thaumcraft:crystal_ordo>,
		<thaumcraft:crystal_perditio>,
		<embers:ember_cluster>,
	]);
}

for i, item in armor_stage_6 {
	DruidAltar.addRecipe(armor_stage_7[i], [
		item,
		<thebetweenlands:crimson_middle_gem>,
		<thebetweenlands:aqua_middle_gem>,
		<thebetweenlands:green_middle_gem>
	]);
}