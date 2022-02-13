import mods.compatskills.SkillCreator.createSkill;
import mods.compatskills.Skill;
import mods.compatskills.TraitCreator;
import mods.compatskills.GameStageUnlockable;


var skills = [
	<skill:reskillable:agility>,
	<skill:reskillable:attack>,
	<skill:reskillable:building>,
	<skill:reskillable:defense>,
	<skill:reskillable:farming>,
	<skill:reskillable:gathering>,
	<skill:reskillable:magic>,
	<skill:reskillable:mining>,
	<skill:compatskills:smithing>,
	<skill:compatskills:technology>,
	<skill:compatskills:taming>
] as Skill[];

val survival = createSkill("survival", "thebetweenlands:textures/blocks/swamp_dirt.png");
survival.name = "Survival";
survival.setRankIcon(0, "minecraft:textures/items/iron_ingot.png");
survival.setRankIcon(1, "minecraft:textures/items/gold_ingot.png");


mods.WailaStages.addRequirement("waila_pyrotech", "Burn Time:"); 


/*
var test = TraitCreator.createTrait("pyrotech", 2, 3, "compatskills:survival", 1, "compatskills:survival|1");
test.name = "Pyrotech";
test.description = "See information about pyrotech machines.";
*/

GameStageUnlockable.addGameStageUnlockable("waila_pyrotech", "waila_pyrotech", 0, 0, "compatskills:survival", 1, "compatskills:survival|1");

var trait_more_sulfur = TraitCreator.createTrait("more_sulfur", 1, 0, "compatskills:survival", 1, "compatskills:survival|1");

trait_more_sulfur.onBlockDrops = function(event as crafttweaker.event.BlockHarvestDropsEvent) {
	if(event.block.definition.id.matches(<thebetweenlands:sulfur_ore>.definition.id)) {
    	event.addItem(<thebetweenlands:items_misc:18> % 33);
    }
};