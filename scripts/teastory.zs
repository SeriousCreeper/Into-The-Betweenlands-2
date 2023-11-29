import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.teastory.TeaStove.Bake;
import mods.teastory.TeaTable;
import mods.teastory.Teapan.InSun;

val itemsToRemove = [
	<teastory:matcha_powder>,
	<teastory:matcha_leaf>,
	<teastory:wet_tea>,
	<teastory:zisha_clay>,
	<teastory:zisha_clay_cup>,
	<teastory:wooden_mortar_and_pestle>,
	<teastory:soil_detection_meter>,
	<teastory:tea_whisk>,
	<teastory:lemon>,
	<teastory:matcha_cookie>,
	<teastory:tea_egg>,
	<teastory:shennong_ruler>,
	<teastory:xian_rice_seeds>,
	<teastory:item_xian_rice_seedling>,
	<teastory:straw>,
	<teastory:xian_rice>,
	<teastory:washed_rice>,
	<teastory:wooden_lid>,
	<teastory:rice_ball>,
	<teastory:straw_rope>,
	<teastory:item_straw_blanket>,
	<teastory:sickle>,
	<teastory:porkchop_rice>,
	<teastory:steak_rice>,
	<teastory:chicken_rice>,
	<teastory:potato_rice>,
	<teastory:rabbit_rice>,
	<teastory:pot_zisha_clay>,
	<teastory:tea_stove>,
	<teastory:straw_cushion>,
	<teastory:zisha_clay_kettle>,
	<teastory:tea_drying_pan>,
	<teastory:matcha_drink:*>,
	<teastory:milk_tea:*>,
	<teastory:lemon_tea:*>,
	<teastory:matcha_drink_porcelain_kettle>,
	<teastory:milk_tea_porcelain_kettle>,
	<teastory:lemon_tea_porcelain_kettle>,
	<teastory:matcha_drink_zisha_kettle>,
	<teastory:milk_tea_zisha_kettle>,
	<teastory:lemon_tea_zisha_kettle>,
	<teastory:record_caichawuqu_g20>,
	<teastory:record_caichawuqu_folk>,
	<teastory:record_bubugao>,
	<teastory:record_caichaji_erhu>,
	<teastory:record_chunjiexuqu>,
	<teastory:record_huahaoyueyuan>,
	<teastory:record_jinshekuangwu>,
	<teastory:record_xiyangyang>,
	<teastory:record_yangliuqing>,
	<teastory:record_zizhudiao>,
	<teastory:clay_kettle>,
	<teastory:clay_cup>,
	<teastory:half_dried_leaf_block>
] as IItemStack[];


for item in itemsToRemove {
	JEI.removeAndHide(item);
	furnace.remove(item);
	item.removeAspects(allAspects);
}


furnace.remove(<teastory:tea_leaf>);
furnace.remove(<forge:bucketfilled>.withTag({Fluid: {FluidName: "purifiedwater", Amount: 1000}}));

furnace.remove(<teastory:empty_porcelain_kettle>);
recipes.remove(<teastory:empty_porcelain_kettle>);
scripts.utils.addShaped("teastory_empty_porcelain_kettle", <teastory:empty_porcelain_kettle>, [
	[null, <thebetweenlands:items_misc:10>, null], 
	[<thebetweenlands:items_misc:10>, null, <thebetweenlands:items_misc:10>], 
	[<thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:10>]
]);

recipes.remove(<teastory:empty_zisha_kettle>);
furnace.remove(<teastory:empty_zisha_kettle>);
scripts.utils.addShaped("teastory_empty_zisha_kettle", <teastory:empty_zisha_kettle>, [
	[null, <thebetweenlands:items_misc:47>, null], 
	[<thebetweenlands:items_misc:47>, null, <thebetweenlands:items_misc:47>], 
	[<thebetweenlands:items_misc:47>, <thebetweenlands:items_misc:47>, <thebetweenlands:items_misc:47>]
]);

recipes.remove(<teastory:pot_stone>);
scripts.utils.addShaped("teastory_pot_stone", <teastory:pot_stone>, [
	[<thebetweenlands:smooth_betweenstone>, null, <thebetweenlands:smooth_betweenstone>], 
	[<thebetweenlands:smooth_betweenstone>, null, <thebetweenlands:smooth_betweenstone>], 
	[null, <thebetweenlands:smooth_betweenstone>, null]
]);

recipes.remove(<teastory:pot_iron>);
scripts.utils.addShaped("teastory_pot_iron", <teastory:pot_iron>, [
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <teastory:pot_stone>, <thebetweenlands:items_misc:11>], 
	[null, <ore:blockSyrmorite>, null]
]);

recipes.remove(<teastory:pot_clay>);
scripts.utils.addShaped("teastory_pot_clay", <teastory:pot_clay>, [
	[<thebetweenlands:mud>, null, <thebetweenlands:mud>], 
	[<thebetweenlands:mud>, <teastory:pot_iron>, <thebetweenlands:mud>], 
	[null, <thebetweenlands:mud>, null]
]);

recipes.remove(<teastory:pot_zisha>);
furnace.remove(<teastory:pot_zisha>);
scripts.utils.addShaped("teastory_pot_zisha", <teastory:pot_zisha>, [
	[<thebetweenlands:items_misc:47>, null, <thebetweenlands:items_misc:47>], 
	[<thebetweenlands:items_misc:47>, null, <thebetweenlands:items_misc:47>], 
	[null, <thebetweenlands:items_misc:47>, null]
]);

recipes.remove(<teastory:empty_tea_bag>);
scripts.utils.addShaped("teastory_empty_tea_bag", <teastory:empty_tea_bag> * 3, [
	[null, <ore:string>, null], 
	[<thebetweenlands:items_misc:32>, null, <thebetweenlands:items_misc:32>], 
	[<thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>, <thebetweenlands:items_misc:32>]
]);

recipes.remove(<teastory:cup:0>);
scripts.utils.addShaped("teastory_wooden_cup", <teastory:cup:0>, [
	[<thebetweenlands:weedwood>, null, <thebetweenlands:weedwood>], 
	[<ore:stickWood>, <thebetweenlands:weedwood>, <ore:stickWood>]
]);

recipes.remove(<teastory:cup:2>);
scripts.utils.addShaped("teastory_stone_cup", <teastory:cup:2>, [
	[<thebetweenlands:smooth_betweenstone>, null, <thebetweenlands:smooth_betweenstone>], 
	[<thebetweenlands:smooth_betweenstone>, <thebetweenlands:smooth_betweenstone>, <thebetweenlands:smooth_betweenstone>]
]);

recipes.remove(<teastory:cup:3>);
scripts.utils.addShaped("teastory_glass_cup", <teastory:cup:3>, [
	[<thebetweenlands:polished_dentrothyst_pane>, null, <thebetweenlands:polished_dentrothyst_pane>], 
	[null, <thebetweenlands:polished_dentrothyst_pane>, null]
]);

furnace.remove(<teastory:cup:4>);
scripts.utils.addShaped("teastory_mud_cup", <teastory:cup:4>, [
	[<thebetweenlands:items_misc:10>, null, <thebetweenlands:items_misc:10>], 
	[<thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:10>, <thebetweenlands:items_misc:10>]
]);

furnace.remove(<teastory:cup:5>);
scripts.utils.addShaped("teastory_zisha_cup", <teastory:cup:5>, [
	[<thebetweenlands:items_misc:47>, null, <thebetweenlands:items_misc:47>], 
	[<thebetweenlands:items_misc:47>, <thebetweenlands:items_misc:47>, <thebetweenlands:items_misc:47>]
]);

recipes.remove(<teastory:broken_tea>);


Bake.removeAll();




// TEA TABLE
val pots = [
	<teastory:boiled_water_pot_stone:*>,
	<teastory:boiled_water_pot_iron:*>,
	<teastory:boiled_water_pot_porcelain:*>,
	<teastory:boiled_water_pot_zisha:*>
] as IItemStack[];

val cups = [
	<teastory:cup:0>,
	<teastory:cup:2>,
	<teastory:cup:3>,
	<teastory:cup:4>,
	<teastory:cup:5>
] as IItemStack[];

val teaBags = [
	<teastory:green_tea_bag>,
	<teastory:black_tea_bag>,
	<teastory:yellow_tea_bag>,
	<teastory:white_tea_bag>,
	<teastory:oolong_tea_bag>,
	<teastory:puer_tea_bag>,
] as IItemStack[];

val teas = {
	<teastory:green_tea_bag>: {
		tea: <teastory:green_tea>,
		porcelain: <teastory:green_tea_porcelain_kettle>,
		zisha: <teastory:green_tea_zisha_kettle>
	},
	<teastory:black_tea_bag>: {
		tea: <teastory:black_tea>,
		porcelain: <teastory:black_tea_porcelain_kettle>,
		zisha: <teastory:black_tea_zisha_kettle>
	},
	<teastory:white_tea_bag>: {
		tea: <teastory:white_tea>,
		porcelain: <teastory:white_tea_porcelain_kettle>,
		zisha: <teastory:white_tea_zisha_kettle>
	},
	<teastory:oolong_tea_bag>: {
		tea: <teastory:oolong_tea>,
		porcelain: <teastory:oolong_tea_porcelain_kettle>,
		zisha: <teastory:oolong_tea_zisha_kettle>
	},
	<teastory:yellow_tea_bag>: {
		tea: <teastory:yellow_tea>,
		porcelain: <teastory:yellow_tea_porcelain_kettle>,
		zisha: <teastory:yellow_tea_zisha_kettle>
	},
	<teastory:puer_tea_bag>: {
		tea: <teastory:puer_tea>,
		porcelain: <teastory:puer_tea_porcelain_kettle>,
		zisha: <teastory:puer_tea_zisha_kettle>
	}
} as IItemStack[string][IItemStack];




function makeTeaRecipe(cups as IItemStack[], pots as IItemStack[], teabag as IItemStack, tea as IItemStack, porcelainPot as IItemStack, zishaPot as IItemStack) {
	for cup in cups {
		var meta = cup.metadata;
		TeaTable.addPureTeaRecipe(teabag, cup, tea.definition.makeStack(meta));
	}

	TeaTable.addPureTeaRecipe(teabag * 4, <teastory:empty_porcelain_kettle>, porcelainPot);
	TeaTable.addPureTeaRecipe(teabag * 8, <teastory:empty_zisha_kettle>, zishaPot);
}


TeaTable.removeAll();

for teabag in teas {
	makeTeaRecipe(cups, pots, teabag, teas[teabag].tea, teas[teabag].porcelain, teas[teabag].zisha);
}




// TEA PAN
//InSun.add(<dawnoftimebuilder:silk_worm_hatchery>, <dawnoftimebuilder:silk_worms>);




// NAMES
scripts.utils.addInfoTooltip(<teastory:green_tea:*>, "Inspires Auromancy");
scripts.utils.addInfoTooltip(<teastory:black_tea:*>, "Inspires Artifice");
scripts.utils.addInfoTooltip(<teastory:oolong_tea:*>, "Inspires Arcane");
scripts.utils.addInfoTooltip(<teastory:puer_tea:*>, "Inspires Eldritch");
scripts.utils.addInfoTooltip(<teastory:white_tea:*>, "Inspires Golemancy");
scripts.utils.addInfoTooltip(<teastory:yellow_tea:*>, "Inspires Alchemy");

scripts.utils.addInfoTooltip(<teastory:green_tea_bag>, "Inspires Auromancy");
scripts.utils.addInfoTooltip(<teastory:black_tea_bag>, "Inspires Artifice");
scripts.utils.addInfoTooltip(<teastory:oolong_tea_bag>, "Inspires Arcane");
scripts.utils.addInfoTooltip(<teastory:puer_tea_bag>, "Inspires Eldritch");
scripts.utils.addInfoTooltip(<teastory:white_tea_bag>, "Inspires Golemancy");
scripts.utils.addInfoTooltip(<teastory:yellow_tea_bag>, "Inspires Alchemy");

<teastory:cup>.displayName = "Weedwood Cup";
<teastory:cup:2>.displayName = "Betweenstone Cup";
<teastory:cup:3>.displayName = "Dentrothyst Cup";
<teastory:cup:4>.displayName = "Mud Brick Cup";
<teastory:cup:5>.displayName = "Ancient Remnant Cup";

<teastory:pot_stone>.displayName = "Betweenstone Pot";
<teastory:pot_iron>.displayName = "Syrmorite Pot";
<teastory:pot_porcelain>.displayName = "Mud Brick Pot";
<teastory:pot_zisha>.displayName = "Ancient Remnant Pot";
<teastory:pot_clay>.displayName = "Unfired Mud Brick Pot";

<teastory:cold_water_pot_zisha>.displayName = "Ancient Remnant Pot (Cold Water)";
<teastory:cold_water_pot_porcelain>.displayName = "Mud Brick Pot (Cold Water)";
<teastory:cold_water_pot_iron>.displayName = "Syrmorite Pot (Cold Water)";
<teastory:cold_water_pot_stone>.displayName = "Betweenstone Pot (Cold Water)";

<teastory:boiled_water_pot_zisha>.displayName = "Ancient Remnant Pot (Boiled Water)";
<teastory:boiled_water_pot_porcelain>.displayName = "Mud Brick Pot (Boiled Water)";
<teastory:boiled_water_pot_iron>.displayName = "Syrmorite Pot (Boiled Water)";
<teastory:boiled_water_pot_stone>.displayName = "Betweenstone Pot (Boiled Water)";

<teastory:green_tea>.displayName = "Green Tea";
<teastory:green_tea:2>.displayName = "Green Tea";
<teastory:green_tea:3>.displayName = "Green Tea";
<teastory:green_tea:4>.displayName = "Green Tea";
<teastory:green_tea:5>.displayName = "Green Tea";

<teastory:black_tea>.displayName = "Black Tea";
<teastory:black_tea:2>.displayName = "Black Tea";
<teastory:black_tea:3>.displayName = "Black Tea";
<teastory:black_tea:4>.displayName = "Black Tea";
<teastory:black_tea:5>.displayName = "Black Tea";

<teastory:yellow_tea>.displayName = "Yellow Tea";
<teastory:yellow_tea:2>.displayName = "Yellow Tea";
<teastory:yellow_tea:3>.displayName = "Yellow Tea";
<teastory:yellow_tea:4>.displayName = "Yellow Tea";
<teastory:yellow_tea:5>.displayName = "Yellow Tea";

<teastory:white_tea>.displayName = "White Tea";
<teastory:white_tea:2>.displayName = "White Tea";
<teastory:white_tea:3>.displayName = "White Tea";
<teastory:white_tea:4>.displayName = "White Tea";
<teastory:white_tea:5>.displayName = "White Tea";

<teastory:oolong_tea>.displayName = "Oolong Tea";
<teastory:oolong_tea:2>.displayName = "Oolong Tea";
<teastory:oolong_tea:3>.displayName = "Oolong Tea";
<teastory:oolong_tea:4>.displayName = "Oolong Tea";
<teastory:oolong_tea:5>.displayName = "Oolong Tea";

<teastory:puer_tea>.displayName = "Dark Tea";
<teastory:puer_tea:2>.displayName = "Dark Tea";
<teastory:puer_tea:3>.displayName = "Dark Tea";
<teastory:puer_tea:4>.displayName = "Dark Tea";
<teastory:puer_tea:5>.displayName = "Dark Tea";

<teastory:empty_porcelain_kettle>.displayName = "Mud Brick Kettle";
<teastory:green_tea_porcelain_kettle>.displayName = "Mud Brick Kettle (Green Tea)";
<teastory:black_tea_porcelain_kettle>.displayName = "Mud Brick Kettle (Black Tea)";
<teastory:yellow_tea_porcelain_kettle>.displayName = "Mud Brick Kettle (Yellow Tea)";
<teastory:white_tea_porcelain_kettle>.displayName = "Mud Brick Kettle (White Tea)";
<teastory:oolong_tea_porcelain_kettle>.displayName = "Mud Brick Kettle (Oolong Tea)";
<teastory:puer_tea_porcelain_kettle>.displayName = "Mud Brick Kettle (Dark Tea)";

<teastory:empty_zisha_kettle>.displayName = "Ancient Remnant Kettle";
<teastory:green_tea_zisha_kettle>.displayName = "Ancient Remnant Kettle (Green Tea)";
<teastory:black_tea_zisha_kettle>.displayName = "Ancient Remnant Kettle (Black Tea)";
<teastory:yellow_tea_zisha_kettle>.displayName = "Ancient Remnant Kettle (Yellow Tea)";
<teastory:white_tea_zisha_kettle>.displayName = "Ancient Remnant Kettle (White Tea)";
<teastory:oolong_tea_zisha_kettle>.displayName = "Ancient Remnant Kettle (Oolong Tea)";
<teastory:puer_tea_zisha_kettle>.displayName = "Ancient Remnant Kettle (Dark Tea)";