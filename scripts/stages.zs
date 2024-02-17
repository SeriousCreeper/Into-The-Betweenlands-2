#priority -199

import mods.ItemStages;
import mods.recipestages.Recipes;
import mods.orestages.OreStages;
import mods.MobStages;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
//import mods.multiblockstages.IEMultiBlockStages;


MobStages.addStage("knowledge_of_malice", "embers:ancient_golem");
MobStages.addStage("knowledge_of_decay", "thaumcraft:wisp");

OreStages.addReplacement("knowledge_of_malice", <betweenores:copper_ore>, <thebetweenlands:betweenstone>);
OreStages.addReplacement("knowledge_of_malice", <betweenores:lead_ore>, <thebetweenlands:pitstone>);
OreStages.addReplacement("knowledge_of_malice", <betweenores:silver_ore>, <thebetweenlands:pitstone>);
OreStages.addReplacement("knowledge_of_malice", <betweenores:aluminum_ore>, <thebetweenlands:betweenstone>);
OreStages.addReplacement("knowledge_of_malice", <betweenores:nickel_ore>, <thebetweenlands:pitstone>);
OreStages.addReplacement("knowledge_of_malice", <thaumcraft:ore_amber>, <thebetweenlands:betweenstone>);
OreStages.addReplacement("knowledge_of_malice", <thaumcraft:ore_cinnabar>, <thebetweenlands:pitstone>);

//OreStages.addReplacement("locked", <minecraft:dirt>, <thebetweenlands:swamp_dirt>);
OreStages.addReplacement("locked", <minecraft:obsidian>, <thebetweenlands:tar_solid>);
//OreStages.addReplacement("locked", <pyrotech:material:0>, <embers:dust_ash>);

Recipes.setRecipeStageByMod("locked", "futuremc");
Recipes.setRecipeStageByMod("locked", "grimoireofgaia");

ItemStages.stageModItems("locked", "futuremc");
ItemStages.stageModItems("locked", "grimoireofgaia");

ItemStages.stageModItems("locked", "mowziesmobs");
ItemStages.stageModItems("locked", "mowziesmobs");

val itemsToLock = [
	<embers:isolated_materia>,
	<thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "liquid_death", Amount: 1000}}),
	<thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "liquid_death", Amount: 1000}}),
	<thaumicaugmentation:thaumostatic_harness>,
	<thaumicaugmentation:thaumostatic_harness_augment>,
	<thaumicaugmentation:thaumostatic_harness_augment:1>,
	<thaumicaugmentation:elytra_harness_augment>,
	<thaumicaugmentation:elytra_harness>,
] as IItemStack[];

for item in itemsToLock {
	ItemStages.addItemStage("locked", item);
	Recipes.setRecipeStage("locked", item);
}

ItemStages.addItemStage("chose_botania", <bladditions:corrupted_bone_wayfinder>.withTag({dungeon_id: "maze_botania_start"}));


val rootsItemsNotToStage = [
] as IItemStack[];

val embersItemsNotToStage = [
	<embers:dust_ash>,
	<soot:sulfur_ore>,
	<soot:sulfur_clump>,
] as IItemStack[];

val thaumcraftItemsNotToStage = [
	<thaumcraft:brain>,
	<thaumcraft:plate:1>,
	<thaumcraft:crystal_essence>,
	<thaumcraft:ore_amber>,
	<thaumcraft:ore_cinnabar>,
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
] as IItemStack[];


stageMods("roots", "knowledge_of_druids", rootsItemsNotToStage);

stageMods("embers", "knowledge_of_malice", embersItemsNotToStage);
stageMods("soot", "knowledge_of_malice", embersItemsNotToStage);

stageMods("thaumcraft", "knowledge_of_decay", thaumcraftItemsNotToStage);

stageMods("bloodmagic", "chose_bloodmagic", bloodmagicItemsNotToStage);
stageMods("bloodmagic", "bloodmagic", bloodmagicItemsNotToStage);
stageMods("botania", "chose_botania", botaniaItemsNotToStage);

var sludgeonStage = "knowledge_of_decay";
//var sludgeonStage = "unstaged";

stageMods("thaumicaugmentation", sludgeonStage, thaumicaugmentationItemsNotToStage);
//stageMods("immersiveengineering", sludgeonStage, ieItemsNotToStage);
//stageMods("engineersdoors", sludgeonStage, ieItemsNotToStage);
//stageMods("engineeredgolems", sludgeonStage, ieItemsNotToStage);
//stageMods("immersivepetroleum", sludgeonStage, ieItemsNotToStage);

stageMods("wormhole", sludgeonStage, wormholeItemsNotToStage);

ItemStages.addItemStage(sludgeonStage, <pyrotech:wither_forge>);
Recipes.setRecipeStage(sludgeonStage, <pyrotech:wither_forge>);
Recipes.setRecipeStage("botania", <botania:lexicon>.withTag({}));

Recipes.setRecipeStageByMod("unstaged", "aetherworks");
ItemStages.stageModItems("unstaged", "aetherworks");
Recipes.setRecipeStageByMod("unstaged", "aetheriumashenarmor");
ItemStages.stageModItems("unstaged", "aetheriumashenarmor");
Recipes.setRecipeStageByMod("unstaged", "bloodmagic");
ItemStages.stageModItems("unstaged", "bloodmagic");
Recipes.setRecipeStageByMod("unstaged", "prodigytech");
ItemStages.stageModItems("unstaged", "prodigytech");
Recipes.setRecipeStageByMod("unstaged", "modularmachinery");
ItemStages.stageModItems("unstaged", "modularmachinery");
Recipes.setRecipeStageByMod("unstaged", "deepresonance");
ItemStages.stageModItems("unstaged", "deepresonance");
Recipes.setRecipeStageByMod("unstaged", "arcaneworld");
ItemStages.stageModItems("unstaged", "arcaneworld");



ItemStages.addItemStage("unstaged", <thaumicaugmentation:gauntlet>.withTag({color: 8022208}));


//IEMultiBlockStages.addStage("removed", "IE:CokeOven", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IE:AlloySmelter", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IE:BlastFurnace", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IE:MetalPress", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IE:Mixer", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IE:Squeezer", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IE:Fermenter", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IE:Refinery", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IE:DieselGenerator", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IE:ArcFurnace", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IP:DistillationTower", "This multiblock is not available.");
//IEMultiBlockStages.addStage("removed", "IP:Pumpjack", "This multiblock is not available.");


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

Recipes.addShapeless("book_knowledge_of_druids", "knowledge_of_druids", <gamestagebooks:knowledge_of_druids>, [
	<minecraft:book>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>
]);

Recipes.addShapeless("book_knowledge_of_malice", "knowledge_of_malice", <gamestagebooks:knowledge_of_malice>, [
	<minecraft:book>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>
]);

Recipes.addShapeless("book_knowledge_of_decay", "knowledge_of_decay", <gamestagebooks:knowledge_of_decay>, [
	<minecraft:book>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>
]);

/*
Recipes.addShapeless("book_knowledge_of_technology", "knowledge_of_technology", <gamestagebooks:knowledge_of_technology>, [
	<minecraft:book>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>
]);
*/





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