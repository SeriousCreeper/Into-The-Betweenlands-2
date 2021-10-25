#priority -199

import mods.ItemStages;
import mods.recipestages.Recipes;
import mods.orestages.OreStages;
import crafttweaker.item.IItemStack;




OreStages.addReplacement("knowledge_of_technology", <betweenores:copper_ore>, <thebetweenlands:betweenstone>);
OreStages.addReplacement("knowledge_of_technology", <betweenores:lead_ore>, <thebetweenlands:pitstone>);
OreStages.addReplacement("knowledge_of_technology", <betweenores:nickel_ore>, <thebetweenlands:pitstone>);
OreStages.addReplacement("knowledge_of_technology", <betweenores:silver_ore>, <thebetweenlands:pitstone>);
OreStages.addReplacement("knowledge_of_technology", <betweenores:aluminum_ore>, <thebetweenlands:betweenstone>);
//OreStages.addReplacement("knowledge_of_technology", <thaumcraft:ore_amber>, <thebetweenlands:betweenstone>);
//OreStages.addReplacement("knowledge_of_technology", <thaumcraft:ore_cinnabar>, <thebetweenlands:pitstone>);

OreStages.addReplacement("locked", <minecraft:dirt>, <thebetweenlands:swamp_dirt>);


Recipes.setRecipeStageByMod("knowledge_of_technology", "immersiveengineering");
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