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


global removeAndHide as IItemStack[] = [
// EMBERS
	<embers:axe_copper>,
	<embers:axe_dawnstone>,
	<embers:axe_lead>,
	<embers:axe_silver>,
	<embers:hoe_copper>,
	<embers:hoe_dawnstone>,
	<embers:hoe_lead>,
	<embers:hoe_silver>,
	<embers:pickaxe_copper>,
	<embers:pickaxe_dawnstone>,
	<embers:pickaxe_lead>,
	<embers:pickaxe_silver>,
	<embers:shovel_copper>,
	<embers:shovel_dawnstone>,
	<embers:shovel_lead>,
	<embers:shovel_silver>,
	<embers:sword_copper>,
	<embers:sword_dawnstone>,
	<embers:sword_lead>,
	<embers:sword_silver>,
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
	<embers:ore_copper>,
	<embers:ore_lead>,
	<embers:ore_silver>,
	<embers:ore_nickel>,
	<embers:ore_tin>,
	<embers:ore_aluminum>,
	<embers:ore_quartz>,
	<embers:geo_separator>,

// MECH WORKS
	<tmechworks:metal:*>,
	<tmechworks:ingots:*>,
	<tmechworks:nuggets:*>,
	<tmechworks:drawbridge:1>,
	<tmechworks:firestarter>,

// MYSTICAL GEARS
	<mystgears:drill_diamond>,
	<mystgears:drill>,
	<mystgears:redstone_dynamo>,
	<mech_crafting:sturdy_gearbox>,
	<mech_crafting:mechanical_bellows>,

] as IItemStack[];


for item in removeAndHide {
	JEI.removeAndHide(item);
}



global stageSpiritTree as string[] = [
	"roots",
	"arcanearchives"
] as string[];

global stagePrimordial as string[] = [
	"embers",
	"mystgears",
	"mysticalmechanics",
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
oreAllFlowers.add(<thebetweenlands:sludgecreep>);
oreAllFlowers.add(<thebetweenlands:soft_rush>);
oreAllFlowers.add(<thebetweenlands:dead_weedwood_bush>);


<ore:nuggetLead>.remove(<embers:nugget_lead>);
<ore:nuggetCopper>.remove(<thaumcraft:nugget:1>);
<ore:nuggetTin>.remove(<thaumcraft:nugget:2>);
<ore:nuggetSilver>.remove(<thaumcraft:nugget:3>);

<ore:ingotCopper>.remove(<tmechworks:ingots:1>);

<ore:string>.remove(<mysticalworld:silk_thread>);

<ore:crystalSeed>.add(<embers:seed_iron>);
<ore:crystalSeed>.add(<embers:seed_gold>);
<ore:crystalSeed>.add(<embers:seed_copper>);
<ore:crystalSeed>.add(<embers:seed_silver>);
<ore:crystalSeed>.add(<embers:seed_dawnstone>);
<ore:crystalSeed>.add(<embers:seed_aluminum>);
<ore:crystalSeed>.add(<embers:seed_nickel>);
<ore:crystalSeed>.add(<embers:seed_tin>);

<ore:nuggetGold>.remove(<minecraft:gold_nugget>);
<ore:nuggetOctine>.add(<minecraft:gold_nugget>);

<ore:nuggetIron>.remove(<minecraft:iron_nugget>);
//<ore:nuggetIron>.remove(<thaumcraft:nugget>);
//<ore:nuggetSyrmorite>.add(<minecraft:iron_nugget>);

<ore:dentrothystShard>.add(<thebetweenlands:dentrothyst_shard_orange>);
<ore:dentrothystShard>.add(<thebetweenlands:dentrothyst_shard_green>);

<ore:paneGlass>.remove(<minecraft:stained_glass_pane:*>);
<ore:paneGlass>.remove(<minecraft:glass_pane>);

<ore:blockGlass>.remove(<minecraft:stained_glass:*>);
<ore:blockGlass>.remove(<minecraft:glass>);

<ore:gemLapis>.remove(<minecraft:dye:4>);

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

<ore:torch>.remove(<minecraft:torch>);

<ore:dustColoredRedstone>.remove(<coloredredstone:colored_redstone_dust:*>);
<ore:dustColoredRedstone>.add(<coloredredstone:colored_redstone_dust:12>);

<ore:blockRedstone>.remove(<coloredredstone:colored_redstone_block:*>);
<ore:blockRedstone>.add(<coloredredstone:colored_redstone_block:12>);

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