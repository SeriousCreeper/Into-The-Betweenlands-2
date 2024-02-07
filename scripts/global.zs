#priority 998
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import thaumcraft.aspect.CTAspectStack;




function RemoveAndHide(item as IItemStack) {
	removeAndHide += item;
}


global allAspects as CTAspectStack[] = [
	<aspect:aer>,
	<aspect:terra>,
	<aspect:ignis>,
	<aspect:aqua>,
	<aspect:ordo>,
	<aspect:perditio>,
	<aspect:vacuos>,
	<aspect:lux>,
	<aspect:motus>,
	<aspect:gelum>,
	<aspect:vitreus>,
	<aspect:metallum>,
	<aspect:victus>,
	<aspect:mortuus>,
	<aspect:potentia>,
	<aspect:permutatio>,
	<aspect:praecantatio>,
	<aspect:auram>,
	<aspect:alkimia>,
	<aspect:vitium>,
	<aspect:tenebrae>,
	<aspect:alienis>,
	<aspect:volatus>,
	<aspect:herba>,
	<aspect:instrumentum>,
	<aspect:fabrico>,
	<aspect:machina>,
	<aspect:vinculum>,
	<aspect:spiritus>,
	<aspect:cognitio>,
	<aspect:sensus>,
	<aspect:aversio>,
	<aspect:praemunio>,
	<aspect:desiderium>,
	<aspect:exanimis>,
	<aspect:bestia>,
	<aspect:humanus>,
] as CTAspectStack[];


global metals as IItemStack[string][string] = {
	syrmorite: {
		ore: <thebetweenlands:syrmorite_ore>,
		nugget: <thebetweenlands:items_misc:41>,
		ingot: <thebetweenlands:items_misc:11>,
		block: <thebetweenlands:syrmorite_block>,
		plate: <thaumcraft:plate:1>,
		cluster: <jaopca:item_clustersyrmorite>
	},
	octine: {
		ore: <thebetweenlands:octine_ore>,
		nugget: <thebetweenlands:items_misc:42>,
		ingot: <thebetweenlands:octine_ingot>,
		block: <thebetweenlands:octine_block>,
		plate: <embers:plate_gold>,
		cluster: <jaopca:item_clusteroctine>
	},
	lead: {
		ore: <betweenores:lead_ore>,
		nugget: <embers:nugget_lead>,
		ingot: <embers:ingot_lead>,
		block: <embers:block_lead>,
		plate: <embers:plate_lead>,
		cluster: <thaumcraft:cluster:5>
	},
	silver: {
		ore: <betweenores:silver_ore>,
		nugget: <embers:nugget_silver>,
		ingot: <embers:ingot_silver>,
		block: <embers:block_silver>,
		plate: <embers:plate_silver>,
		cluster: <thaumcraft:cluster:4>
	},
    copper: {
        ore: <betweenores:copper_ore>,
        nugget: <embers:nugget_copper>,
        ingot: <embers:ingot_copper>,
        block: <embers:block_copper>,
        plate: <embers:plate_copper>,
        cluster: <thaumcraft:cluster:2>
    },
	nickel: {
		ore: <betweenores:nickel_ore>,
		nugget: <embers:nugget_nickel>,
		ingot: <embers:ingot_nickel>,
		block: <embers:block_nickel>,
		plate: <embers:plate_nickel>,
		cluster: <jaopca:item_clusternickel>
	},
	dawnstone: {
		ore: null,
		nugget: <embers:nugget_dawnstone>,
		ingot: <embers:ingot_dawnstone>,
		block: <embers:block_dawnstone>,
		plate: <embers:plate_dawnstone>,
		cluster: null
	},
	bronze: {
		ore: null,
		nugget: <embers:nugget_bronze>,
		ingot: <embers:ingot_bronze>,
		block: <embers:block_bronze>,
		plate: <embers:plate_bronze>,
		cluster: null
	},
	electrum: {
		ore: null,
		nugget: <embers:nugget_electrum>,
		ingot: <embers:ingot_electrum>,
		block: <embers:block_electrum>,
		plate: <embers:plate_electrum>,
		cluster: null
	},
	thaumium: {
		ore: null,
		nugget: <thaumcraft:nugget:6>,
		ingot: <thaumcraft:ingot>,
		block: <thaumcraft:metal_thaumium>,
		plate: <thaumcraft:plate:2>,
		cluster: null
	},
	"void": {
		ore: null,
		nugget: <thaumcraft:nugget:7>,
		ingot: <thaumcraft:ingot:1>,
		block: <thaumcraft:metal_void>,
		plate: <thaumcraft:plate:3>,
		cluster: null
	},
	brass: {
		ore: null,
		nugget: <thaumcraft:nugget:8>,
		ingot: <thaumcraft:ingot:2>,
		block: <thaumcraft:metal_brass>,
		plate: <thaumcraft:plate:0>,
		cluster: null
	},
	iron: {
		ore: <immersiveruins:scrap2>,
		nugget: <minecraft:iron_nugget>,
		ingot: <minecraft:iron_ingot>,
		block: <minecraft:iron_block>,
		plate: <embers:plate_iron>,
		cluster: null
	},
    aluminum: {
        ore: <betweenores:aluminum_ore>,
        nugget: <embers:nugget_aluminum>,
        ingot: <embers:ingot_aluminum>,
        block: <embers:block_aluminum>,
        plate: <embers:plate_aluminum>,
        cluster: <jaopca:item_clusteraluminium>
    }
};

global liquids as ILiquidStack[string] = {
	syrmorite: <liquid:syrmorite>,
	octine: <liquid:octine>,
	lead: <liquid:lead>,
	silver: <liquid:silver>,
	nickel: <liquid:nickel>,
	dawnstone: <liquid:dawnstone>,
	bronze: <liquid:bronze>,
	electrum: <liquid:electrum>,
	thaumium: <liquid:thaumium>,
	"void": <liquid:void>,
	brass: <liquid:brass>,
	copper: <liquid:copper>,
	iron: <liquid:iron>,
    aluminum: <liquid:aluminum>,
};


global removeAndHide as IItemStack[] = [
	<thaumcraft:cluster:0>,
	<thaumcraft:cluster:1>,

	<embers:pickaxe_copper>,
	<embers:axe_copper>,
	<embers:shovel_copper>,
	<embers:hoe_copper>,
	<embers:sword_copper>,
	<embers:pickaxe_silver>,
	<embers:axe_silver>,
	<embers:shovel_silver>,
	<embers:hoe_silver>,
	<embers:sword_silver>,
	<embers:pickaxe_lead>,
	<embers:axe_lead>,
	<embers:shovel_lead>,
	<embers:hoe_lead>,
	<embers:sword_lead>,
	<embers:pickaxe_dawnstone>,
	<embers:axe_dawnstone>,
	<embers:shovel_dawnstone>,
	<embers:hoe_dawnstone>,
	<embers:sword_dawnstone>,
	<embers:pickaxe_aluminum>,
	<embers:axe_aluminum>,
	<embers:shovel_aluminum>,
	<embers:sword_aluminum>,
	<embers:hoe_aluminum>,
	<embers:pickaxe_bronze>,
	<embers:axe_bronze>,
	<embers:shovel_bronze>,
	<embers:sword_bronze>,
	<embers:hoe_bronze>,
	<embers:pickaxe_electrum>,
	<embers:axe_electrum>,
	<embers:shovel_electrum>,
	<embers:sword_electrum>,
	<embers:hoe_electrum>,
	<embers:pickaxe_nickel>,
	<embers:axe_nickel>,
	<embers:shovel_nickel>,
	<embers:sword_nickel>,
	<embers:hoe_nickel>,
	<embers:pickaxe_tin>,
	<embers:axe_tin>,
	<embers:shovel_tin>,
	<embers:sword_tin>,
	<embers:hoe_tin>,
] as IItemStack[];


for item in removeAndHide {
	JEI.removeAndHide(item);
	item.removeAspects(allAspects);
}



global stageSpiritTree as string[] = [
	"roots",
	"arcanearchives"
] as string[];

global stagePrimordial as string[] = [
] as string[];

global stageDreadfulMummy as string[] = [
	//"brazier",
] as string[];

global stageSludgeon as string[] = [
	"thaumcraft",
	"thaumicperiphery",
	"thaumicaugmentation",
	"thaumicredundancy",
	"thaumicperiphery"
] as string[];

global stageForbiddenKnowledge as string[] = [
	//"aetherworks",
	//"midnight",
] as string[];


val oreAllTallFlowers = <ore:allTallFlowers>;

for item in oreAllTallFlowers.items {
    oreAllTallFlowers.remove(item);
}

val oreAllFlowers = <ore:allFlowers>;

for item in oreAllFlowers.items {
    oreAllFlowers.remove(item);
}

oreAllFlowers.add(<thebetweenlands:arrow_arum>);
oreAllFlowers.add(<thebetweenlands:blue_eyed_grass>);
oreAllFlowers.add(<thebetweenlands:blue_iris>);
oreAllFlowers.add(<thebetweenlands:boneset>);
oreAllFlowers.add(<thebetweenlands:bottle_brush_grass>);
oreAllFlowers.add(<thebetweenlands:button_bush>);
oreAllFlowers.add(<thebetweenlands:copper_iris>);
oreAllFlowers.add(<thebetweenlands:marsh_hibiscus>);
oreAllFlowers.add(<thebetweenlands:marsh_mallow>);
oreAllFlowers.add(<thebetweenlands:milkweed>);
oreAllFlowers.add(<thebetweenlands:nettle>);
oreAllFlowers.add(<thebetweenlands:nettle_flowered>);
oreAllFlowers.add(<thebetweenlands:pickerel_weed>);
oreAllFlowers.add(<thebetweenlands:shoots>);
oreAllFlowers.add(<thebetweenlands:soft_rush>);
oreAllFlowers.add(<thebetweenlands:dead_weedwood_bush>);
oreAllFlowers.add(<thebetweenlands:cardinal_flower>);
oreAllFlowers.add(<thebetweenlands:bladderwort_flower>);
oreAllFlowers.add(<thebetweenlands:bog_bean_flower>);
oreAllFlowers.add(<thebetweenlands:golden_club_flower>);
oreAllFlowers.add(<thebetweenlands:marsh_marigold_flower>);

val oreFlowers = <ore:flowers>;

oreFlowers.add(<thebetweenlands:arrow_arum>);
oreFlowers.add(<thebetweenlands:blue_eyed_grass>);
oreFlowers.add(<thebetweenlands:blue_iris>);
oreFlowers.add(<thebetweenlands:boneset>);
oreFlowers.add(<thebetweenlands:bottle_brush_grass>);
oreFlowers.add(<thebetweenlands:button_bush>);
oreFlowers.add(<thebetweenlands:copper_iris>);
oreFlowers.add(<thebetweenlands:marsh_hibiscus>);
oreFlowers.add(<thebetweenlands:marsh_mallow>);
oreFlowers.add(<thebetweenlands:milkweed>);
oreFlowers.add(<thebetweenlands:nettle>);
oreFlowers.add(<thebetweenlands:nettle_flowered>);
oreFlowers.add(<thebetweenlands:pickerel_weed>);
oreFlowers.add(<thebetweenlands:shoots>);
oreFlowers.add(<thebetweenlands:soft_rush>);
oreFlowers.add(<thebetweenlands:dead_weedwood_bush>);
oreFlowers.add(<thebetweenlands:cardinal_flower>);
oreFlowers.add(<thebetweenlands:bladderwort_flower>);
oreFlowers.add(<thebetweenlands:bog_bean_flower>);
oreFlowers.add(<thebetweenlands:golden_club_flower>);
oreFlowers.add(<thebetweenlands:marsh_marigold_flower>);

val oreNS_Tallgrass = <ore:ns_tallgrass>;

oreNS_Tallgrass.add(<thebetweenlands:pitcher_plant>);
oreNS_Tallgrass.add(<thebetweenlands:weeping_blue>);
oreNS_Tallgrass.add(<thebetweenlands:sundew>);
oreNS_Tallgrass.add(<thebetweenlands:venus_fly_trap>);
oreNS_Tallgrass.add(<thebetweenlands:volarpad>);
oreNS_Tallgrass.add(<thebetweenlands:swamp_plant>);
oreNS_Tallgrass.add(<thebetweenlands:mire_coral>);
oreNS_Tallgrass.add(<thebetweenlands:deep_water_coral>);
oreNS_Tallgrass.add(<thebetweenlands:cattail>);
oreNS_Tallgrass.add(<thebetweenlands:algae>);
oreNS_Tallgrass.add(<thebetweenlands:water_weeds>);
oreNS_Tallgrass.add(<thebetweenlands:arrow_arum>);
oreNS_Tallgrass.add(<thebetweenlands:broomsedge>);
oreNS_Tallgrass.add(<thebetweenlands:cave_grass>);
oreNS_Tallgrass.add(<thebetweenlands:sludgecreep>);
oreNS_Tallgrass.add(<thebetweenlands:swamp_tallgrass>);
oreNS_Tallgrass.add(<thebetweenlands:weedwood_bush>);
oreNS_Tallgrass.add(<thebetweenlands:pale_grass>);
oreNS_Tallgrass.add(<thebetweenlands:fallen_leaves>);
oreNS_Tallgrass.add(<thebetweenlands:swamp_double_tallgrass>);
oreNS_Tallgrass.add(<thebetweenlands:phragmites>);
oreNS_Tallgrass.add(<thebetweenlands:tall_sludgecreep>);
oreNS_Tallgrass.add(<thebetweenlands:tall_cattail>);
oreNS_Tallgrass.add(<thebetweenlands:swamp_reed_item>);
oreNS_Tallgrass.add(<thebetweenlands:swamp_kelp_item>);
oreNS_Tallgrass.add(<thebetweenlands:hanger>);
oreNS_Tallgrass.add(<thebetweenlands:hanger:3>);
oreNS_Tallgrass.add(<thebetweenlands:cave_moss>);
oreNS_Tallgrass.add(<thebetweenlands:cryptweed>);
oreNS_Tallgrass.add(<thebetweenlands:string_roots>);

val oreMushrooms = <ore:mushrooms>;
oreMushrooms.add(<thebetweenlands:rotbulb>);

val oreNSWebs = <ore:ns_webs>;

oreNSWebs.add(<thebetweenlands:moss>);
oreNSWebs.add(<thebetweenlands:dead_moss>);
oreNSWebs.add(<thebetweenlands:lichen>);
oreNSWebs.add(<thebetweenlands:dead_lichen>);


<ore:dustWood>.remove(<prodigytech:sawdust>);
<ore:dustWood>.add(<pyrotech:rock:7>);


//<ore:ingotIron>.remove(<minecraft:iron_ingot>);
//<ore:ingotIron>.add(<thebetweenlands:items_misc:11>);

<ore:rock>.add(<thebetweenlands:items_misc:50>);

<ore:feather>.add(<thebetweenlands:items_misc:3>);

<ore:rennetSource>.add(<thebetweenlands:nettle_flowered>);


<ore:nuggetCopper>.remove(<thaumcraft:nugget:1>);
//<ore:nuggetCopper>.remove(<immersiveengineering:metal:20>);

<ore:nuggetTin>.remove(<thaumcraft:nugget:2>);

<ore:nuggetSilver>.remove(<thaumcraft:nugget:3>);
//<ore:nuggetSilver>.remove(<immersiveengineering:metal:23>);

<ore:nuggetIron>.remove(<thaumcraft:nugget>);

//<ore:nuggetAluminum>.remove(<immersiveengineering:metal:21>);
//<ore:nuggetAluminium>.remove(<immersiveengineering:metal:21>);

//<ore:nuggetLead>.remove(<immersiveengineering:metal:22>);

//<ore:nuggetNickel>.remove(<immersiveengineering:metal:24>);

//<ore:nuggetElectrum>.remove(<immersiveengineering:metal:27>);



//<ore:ingotCopper>.remove(<immersiveengineering:metal:0>);
//<ore:ingotAluminum>.remove(<immersiveengineering:metal:1>);
//<ore:ingotAluminium>.remove(<immersiveengineering:metal:1>);
//<ore:ingotLead>.remove(<immersiveengineering:metal:2>);
//<ore:ingotSilver>.remove(<immersiveengineering:metal:3>);
//<ore:ingotNickel>.remove(<immersiveengineering:metal:4>);
//<ore:ingotElectrum>.remove(<immersiveengineering:metal:7>);

<ore:string>.remove(<mysticalworld:silk_thread>);

//<ore:nuggetGold>.remove(<minecraft:gold_nugget>);
//<ore:nuggetOctine>.add(<minecraft:gold_nugget>);

//<ore:nuggetIron>.remove(<minecraft:iron_nugget>);
//<ore:nuggetSyrmorite>.add(<minecraft:iron_nugget>);

//<ore:nuggetSyrmorite>.add(<minecraft:iron_nugget>);

<ore:dentrothystShard>.add(<thebetweenlands:dentrothyst_shard_orange>);
<ore:dentrothystShard>.add(<thebetweenlands:dentrothyst_shard_green>);

<ore:paneGlass>.remove(<minecraft:stained_glass_pane:*>);
<ore:paneGlass>.remove(<minecraft:glass_pane>);

<ore:blockGlass>.remove(<minecraft:stained_glass:*>);
<ore:blockGlass>.remove(<minecraft:glass>);

//<ore:blockLead>.remove(<immersiveengineering:storage:2>);


//<ore:gemLapis>.remove(<minecraft:dye:4>);
<ore:gemLapis>.add(<thebetweenlands:items_misc:47>);

<ore:slabWood>.remove(<minecraft:wooden_slab:*>);
<ore:plankWood>.remove(<minecraft:planks:*>);
<ore:plankWood>.remove(<pizzacraft:olive_planks>);

<ore:trapdoorWood>.add(<thebetweenlands:weedwood_trapdoor>);
<ore:trapdoorWood>.add(<thebetweenlands:rubber_tree_plank_trapdoor>);
<ore:trapdoorWood>.add(<thebetweenlands:giant_root_plank_trapdoor>);
<ore:trapdoorWood>.add(<thebetweenlands:hearthgrove_plank_trapdoor>);
<ore:trapdoorWood>.add(<thebetweenlands:nibbletwig_plank_trapdoor>);

<ore:lever>.add(<thebetweenlands:weedwood_lever>);
<ore:lever>.add(<embers:caminite_lever>);

<ore:middleGems>.add(<thebetweenlands:green_middle_gem>);
<ore:middleGems>.add(<thebetweenlands:crimson_middle_gem>);
<ore:middleGems>.add(<thebetweenlands:aqua_middle_gem>);

<ore:leather>.add(<thebetweenlands:items_misc:4>);
<ore:leather>.remove(<minecraft:leather>);

<ore:shimmerstone>.add(<thebetweenlands:shimmer_stone>);

<ore:oreBucketSwampWater>.add(<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "swamp_water", Amount: 1000}}));
<ore:oreBucketSwampWater>.add(<thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "swamp_water", Amount: 1000}}));

<ore:bow>.add(<roots:wildwood_bow:*>);
<ore:bow>.add(<thebetweenlands:weedwood_bow:*>);
<ore:bow>.add(<thebetweenlands:predator_bow:*>);

<ore:shallowBreathVial>.add(<thebetweenlands:dentrothyst_fluid_vial:0>.withTag({Fluid: {FluidName: "shallowbreath", Amount: 1000}}));
<ore:shallowBreathVial>.add(<thebetweenlands:dentrothyst_fluid_vial:1>.withTag({Fluid: {FluidName: "shallowbreath", Amount: 1000}}));

<ore:doorWood>.add(<thebetweenlands:weedwood_door_item>);
<ore:doorWood>.add(<thebetweenlands:rubber_tree_plank_door_item>);
<ore:doorWood>.add(<thebetweenlands:giant_root_plank_door_item>);
<ore:doorWood>.add(<thebetweenlands:hearthgrove_plank_door_item>);
<ore:doorWood>.add(<thebetweenlands:nibbletwig_plank_door_item>);

<ore:doorWood>.remove(<minecraft:wooden_door>);
<ore:doorWood>.remove(<minecraft:dark_oak_door>);
<ore:doorWood>.remove(<minecraft:acacia_door>);
<ore:doorWood>.remove(<minecraft:jungle_door>);
<ore:doorWood>.remove(<minecraft:birch_door>);
<ore:doorWood>.remove(<minecraft:spruce_door>);

<ore:doorMetal>.add(<thebetweenlands:scabyst_door_item>);
<ore:doorMetal>.add(<thebetweenlands:syrmorite_door_item>);

<ore:plateSyrmorite>.add(<thaumcraft:plate:1>);
<ore:plateOctine>.add(<embers:plate_gold>);

<ore:torch>.remove(<minecraft:torch>);

<ore:banner>.add(<thaumcraft:banner_white>);
<ore:banner>.add(<thaumcraft:banner_orange>);
<ore:banner>.add(<thaumcraft:banner_magenta>);
<ore:banner>.add(<thaumcraft:banner_lightblue>);
<ore:banner>.add(<thaumcraft:banner_yellow>);
<ore:banner>.add(<thaumcraft:banner_lime>);
<ore:banner>.add(<thaumcraft:banner_pink>);
<ore:banner>.add(<thaumcraft:banner_gray>);
<ore:banner>.add(<thaumcraft:banner_silver>);
<ore:banner>.add(<thaumcraft:banner_cyan>);
<ore:banner>.add(<thaumcraft:banner_purple>);
<ore:banner>.add(<thaumcraft:banner_blue>);
<ore:banner>.add(<thaumcraft:banner_brown>);
<ore:banner>.add(<thaumcraft:banner_green>);
<ore:banner>.add(<thaumcraft:banner_red>);
<ore:banner>.add(<thaumcraft:banner_black>);

<ore:dustAsh>.add(<pyrotech:material:0>);
<ore:dustAsh>.remove(<prodigytech:ash>);
<ore:dustAshes>.remove(<embers:dust_ash>);

<ore:toolAxe>.add(<thebetweenlands:valonite_axe:*>);
<ore:toolAxe>.add(<roots:terrastone_axe:*>);
<ore:toolAxe>.add(<roots:living_axe:*>);
<ore:toolAxe>.add(<thaumcraft:thaumium_axe:*>);
<ore:toolAxe>.add(<thaumcraft:void_axe:*>);
<ore:toolAxe>.add(<thaumcraft:elemental_axe:*>);
<ore:toolAxe>.add(<thebetweenlands:weedwood_axe:*>);
<ore:toolAxe>.add(<thebetweenlands:bone_axe:*>);
<ore:toolAxe>.add(<thebetweenlands:octine_axe:*>);
<ore:toolAxe>.add(<roots:runed_axe:*>);

<ore:candyHalloween>.add(<thebetweenlands:candy_blue>);
<ore:candyHalloween>.add(<thebetweenlands:candy_red>);
<ore:candyHalloween>.add(<thebetweenlands:candy_yellow>);

<ore:slimeball>.remove(<minecraft:slime_ball>);

<ore:blockRedstone>.remove(<minecraft:redstone_block>);
<ore:blockRedstone>.add(<betweenlandsredstone:scabyst_block>);


<ore:dyeWhite>.remove(<botania:dye>);
<ore:dyeOrange>.remove(<botania:dye:1>);
<ore:dyeMagenta>.remove(<botania:dye:2>);
<ore:dyeLightBlue>.remove(<botania:dye:3>);
<ore:dyeYellow>.remove(<botania:dye:4>);
<ore:dyeLime>.remove(<botania:dye:5>);
<ore:dyePink>.remove(<botania:dye:6>);
<ore:dyeGray>.remove(<botania:dye:7>);
<ore:dyeLightGray>.remove(<botania:dye:8>);
<ore:dyeCyan>.remove(<botania:dye:9>);
<ore:dyePurple>.remove(<botania:dye:10>);
<ore:dyeBlue>.remove(<botania:dye:11>);
<ore:dyeBrown>.remove(<botania:dye:12>);
<ore:dyeGreen>.remove(<botania:dye:13>);
<ore:dyeRed>.remove(<botania:dye:14>);
<ore:dyeBlack>.remove(<botania:dye:15>);


<ore:petalAny>.add(<botania:mushroom:*>);
<ore:petalWhite>.remove(<botania:petal:0>);
<ore:petalOrange>.remove(<botania:petal:1>);
<ore:petalMagenta>.remove(<botania:petal:2>);
<ore:petalLightBlue>.remove(<botania:petal:3>);
<ore:petalYellow>.remove(<botania:petal:4>);
<ore:petalLime>.remove(<botania:petal:5>);
<ore:petalPink>.remove(<botania:petal:6>);
<ore:petalGray>.remove(<botania:petal:7>);
<ore:petalLightGray>.remove(<botania:petal:8>);
<ore:petalCyan>.remove(<botania:petal:9>);
<ore:petalPurple>.remove(<botania:petal:10>);
<ore:petalBlue>.remove(<botania:petal:11>);
<ore:petalBrown>.remove(<botania:petal:12>);
<ore:petalGreen>.remove(<botania:petal:13>);
<ore:petalRed>.remove(<botania:petal:14>);
<ore:petalBlack>.remove(<botania:petal:15>);

val candles = [
	<thaumcraft:candle_white>,
	<thaumcraft:candle_orange>,
	<thaumcraft:candle_magenta>,
	<thaumcraft:candle_lightblue>,
	<thaumcraft:candle_yellow>,
	<thaumcraft:candle_lime>,
	<thaumcraft:candle_pink>,
	<thaumcraft:candle_gray>,
	<thaumcraft:candle_silver>,
	<thaumcraft:candle_cyan>,
	<thaumcraft:candle_purple>,
	<thaumcraft:candle_blue>,
	<thaumcraft:candle_brown>,
	<thaumcraft:candle_green>,
	<thaumcraft:candle_red>,
	<thaumcraft:candle_black>,
] as IItemStack[];

for candle in candles {
	<ore:candles>.add(candle);
}


val oreVisCrystals = <ore:visCrystals>;
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vacuos"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "bestia"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "lux"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "motus"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "gelum"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitreus"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "metallum"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "victus"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "mortuus"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "potentia"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "permutatio"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "auram"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alkimia"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "tenebrae"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "volatus"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "herba"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "instrumentum"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "fabrico"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "machina"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vinculum"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "spiritus"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "cognitio"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sensus"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aversio"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praemunio"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "desiderium"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "exanimis"}]}));
oreVisCrystals.add(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "humanus"}]}));












# OreDict Removal
<ore:logWood>.remove(<mysticalworld:charred_log>);
<ore:logWood>.remove(<primallib:log_stripped_oak>);
<ore:logWood>.remove(<primallib:log_stripped_spruce>);
<ore:logWood>.remove(<primallib:log_stripped_birch>);
<ore:logWood>.remove(<primallib:log_stripped_jungle>);
<ore:logWood>.remove(<primallib:log_stripped_acacia>);
<ore:logWood>.remove(<primallib:log_stripped_dark_oak>);
<ore:logWood>.remove(<pizzacraft:olive_log>);

<ore:plankWood>.remove(<mysticalworld:charred_planks>);
<ore:plankWood>.remove(<growthcraft_apples:apple_planks>);
<ore:plankWood>.remove(<growthcraft_bamboo:bamboo_plank>);

<ore:slabWood>.remove(<mysticalworld:charred_slab>);

<ore:stairWood>.remove(<minecraft:oak_stairs>);
<ore:stairWood>.remove(<minecraft:spruce_stairs>);
<ore:stairWood>.remove(<minecraft:birch_stairs>);
<ore:stairWood>.remove(<minecraft:jungle_stairs>);
<ore:stairWood>.remove(<minecraft:acacia_stairs>);
<ore:stairWood>.remove(<minecraft:dark_oak_stairs>);
<ore:stairWood>.remove(<mysticalworld:charred_stairs>);

<ore:fenceWood>.remove(<minecraft:fence>);
<ore:fenceWood>.remove(<minecraft:spruce_fence>);
<ore:fenceWood>.remove(<minecraft:birch_fence>);
<ore:fenceWood>.remove(<minecraft:jungle_fence>);
<ore:fenceWood>.remove(<minecraft:dark_oak_fence>);
<ore:fenceWood>.remove(<minecraft:acacia_fence>);
<ore:fenceWood>.remove(<mysticalworld:charred_fence>);

<ore:fenceGateWood>.remove(<minecraft:fence_gate>);
<ore:fenceGateWood>.remove(<minecraft:spruce_fence_gate>);
<ore:fenceGateWood>.remove(<minecraft:birch_fence_gate>);
<ore:fenceGateWood>.remove(<minecraft:jungle_fence_gate>);
<ore:fenceGateWood>.remove(<minecraft:dark_oak_fence_gate>);
<ore:fenceGateWood>.remove(<minecraft:acacia_fence_gate>);

<ore:stickWood>.remove(<primallib:wooden_shaft>);
<ore:stickWood>.remove(<mod_lavacow:mossy_stick>);

<ore:treeSapling>.remove(<minecraft:sapling:*>);
<ore:treeSapling>.remove(<pizzacraft:olive_sapling>);

<ore:treeLeaves>.remove(<minecraft:leaves:*>);
<ore:treeLeaves>.remove(<minecraft:leaves2:*>);
<ore:treeLeaves>.remove(<pizzacraft:olive_leaves>);

<ore:vine>.remove(<minecraft:vine>);

<ore:sugarcane>.remove(<minecraft:reeds>);

//<ore:slimeball>.remove(<sanity:spectergoo>);

<ore:bone>.remove(<minecraft:bone>);

<ore:string>.remove(<primallib:twine>);

<ore:feather>.remove(<minecraft:feather>);

<ore:record>.remove(<minecraft:record_13>);
<ore:record>.remove(<minecraft:record_cat>);
<ore:record>.remove(<minecraft:record_blocks>);
<ore:record>.remove(<minecraft:record_chirp>);
<ore:record>.remove(<minecraft:record_far>);
<ore:record>.remove(<minecraft:record_mall>);
<ore:record>.remove(<minecraft:record_mellohi>);
<ore:record>.remove(<minecraft:record_stal>);
<ore:record>.remove(<minecraft:record_strad>);
<ore:record>.remove(<minecraft:record_ward>);
<ore:record>.remove(<minecraft:record_11>);
<ore:record>.remove(<minecraft:record_wait>);

<ore:dirt>.remove(<minecraft:dirt>);

<ore:grass>.remove(<minecraft:grass>);

<ore:stone>.remove(<minecraft:stone>);

<ore:pyreFireStarters>.add(<thebetweenlands:octine_ingot>);
<ore:pyreFireStarters>.add(<pyrotech:flint_and_tinder:*>);
<ore:pyreFireStarters>.remove(<minecraft:flint_and_steel:*>);

<ore:cobblestone>.remove(<pyrotech:cobblestone>);
<ore:cobblestone>.remove(<pyrotech:cobblestone:1>);
<ore:cobblestone>.remove(<pyrotech:cobblestone:2>);
<ore:cobblestone>.remove(<pyrotech:cobblestone:3>);

<ore:sand>.remove(<minecraft:sand:*>);

<ore:workbench>.remove(<minecraft:crafting_table>);

<ore:blockGlassColorless>.remove(<minecraft:glass>);

<ore:paneGlassColorless>.remove(<minecraft:glass_pane>);

<ore:flowerPot>.add(<thebetweenlands:mud_flower_pot>);
<ore:flowerPot>.add(<minecraft:flower_pot>);

//<ore:chest>.remove(<minecraft:chest>);
<ore:chest>.remove(<minecraft:ender_chest>);
<ore:chest>.remove(<minecraft:trapped_chest>);
<ore:chest>.remove(<minecraft:white_shulker_box>);
<ore:chest>.remove(<minecraft:orange_shulker_box>);
<ore:chest>.remove(<minecraft:magenta_shulker_box>);
<ore:chest>.remove(<minecraft:light_blue_shulker_box>);
<ore:chest>.remove(<minecraft:yellow_shulker_box>);
<ore:chest>.remove(<minecraft:lime_shulker_box>);
<ore:chest>.remove(<minecraft:pink_shulker_box>);
<ore:chest>.remove(<minecraft:gray_shulker_box>);
<ore:chest>.remove(<minecraft:silver_shulker_box>);
<ore:chest>.remove(<minecraft:cyan_shulker_box>);
<ore:chest>.remove(<minecraft:purple_shulker_box>);
<ore:chest>.remove(<minecraft:blue_shulker_box>);
<ore:chest>.remove(<minecraft:brown_shulker_box>);
<ore:chest>.remove(<minecraft:green_shulker_box>);
<ore:chest>.remove(<minecraft:red_shulker_box>);
<ore:chest>.remove(<minecraft:black_shulker_box>);

//<ore:chestWood>.remove(<minecraft:chest>);

<ore:dyeBlack>.remove(<mysticalworld:ink_bottle>);

<ore:nuggetLead>.remove(<thaumcraft:nugget:4>);

<ore:trapdoorWood>.remove(<minecraft:trapdoor>);

<ore:oreCopper>.remove(<embers:ore_copper>);
//<ore:oreCopper>.remove(<immersiveengineering:ore>);

<ore:oreLead>.remove(<embers:ore_lead>);
//<ore:oreLead>.remove(<immersiveengineering:ore:2>);

<ore:oreSilver>.remove(<embers:ore_silver>);
//<ore:oreSilver>.remove(<immersiveengineering:ore:3>);

<ore:oreAluminum>.remove(<embers:ore_aluminum>);
//<ore:oreAluminum>.remove(<immersiveengineering:ore:1>);
//<ore:oreAluminium>.remove(<immersiveengineering:ore:1>);

//<ore:oreNickel>.remove(<immersiveengineering:ore:4>);

<ore:plateIron>.remove(<thaumcraft:plate:1>);
//<ore:plateIron>.remove(<immersiveengineering:metal:39>);

//<ore:plateGold>.remove(<immersiveengineering:metal:40>);

//<ore:plateCopper>.remove(<immersiveengineering:metal:30>);

//<ore:plateAluminum>.remove(<immersiveengineering:metal:31>);
//<ore:plateAluminium>.remove(<immersiveengineering:metal:31>);

//<ore:plateLead>.remove(<immersiveengineering:metal:32>);

//<ore:plateSilver>.remove(<immersiveengineering:metal:33>);

//<ore:plateNickel>.remove(<immersiveengineering:metal:34>);

//<ore:plateElectrum>.remove(<immersiveengineering:metal:37>);



<ore:rock>.remove(<pyrotech:rock>);
<ore:rock>.remove(<pyrotech:rock:2>);
<ore:rock>.remove(<pyrotech:rock:1>);
<ore:rock>.remove(<pyrotech:rock:3>);
<ore:rock>.remove(<pyrotech:rock:6>);
<ore:rock>.remove(<pyrotech:rock:8>);
<ore:rock>.remove(<pyrotech:rock:10>);

//<ore:stoneLimestone>.remove(<dawnoftimebuilder:cobbled_limestone>);
//<ore:stoneLimestone>.remove(<dawnoftimebuilder:limestone_brick>);

<ore:toolAxe>.remove(<minecraft:stone_axe:*>);
<ore:toolAxe>.remove(<minecraft:iron_axe:*>);
<ore:toolAxe>.remove(<minecraft:golden_axe:*>);
<ore:toolAxe>.remove(<minecraft:diamond_axe:*>);
<ore:toolAxe>.remove(<pyrotech:flint_axe:*>);
<ore:toolAxe>.remove(<pyrotech:bone_axe:*>);
<ore:toolAxe>.remove(<pyrotech:obsidian_axe:*>);
<ore:toolAxe>.remove(<pyrotech:redstone_axe:*>);

<ore:toolSharp>.remove(<minecraft:stone_axe:*>);
<ore:toolSharp>.remove(<minecraft:iron_axe:*>);
<ore:toolSharp>.remove(<minecraft:golden_axe:*>);
<ore:toolSharp>.remove(<minecraft:diamond_axe:*>);
<ore:toolSharp>.remove(<pyrotech:flint_axe:*>);
<ore:toolSharp>.remove(<pyrotech:bone_axe:*>);
<ore:toolSharp>.remove(<pyrotech:obsidian_axe:*>);
<ore:toolSharp>.remove(<pyrotech:redstone_axe:*>);
<ore:toolSharp>.remove(<minecraft:stone_sword:*>);
<ore:toolSharp>.remove(<minecraft:iron_sword:*>);
<ore:toolSharp>.remove(<minecraft:golden_sword:*>);
<ore:toolSharp>.remove(<minecraft:diamond_sword:*>);
<ore:toolSharp>.remove(<pyrotech:flint_sword:*>);
<ore:toolSharp>.remove(<pyrotech:bone_sword:*>);
<ore:toolSharp>.remove(<pyrotech:obsidian_sword:*>);
<ore:toolSharp>.remove(<pyrotech:redstone_sword:*>);

<ore:twine>.remove(<minecraft:string>);

<ore:blockBone>.remove(<minecraft:bone_block>);

<ore:oreAluminium>.remove(<embers:ore_aluminum>);
