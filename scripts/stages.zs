#priority -199

import mods.ItemStages;
import mods.recipestages.Recipes;
import mods.orestages.OreStages;
import mods.MobStages;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


MobStages.addStage("knowledge_of_malice", "embers:ancient_golem");
MobStages.addStage("knowledge_of_decay", "thaumcraft:wisp");

OreStages.addReplacement("knowledge_of_malice", <betweenores:copper_ore>, <thebetweenlands:betweenstone>);
OreStages.addReplacement("knowledge_of_malice", <betweenores:lead_ore>, <thebetweenlands:pitstone>);
OreStages.addReplacement("knowledge_of_malice", <betweenores:silver_ore>, <thebetweenlands:pitstone>);
OreStages.addReplacement("knowledge_of_malice", <betweenores:aluminum_ore>, <thebetweenlands:betweenstone>);
OreStages.addReplacement("knowledge_of_malice", <thaumcraft:ore_amber>, <thebetweenlands:betweenstone>);
OreStages.addReplacement("knowledge_of_malice", <thaumcraft:ore_cinnabar>, <thebetweenlands:pitstone>);
OreStages.addReplacement("knowledge_of_malice", <betweenores:nickel_ore>, <thebetweenlands:pitstone>);

OreStages.addReplacement("locked", <minecraft:dirt>, <thebetweenlands:swamp_dirt>);
OreStages.addReplacement("locked", <minecraft:obsidian>, <thebetweenlands:tar_solid>);
//OreStages.addReplacement("locked", <pyrotech:material:0>, <embers:dust_ash>);

ItemStages.addItemStage("knowledge_of_technology", <thebetweenlands:swift_pick:*>);


val rootsItemsNotToStage = [
] as IItemStack[];

val embersItemsNotToStage = [
	<embers:dust_ash>,
] as IItemStack[];

val thaumcraftItemsNotToStage = [
	<thaumcraft:brain>,
	<thaumcraft:plate:1>
] as IItemStack[];

val thaumicaugmentationItemsNotToStage = [
] as IItemStack[];

val aetherworksItemsNotToStage = [
] as IItemStack[];

val wormholeItemsNotToStage = [
] as IItemStack[];

val ieItemsNotToStage = [
] as IItemStack[];

stageMods("roots", "knowledge_of_spirit", rootsItemsNotToStage);

stageMods("embers", "knowledge_of_malice", embersItemsNotToStage);
stageMods("soot", "knowledge_of_malice", embersItemsNotToStage);

stageMods("thaumcraft", "knowledge_of_decay", thaumcraftItemsNotToStage);

stageMods("thaumicaugmentation", "knowledge_of_technology", thaumicaugmentationItemsNotToStage);
stageMods("immersiveengineering", "knowledge_of_technology", ieItemsNotToStage);
stageMods("engineersdoors", "knowledge_of_technology", ieItemsNotToStage);
stageMods("engineeredgolems", "knowledge_of_technology", ieItemsNotToStage);
stageMods("immersivepetroleum", "knowledge_of_technology", ieItemsNotToStage);

stageMods("wormhole", "knowledge_of_technology", wormholeItemsNotToStage);

ItemStages.addItemStage("knowledge_of_technology", <pyrotech:wither_forge>);
Recipes.setRecipeStage("knowledge_of_technology", <pyrotech:wither_forge>);

Recipes.setRecipeStageByMod("unstaged", "aetherworks");
ItemStages.stageModItems("unstaged", "aetherworks");
Recipes.setRecipeStageByMod("unstaged", "aetheriumashenarmor");
ItemStages.stageModItems("unstaged", "aetheriumashenarmor");

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

Recipes.addShapeless("book_knowledge_of_spirit", "knowledge_of_spirit", <gamestagebooks:knowledge_of_spirit>, [
	<minecraft:book>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>, <roots:wildroot>
]);

Recipes.addShapeless("book_knowledge_of_malice", "knowledge_of_malice", <gamestagebooks:knowledge_of_malice>, [
	<minecraft:book>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>
]);

Recipes.addShapeless("book_knowledge_of_decay", "knowledge_of_decay", <gamestagebooks:knowledge_of_decay>, [
	<minecraft:book>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>
]);

Recipes.addShapeless("book_knowledge_of_technology", "knowledge_of_technology", <gamestagebooks:knowledge_of_technology>, [
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