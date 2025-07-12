#priority -199

import mods.ItemStages;
import mods.recipestages.Recipes;
import mods.orestages.OreStages;
import mods.MobStages;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.multiblockstages.IEMultiBlockStages;

var stageCragrock = "knowledge_of_druids";
var stageWightFortress = "knowledge_of_malice";
var stageSpiritTree = "knowledge_of_spirit";
var stageSludgeon = "knowledge_of_decay";
var stageTechnology = "knowledge_of_technology";

MobStages.addStage(stageWightFortress, "embers:ancient_golem");
MobStages.addStage(stageSpiritTree, "thaumcraft:wisp");

OreStages.addReplacement(stageWightFortress, <betweenores:copper_ore>, <thebetweenlands:betweenstone>);
OreStages.addReplacement(stageWightFortress, <betweenores:lead_ore>, <thebetweenlands:pitstone>);
OreStages.addReplacement(stageWightFortress, <betweenores:silver_ore>, <thebetweenlands:betweenstone>);
OreStages.addReplacement(stageWightFortress, <betweenores:aluminum_ore>, <thebetweenlands:betweenstone>);
OreStages.addReplacement(stageWightFortress, <betweenores:nickel_ore>, <thebetweenlands:pitstone>);
OreStages.addReplacement(stageSpiritTree, <thaumcraft:ore_amber>, <thebetweenlands:betweenstone>);
OreStages.addReplacement(stageSpiritTree, <thaumcraft:ore_cinnabar>, <thebetweenlands:pitstone>);

//OreStages.addReplacement("locked", <minecraft:dirt>, <thebetweenlands:swamp_dirt>);
OreStages.addReplacement("locked", <minecraft:obsidian>, <thebetweenlands:tar_solid>);
//OreStages.addReplacement("locked", <pyrotech:material:0>, <embers:dust_ash>);

Recipes.setRecipeStageByMod("locked", "wormhole");
Recipes.setRecipeStageByMod("locked", "mowziesmobs");

ItemStages.stageModItems("locked", "wormhole");
ItemStages.stageModItems("locked", "mowziesmobs");


stageMods("futuremc", "locked", [
	<futuremc:barrel>
]);


val itemsToLock = [
	<embers:isolated_materia>,
	<thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "liquid_death", Amount: 1000}}),
	<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "liquid_death", Amount: 1000}}),
	<thaumicaugmentation:thaumostatic_harness>,
	<thaumicaugmentation:thaumostatic_harness_augment>,
	<thaumicaugmentation:thaumostatic_harness_augment:1>,
	<thaumicaugmentation:elytra_harness_augment>,
	<thaumicaugmentation:elytra_harness>,
	<embers:blasting_core>,
] as IItemStack[];

for item in itemsToLock {
	ItemStages.addItemStage("locked", item);
	Recipes.setRecipeStage("locked", item);
}

ItemStages.addItemStage("unlocked_botania", <bladditions:corrupted_bone_wayfinder>.withTag({dungeon_id: "maze_botania_start"}));
ItemStages.addItemStage("unlocked_bloodmagic", <bladditions:corrupted_bone_wayfinder>.withTag({dungeon_id: "maze_bloodmagic_start"}));


val rootsItemsNotToStage = [
] as IItemStack[];

val embersItemsNotToStage = [
	<embers:dust_ash>,
	<soot:sulfur_ore>,
	<soot:sulfur_clump>,
	<soot:sulfur>
] as IItemStack[];

val thaumcraftItemsNotToStage = [
	<thaumcraft:brain>,
	<thaumcraft:plate:1>,
	<thaumcraft:crystal_essence>,
	//<thaumcraft:ore_amber>,
	//<thaumcraft:ore_cinnabar>,
	//<thaumcraft:amber>,
	//<thaumcraft:amber_block>,
	//<thaumcraft:amber_brick>,
	<thaumcraft:crystal_aer>,
	<thaumcraft:crystal_ignis>,
	<thaumcraft:crystal_aqua>,
	<thaumcraft:crystal_terra>,
	<thaumcraft:crystal_ordo>,
	<thaumcraft:crystal_perditio>,
	<thaumcraft:crystal_vitium>,
] as IItemStack[];

val thaumicaugmentationItemsNotToStage = [
] as IItemStack[];

val aetherworksItemsNotToStage = [
] as IItemStack[];

val wormholeItemsNotToStage = [
] as IItemStack[];

val ieItemsNotToStage = [
] as IItemStack[];

val botaniaItemsNotToStage = [
	<botania:lexicon>.withTag({})
] as IItemStack[];

val bloodmagicItemsNotToStage = [
	<immersiveengineering:skyhook>,
	<immersiveengineering:connector:6>,
	<immersiveengineering:material:13>,
] as IItemStack[];


stageMods("roots", stageCragrock, rootsItemsNotToStage);

stageMods("thaumcraft", stageSpiritTree, thaumcraftItemsNotToStage);

stageMods("embers", stageWightFortress, embersItemsNotToStage);
stageMods("soot", stageWightFortress, embersItemsNotToStage);

stageMods("bloodmagic", "chose_bloodmagic", bloodmagicItemsNotToStage);
stageMods("botania", "chose_botania", botaniaItemsNotToStage);

stageMods("thaumicaugmentation", stageSludgeon, thaumicaugmentationItemsNotToStage);

stageMods("immersiveengineering", stageTechnology, ieItemsNotToStage);

//var stageSludgeon = "unstaged";
//stageMods("immersiveengineering", stageTechnology, ieItemsNotToStage);
//stageMods("engineersdoors", stageTechnology, ieItemsNotToStage);
//stageMods("engineeredgolems", stageTechnology, ieItemsNotToStage);
//stageMods("immersivepetroleum", stageTechnology, ieItemsNotToStage);

stageMods("wormhole", stageSludgeon, wormholeItemsNotToStage);

ItemStages.addItemStage(stageSludgeon, <pyrotech:wither_forge>);
ItemStages.addItemStage(stageSpiritTree, <jaopca:thaumcraft_cluster.octine>);
ItemStages.addItemStage(stageSpiritTree, <jaopca:thaumcraft_cluster.syrmorite>);

Recipes.setRecipeStage(stageSludgeon, <pyrotech:wither_forge>);
Recipes.setRecipeStage("botania", <botania:lexicon>.withTag({}));

Recipes.setRecipeStageByMod("unstaged", "aetherworks");
ItemStages.stageModItems("unstaged", "aetherworks");
Recipes.setRecipeStageByMod("unstaged", "aetheriumashenarmor");
ItemStages.stageModItems("unstaged", "aetheriumashenarmor");
Recipes.setRecipeStageByMod("unstaged", "prodigytech");
ItemStages.stageModItems("unstaged", "prodigytech");
Recipes.setRecipeStageByMod("unstaged", "modularmachinery");
ItemStages.stageModItems("unstaged", "modularmachinery");
Recipes.setRecipeStageByMod("unstaged", "deepresonance");
ItemStages.stageModItems("unstaged", "deepresonance");
Recipes.setRecipeStageByMod("unstaged", "arcaneworld");
ItemStages.stageModItems("unstaged", "arcaneworld");


IEMultiBlockStages.addStage("removed", "IE:CokeOven", "This multiblock is not available.");
IEMultiBlockStages.addStage("removed", "IE:AlloySmelter", "This multiblock is not available.");
IEMultiBlockStages.addStage(stageTechnology, "IE:BlastFurnace", "This multiblock is not available.");
IEMultiBlockStages.addStage("removed", "IE:MetalPress", "This multiblock is not available.");
IEMultiBlockStages.addStage(stageTechnology, "IE:Mixer", "This multiblock is not available.");
IEMultiBlockStages.addStage(stageTechnology, "IE:Squeezer", "This multiblock is not available.");
IEMultiBlockStages.addStage(stageTechnology, "IE:Fermenter", "This multiblock is not available.");
IEMultiBlockStages.addStage(stageTechnology, "IE:Refinery", "This multiblock is not available.");
IEMultiBlockStages.addStage("removed", "IE:DieselGenerator", "This multiblock is not available.");
IEMultiBlockStages.addStage(stageTechnology, "IE:ArcFurnace", "This multiblock is not available.");
IEMultiBlockStages.addStage("removed", "IP:DistillationTower", "This multiblock is not available.");
IEMultiBlockStages.addStage("removed", "IP:Pumpjack", "This multiblock is not available.");


function stageMods(modID as string, stageID as string, itemsToKeep as IItemStack[]) {
	val modItems = loadedMods[modID].items;

	for item in modItems {
		var skip = false;

	    for wlItem in itemsToKeep {
	    	if(wlItem.matches(item)) {
	            skip = true;
	            break;
	        }
	    }

	    if(!skip) {
	    	ItemStages.addItemStage(stageID, item);

	    	if(modID != "thaumcraft" && modID != "thaumicaugmentation") {
	    		Recipes.setRecipeStage(stageID, item);
	    	}
	    }
	}
}

Recipes.addShapeless("book_knowledge_of_druids", stageCragrock, <gamestagebooks:knowledge_of_druids>, [
	<minecraft:book>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>
]);

Recipes.addShapeless("book_knowledge_of_spirit", stageSpiritTree, <gamestagebooks:knowledge_of_spirit>, [
	<minecraft:book>, <thaumcraft:salis_mundus>, <thaumcraft:salis_mundus>, <thaumcraft:salis_mundus>, <thaumcraft:salis_mundus>, <thaumcraft:salis_mundus>, <thaumcraft:salis_mundus>, <thaumcraft:salis_mundus>, <thaumcraft:salis_mundus>
]);

Recipes.addShapeless("book_knowledge_of_malice", stageWightFortress, <gamestagebooks:knowledge_of_malice>, [
	<minecraft:book>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>
]);

Recipes.addShapeless("book_knowledge_of_decay", stageSludgeon, <gamestagebooks:knowledge_of_decay>, [
	<minecraft:book>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>
]);

Recipes.addShapeless("book_knowledge_of_technology", stageTechnology, <gamestagebooks:knowledge_of_technology>, [
	<minecraft:book>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>
]);





//Recipes.setRecipeStageByMod("knowledge_of_technology", "immersiveengineering");
//ItemStages.stageModItems("knowledge_of_technology", "immersiveengineering");


/*

Recipes.setRecipeStage("knowledge_of_spirit", <arcanearchives:radiant_resonator>);
ItemStages.addItemStage("knowledge_of_spirit", <arcanearchives:radiant_resonator>);
Recipes.setRecipeStage("knowledge_of_spirit", <roots:wood_knife>);
ItemStages.addItemStage("knowledge_of_spirit", <roots:wood_knife>);
Recipes.setRecipeStage("knowledge_of_spirit", <roots:stone_knife>);
ItemStages.addItemStage("knowledge_of_spirit", <roots:stone_knife>);
Recipes.setRecipeStage("knowledge_of_spirit", <roots:iron_knife>);
ItemStages.addItemStage("knowledge_of_spirit", <roots:iron_knife>);
Recipes.setRecipeStage("knowledge_of_spirit", <roots:diamond_knife>);
ItemStages.addItemStage("knowledge_of_spirit", <roots:diamond_knife>);


Recipes.setRecipeStage("knowledge_of_malice", <embers:tinker_hammer>);
ItemStages.addItemStage("knowledge_of_malice", <embers:tinker_hammer>);


Recipes.setRecipeStage("knowledge_of_decay", <thaumcraft:salis_mundus>);
ItemStages.addItemStage("knowledge_of_decay", <thaumcraft:salis_mundus>);

*/


/*
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
*/

/*
for mod in stageSpiritTree {
	Recipes.setRecipeStageByMod("knowledge_of_spirit", mod);
	ItemStages.stageModItems("knowledge_of_spirit", mod);
}

for mod in stagePrimordial {
	Recipes.setRecipeStageByMod("knowledge_of_malice", mod);
	ItemStages.stageModItems("knowledge_of_malice", mod);
}

for mod in stageDreadfulMummy {
	Recipes.setRecipeStageByMod("knowledge_of_dread", mod);
	ItemStages.stageModItems("knowledge_of_dread", mod);
}

for mod in stageSludgeon {
	Recipes.setRecipeStageByMod("knowledge_of_decay", mod);
	ItemStages.stageModItems("knowledge_of_decay", mod);
}

for mod in stageForbiddenKnowledge {
	Recipes.setRecipeStageByMod("forbidden_knowledge", mod);
	ItemStages.stageModItems("forbidden_knowledge", mod);
}
*/