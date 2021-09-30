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
// THAUMCRAFT
	<thaumcraft:cluster:0>,
	<thaumcraft:cluster:1>,

] as IItemStack[];


for item in removeAndHide {
	JEI.removeAndHide(item);
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



//<ore:ingotIron>.remove(<minecraft:iron_ingot>);
//<ore:ingotIron>.add(<thebetweenlands:items_misc:11>);

<ore:rock>.add(<thebetweenlands:items_misc:50>);


<ore:rennetSource>.add(<thebetweenlands:nettle_flowered>);


<ore:nuggetCopper>.remove(<thaumcraft:nugget:1>);
<ore:nuggetTin>.remove(<thaumcraft:nugget:2>);
<ore:nuggetSilver>.remove(<thaumcraft:nugget:3>);
<ore:nuggetIron>.remove(<thaumcraft:nugget>);

//<ore:ingotCopper>.remove(<tmechworks:ingots:1>);

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