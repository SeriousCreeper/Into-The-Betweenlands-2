import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.botania.Apothecary;
import mods.botania.RuneAltar;
import mods.botania.ElvenTrade;
import mods.botaniatweaks.Agglomeration;
import mods.botania.Orechid;
import mods.botania.OrechidIgnem;

// variables
var defaultPureDaisyTime = 60 * 20; // make this faster as pacifisit


// normal recipes

recipes.remove(<botania:specialflower>.withTag({type: "puredaisy"}));
recipes.remove(<botania:petal:*>);
recipes.remove(<botania:dye:*>);
recipes.remove(<botania:quartztypedark>);
recipes.remove(<botania:quartztypemana>);
recipes.remove(<botania:quartztypeblaze>);
recipes.remove(<botania:quartztypelavender>);
recipes.remove(<botania:quartztypered>);
recipes.remove(<botania:quartztypeelf>);
recipes.remove(<botania:quartztypesunny>);
recipes.remove(<botania:managun>);

recipes.removeByRecipeName("jaopca:manaresource_87j9uz");
recipes.removeByRecipeName("jaopca:manaresource_bwwdqo");

recipes.remove(<botania:altar>);
scripts.utils.addShaped("altar_0", <botania:altar>, [
	[<roots:runestone_slab>, <ore:petalAny>, <roots:runestone_slab>], 
	[null, <roots:runestone>, null], 
	[<roots:runestone>, <roots:runestone>, <roots:runestone>]
]);

recipes.remove(<botania:manaresource:6>);
scripts.utils.addShapeless("botania_manaresource_6", <botania:manaresource:6>, [<betweenlandsredstone:scabyst_dust>, <thebetweenlands:swamp_tallgrass>]);

recipes.remove(<botania:fertilizer>);
scripts.utils.addShapeless("fertilizer", <botania:fertilizer>, [<ore:petalAny>, <minecraft:dye:11>, <minecraft:dye:11>, <minecraft:dye:1>, <minecraft:dye:1>]);

recipes.removeByRecipeName("botania:pavement_0");
recipes.removeByRecipeName("botania:pavement_1");
recipes.removeByRecipeName("botania:pavement_2");
recipes.removeByRecipeName("botania:pavement_3");
recipes.removeByRecipeName("botania:pavement_4");
recipes.removeByRecipeName("botania:pavement_5");
scripts.utils.addShapeless("pavement_0", <botania:pavement> * 3, [<ore:livingrock>, <ore:cobblestone>, <ore:sand>]);

scripts.utils.addShaped("pavement_1", <botania:pavement:1> * 8, [
	[<botania:pavement>, <botania:pavement>, <botania:pavement>],
	[<botania:pavement>, <minecraft:dye:0>, <botania:pavement>],
	[<botania:pavement>, <botania:pavement>, <botania:pavement>]
]);

scripts.utils.addShaped("pavement_2", <botania:pavement:2> * 8, [
	[<botania:pavement>, <botania:pavement>, <botania:pavement>],
	[<botania:pavement>, <minecraft:dye:4>, <botania:pavement>],
	[<botania:pavement>, <botania:pavement>, <botania:pavement>]
]);

scripts.utils.addShaped("pavement_3", <botania:pavement:3> * 8, [
	[<botania:pavement>, <botania:pavement>, <botania:pavement>],
	[<botania:pavement>, <minecraft:dye:1>, <botania:pavement>],
	[<botania:pavement>, <botania:pavement>, <botania:pavement>]
]);

scripts.utils.addShaped("pavement_4", <botania:pavement:4> * 8, [
	[<botania:pavement>, <botania:pavement>, <botania:pavement>],
	[<botania:pavement>, <minecraft:dye:11>, <botania:pavement>],
	[<botania:pavement>, <botania:pavement>, <botania:pavement>]
]);

scripts.utils.addShaped("pavement_5", <botania:pavement:5> * 8, [
	[<botania:pavement>, <botania:pavement>, <botania:pavement>],
	[<botania:pavement>, <minecraft:dye:2>, <botania:pavement>],
	[<botania:pavement>, <botania:pavement>, <botania:pavement>]
]);

recipes.remove(<botania:lexicon>);
scripts.utils.addShapeless("lexicon", <botania:lexicon>.withTag({}), [<ore:petalAny>, <minecraft:book>]);

recipes.remove(<botania:lens>);
scripts.utils.addShaped("lens_0_glass_pane", <botania:lens>, [
	[null, <ore:ingotManasteel>, null], 
	[<ore:ingotManasteel>, <thebetweenlands:filtered_silt_glass_pane>, <ore:ingotManasteel>], 
	[null, <ore:ingotManasteel>, null]
]);

recipes.remove(<botania:lens:10>);
scripts.utils.addShapeless("lens_10", <botania:lens:10>, [<botania:lens>.withTag({}), <ore:ingotSyrmorite>, <ore:ingotOctine>]);

recipes.remove(<botania:lens:12>);
scripts.utils.addShaped("lens_12", <botania:lens:12>, [
	[<thebetweenlands:items_misc:47>, <ore:runeAirB>, <thebetweenlands:items_misc:47>], 
	[<thebetweenlands:items_misc:47>, <botania:lens>.withTag({}), <thebetweenlands:items_misc:47>], 
	[<thebetweenlands:items_misc:47>, <thebetweenlands:items_misc:47>, <thebetweenlands:items_misc:47>]
]);

recipes.remove(<botania:lens:13>);
scripts.utils.addShaped("lens_13", <botania:lens:13>, [
	[<thebetweenlands:items_misc:47>, <thebetweenlands:items_misc:47>, <thebetweenlands:items_misc:47>], 
	[<thebetweenlands:items_misc:47>, <botania:lens>.withTag({}), <thebetweenlands:items_misc:47>], 
	[<thebetweenlands:items_misc:47>, <ore:runeWaterB>, <thebetweenlands:items_misc:47>]
]);

recipes.remove(<botania:lens:22>);
scripts.utils.addShaped("lens_22", <botania:lens:22>, [
	[null, <thebetweenlands:items_misc:32>, null], 
	[<thebetweenlands:items_misc:32>, <botania:lens>, <thebetweenlands:items_misc:32>], 
	[null, <thebetweenlands:items_misc:32>, null]
]);

recipes.remove(<botania:lens:15>);
scripts.utils.addShapeless("lens_15", <botania:lens:15>, [<botania:lens>.withTag({}), <embers:wildfire_core>]);

recipes.remove(<botania:lens:14>);
scripts.utils.addShaped("lens_14", <botania:lens:14>, [
	[null, <ore:ingotElvenElementium>, null], 
	[<thebetweenlands:samite:*>, <botania:lens>.withTag({}), <thebetweenlands:samite:*>], 
	[null, <ore:ingotElvenElementium>, null]
]);

recipes.remove(<botania:grassseeds:3>);
scripts.utils.addShapeless("grassseeds_3", <botania:grassseeds:3>, [<botania:grassseeds>, <thebetweenlands:dead_weedwood_bush>]);

recipes.remove(<botania:grassseeds:4>);
scripts.utils.addShapeless("grassseeds_4", <botania:grassseeds:4>, [<botania:grassseeds>, <thebetweenlands:items_misc:6>]);

recipes.remove(<botania:grassseeds:6>);
scripts.utils.addShapeless("grassseeds_6", <botania:grassseeds:6>, [<botania:grassseeds>, <embers:shard_ember>]);

recipes.remove(<botania:grassseeds:7>);
scripts.utils.addShapeless("grassseeds_7", <botania:grassseeds:7>, [<botania:grassseeds>, <thebetweenlands:items_misc:47>]);

recipes.remove(<botania:grassseeds:8>);
scripts.utils.addShapeless("grassseeds_8", <botania:grassseeds:8>, [<botania:grassseeds>, <thebetweenlands:items_misc:30>]);

recipes.remove(<botania:spreader>);
scripts.utils.addShaped("spreader_0", <botania:spreader>, [
	[<ore:livingwood>, <ore:livingwood>, <ore:livingwood>], 
	[<ore:ingotOctine>, <ore:petalAny>, null], 
	[<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]
]);

recipes.remove(<botania:pylon>);
scripts.utils.addShaped("pylon_0", <botania:pylon>, [
	[null, <ore:ingotOctine>, null], 
	[<ore:ingotManasteel>, <ore:manaDiamond>, <ore:ingotManasteel>], 
	[null, <ore:ingotOctine>, null]
]);

recipes.remove(<botania:manavoid>);
scripts.utils.addShaped("manavoid", <botania:manavoid>, [
	[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>], 
	[<thebetweenlands:tar_solid>, null, <thebetweenlands:tar_solid>], 
	[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
]);

recipes.remove(<botania:turntable>);
scripts.utils.addShaped("turntable", <botania:turntable>, [
	[<ore:livingwood>, <ore:livingwood>, <ore:livingwood>], 
	[<ore:livingwood>, <betweenlandsredstone:scabyst_sticky_piston>, <ore:livingwood>], 
	[<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]
]);

recipes.remove(<botania:alchemycatalyst>);
scripts.utils.addShaped("alchemycatalyst", <botania:alchemycatalyst>, [
	[<ore:livingrock>, <ore:ingotOctine>, <ore:livingrock>], 
	[<thebetweenlands:alembic>, <ore:manaPearl>, <thebetweenlands:alembic>], 
	[<ore:livingrock>, <ore:ingotOctine>, <ore:livingrock>]
]);

recipes.remove(<botania:foresteye>);
scripts.utils.addShaped("foresteye", <botania:foresteye>, [
	[<ore:ingotManasteel>, <ore:livingrock>, <ore:ingotManasteel>], 
	[<ore:livingrock>, <thebetweenlands:wight_heart>, <ore:livingrock>], 
	[<ore:ingotManasteel>, <ore:livingrock>, <ore:ingotManasteel>]
]);

recipes.remove(<botania:dreamwood:2>);
scripts.utils.addShapeless("dreamwood_2", <botania:dreamwood:2>, [<botania:dreamwood:1>, <thebetweenlands:moss>]);

recipes.remove(<botania:dreamwood:5>);
scripts.utils.addShapeless("dreamwood_5", <botania:dreamwood:5>, [<ore:dreamwood>, <embers:shard_ember>]);

recipes.removeByRecipeName("botania:custombrick_0");
scripts.utils.addShapeless("custombrick_0", <botania:custombrick>, [<ore:gemLapis>, <thebetweenlands:polished_limestone>]);

recipes.remove(<botania:endereyeblock>);
scripts.utils.addShaped("endereyeblock", <botania:endereyeblock>, [
	[null, <thebetweenlands:wight_heart>, null], 
	[<thebetweenlands:wight_heart>, <thebetweenlands:tar_solid>, <thebetweenlands:wight_heart>], 
	[null, <thebetweenlands:wight_heart>, null]
]);

recipes.remove(<botania:starfield>);
scripts.utils.addShaped("starfield", <botania:starfield>, [
	[<ore:ingotElvenElementium>, <ore:elvenPixieDust>, <ore:ingotElvenElementium>], 
	[<ore:ingotElvenElementium>, <thaumicaugmentation:starfield_glass:*>, <ore:ingotElvenElementium>]
]);

recipes.remove(<botania:redstringdispenser>);
scripts.utils.addShaped("redstringdispenser", <botania:redstringdispenser>, [
	[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>], 
	[<ore:livingrock>, <betweenlandsredstone:scabyst_dispenser>, <ore:bRedString>], 
	[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
]);

recipes.remove(<botania:prism>);
scripts.utils.addShaped("prism", <botania:prism>, [
	[<thebetweenlands:filtered_silt_glass>, <thebetweenlands:shimmer_stone>, <thebetweenlands:filtered_silt_glass>], 
	[<thebetweenlands:filtered_silt_glass>, <botania:platform:1>, <thebetweenlands:filtered_silt_glass>], 
	[<thebetweenlands:filtered_silt_glass>, <thebetweenlands:shimmer_stone>, <thebetweenlands:filtered_silt_glass>]
]);

recipes.remove(<botania:corporeaindex>);
scripts.utils.addShaped("corporeaindex", <botania:corporeaindex>, [
	[<ore:bEnderAirBottle>, <thebetweenlands:tar_solid>, <ore:bEnderAirBottle>], 
	[<thebetweenlands:tar_solid>, <botania:corporeaspark>, <thebetweenlands:tar_solid>], 
	[<ore:elvenDragonstone>, <thebetweenlands:tar_solid>, <ore:elvenDragonstone>]
]);

recipes.remove(<botania:corporeafunnel>);
scripts.utils.addShapeless("corporeafunnel", <botania:corporeafunnel>, [<betweenlandsredstone:scabyst_dropper>, <botania:corporeaspark>]);

recipes.remove(<botania:pump>);
scripts.utils.addShaped("pump", <botania:pump>, [
	[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>], 
	[<ore:ingotManasteel>, <thebetweenlands:bl_bucket:1>, <ore:ingotManasteel>], 
	[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
]);

recipes.remove(<botania:hourglass>);
scripts.utils.addShaped("hourglass", <botania:hourglass>, [
	[<ore:ingotOctine>, <botania:managlass>, <ore:ingotOctine>],
	[null, <ore:ingotManasteel>, null],
	[<ore:ingotOctine>, <botania:managlass>, <ore:ingotOctine>]
]);

recipes.remove(<botania:ghostrail>);
scripts.utils.addShapeless("ghostrail", <botania:ghostrail>, [<betweenlandsredstone:scabyst_rail>, <botania:platform:1>]);

recipes.remove(<botania:lightrelay>);
scripts.utils.addShapeless("lightrelay_0", <botania:lightrelay>, [<ore:bRedString>, <ore:elvenDragonstone>, <thebetweenlands:wisp>]);

recipes.remove(<botania:lightrelay:3>);
scripts.utils.addShapeless("lightrelay_3", <botania:lightrelay:3>, [<botania:lightrelay>, <ore:lever>]);

recipes.remove(<botania:livingwood:2>);
scripts.utils.addShapeless("livingwood_2", <botania:livingwood:2>, [<botania:livingwood:1>, <thebetweenlands:moss>]);

recipes.remove(<botania:livingwood:5>);
scripts.utils.addShapeless("livingwood_5", <botania:livingwood:5>, [<ore:livingwood>, <thebetweenlands:wisp>]);

recipes.remove(<botania:livingrock:2>);
scripts.utils.addShapeless("livingrock_2", <botania:livingrock:2>, [<botania:livingrock:1>, <thebetweenlands:moss>]);

recipes.remove(<botania:cellblock>);
scripts.utils.addShaped("cellblock", <botania:cellblock> * 3, [
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>], 
	[<thebetweenlands:middle_fruit>, <thebetweenlands:yellow_dotted_fungus>, <thebetweenlands:weeping_blue_petal>],
	[<thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>, <thebetweenlands:swamp_reed_item>]
]);

recipes.remove(<botania:redstringinterceptor>);
scripts.utils.addShaped("redstringinterceptor", <botania:redstringinterceptor>, [
	[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>], 
	[<ore:livingrock>, <thebetweenlands:betweenstone_button>, <ore:bRedString>], 
	[<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
]);

recipes.remove(<botania:lens:17>);
scripts.utils.addShaped("lens_17", <botania:lens:17>, [
	[<thaumcraft:amber_block>, <thebetweenlands:pyrad_flame>, <thaumcraft:amber_block>], 
	[<thebetweenlands:pyrad_flame>, <botania:lens>, <thebetweenlands:pyrad_flame>], 
	[<thaumcraft:amber_block>, <thebetweenlands:pyrad_flame>, <thaumcraft:amber_block>]
]);

recipes.remove(<botania:firerod>);
scripts.utils.addShaped("firerod", <botania:firerod>, [
	[null, null, <embers:wildfire_core>], 
	[null, <ore:livingwoodTwig>, null], 
	[<ore:runeFireB>, null, null]
]);

recipes.remove(<botania:glasspick>);
scripts.utils.addShaped("glasspick", <botania:glasspick>, [
	[<thebetweenlands:filtered_silt_glass>, <ore:ingotManasteel>, <thebetweenlands:filtered_silt_glass>],
	[null, <ore:livingwoodTwig>, null], 
	[null, <ore:livingwoodTwig>, null]
]);

recipes.remove(<botania:spark>);
scripts.utils.addShaped("spark", <botania:spark>, [
	[null, <ore:petalAny>, null], 
	[<embers:dust_ember>, <ore:nuggetOctine>, <embers:dust_ember>], 
	[null, <ore:petalAny>, null]
]);

recipes.remove(<botania:monocle>);
scripts.utils.addShaped("monocle", <botania:monocle>, [
	[<botania:managlass>, <ore:ingotOctine>], 
	[<ore:ingotManasteel>, <ore:ingotOctine>], 
	[null, <ore:ingotOctine>]
]);

recipes.remove(<botania:itemfinder>);
scripts.utils.addShaped("itemfinder", <botania:itemfinder>, [
	[null, <minecraft:iron_ingot>, null], 
	[<minecraft:iron_ingot>, <thebetweenlands:items_misc:52>, <minecraft:iron_ingot>], 
	[<minecraft:iron_ingot>, <thebetweenlands:polished_dentrothyst>, <minecraft:iron_ingot>]
]);

recipes.remove(<botania:swapring>);
scripts.utils.addShaped("swapring", <botania:swapring>, [
	[<thebetweenlands:filtered_silt>, <botania:manaresource>, null], 
	[<botania:manaresource>, null, <botania:manaresource>], 
	[null, <botania:manaresource>, null]
]);

recipes.remove(<botanianeedsit:mana_capacitor_manasteel:1>);
scripts.utils.addShapeless("mana_capacitor_manasteel", <botanianeedsit:mana_capacitor_manasteel:1> * 64, [<botania:manaresource>, <thebetweenlands:items_misc:22>]);

recipes.remove(<botanianeedsit:mana_capacitor_elementium:1>);
scripts.utils.addShapeless("mana_capacitor_elementium", <botanianeedsit:mana_capacitor_elementium:1> * 25, [<botania:manaresource:7>, <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn()]);

recipes.remove(<botania:terraplate>);
scripts.utils.addShaped("terraplate", <botania:terraplate>, [
	[<roots:chiseled_runed_obsidian>, <roots:chiseled_runed_obsidian>, <roots:chiseled_runed_obsidian>], 
	[<ore:runeWaterB>, <botania:storage:2>, <ore:runeFireB>], 
	[<ore:runeEarthB>, <ore:runeManaB>, <ore:runeAirB>]
]);

recipes.removeByRecipeName("botania:terrasteelhelm");
scripts.utils.addShaped("terrasteelhelm", <botania:terrasteelhelm>, [
	[<ore:livingwoodTwig>, <ore:runeSpringB>, <ore:livingwoodTwig>], 
	[<ore:ingotTerrasteel>, <thaumcraft:void_helm>, <ore:ingotTerrasteel>],
	[null, <ore:ingotTerrasteel>, null]
]);

recipes.removeByRecipeName("botania:terrasteelchest");
scripts.utils.addShaped("terrasteelchest", <botania:terrasteelchest>, [
	[<ore:livingwoodTwig>, <ore:runeSummerB>, <ore:livingwoodTwig>], 
	[<ore:ingotTerrasteel>, <thaumcraft:void_chest>, <ore:ingotTerrasteel>], 
	[null, <ore:ingotTerrasteel>, null]
]);

recipes.removeByRecipeName("botania:terrasteellegs");
scripts.utils.addShaped("terrasteellegs", <botania:terrasteellegs>, [
	[<ore:livingwoodTwig>, <ore:runeAutumnB>, <ore:livingwoodTwig>], 
	[<ore:ingotTerrasteel>, <thaumcraft:void_legs>, <ore:ingotTerrasteel>], 
	[null, <ore:ingotTerrasteel>, null]
]);

recipes.removeByRecipeName("botania:terrasteelboots");
scripts.utils.addShaped("terrasteelboots", <botania:terrasteelboots>, [
	[<ore:livingwoodTwig>, <ore:runeWinterB>, <ore:livingwoodTwig>],
	[<ore:ingotTerrasteel>, <thaumcraft:void_boots>, <ore:ingotTerrasteel>], 
	[null, <ore:ingotTerrasteel>, null]
]);


for i in 0 to 16 {
	recipes.remove(<botania:shinyflower>.withDamage(i));
	recipes.remove(<botania:miniisland>.withDamage(i));
	scripts.utils.addShapeless("shinyflower_" ~ i, <botania:shinyflower>.withDamage(i), [<thebetweenlands:wisp>, <thebetweenlands:wisp>, <botania:flower>.withDamage(i)]);
	scripts.utils.addShapeless("miniisland_" ~ i, <botania:miniisland>.withDamage(i), [<botania:shinyflower>.withDamage(i), <botania:grassseeds>, <thebetweenlands:swamp_dirt>]);
}





// pure daisy recipes

//PureDaisy.addRecipe(<roots:runestone>, <botania:livingrock>, defaultPureDaisyTime);
//PureDaisy.addRecipe(<roots:wildwood_log>, <botania:livingwood>, defaultPureDaisyTime);

PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.removeRecipe(<minecraft:cobblestone>);
PureDaisy.removeRecipe(<minecraft:sand>);
PureDaisy.removeRecipe(<minecraft:packed_ice>);
PureDaisy.removeRecipe(<minecraft:obsidian>);
PureDaisy.removeRecipe(<minecraft:snow>);





// mana infusions

val manaInfusionsToRemove = [
	<minecraft:leather>,
	<minecraft:wheat_seeds>,
	<minecraft:potato>,
	<minecraft:carrot>,
	<minecraft:beetroot_seeds>,
	<minecraft:melon_seeds>,
	<minecraft:pumpkin_seeds>,
	<minecraft:dye:3>,
	<minecraft:nether_wart>,
	<minecraft:flint>,
	<minecraft:gunpowder>,
	<minecraft:name_tag>,
	<minecraft:string>,
	<minecraft:slime_ball>,
	<minecraft:cactus>,
	<minecraft:ender_pearl>,
	<minecraft:redstone>,
	<minecraft:glowstone_dust>,
	<minecraft:sand:*>,
	<minecraft:clay_ball>,
	<minecraft:brick>,
	<minecraft:dirt:*>,
	<minecraft:stone:*>,
	<minecraft:deadbush>,
	<minecraft:tallgrass:*>,
	<minecraft:chorus_flower>,
	<minecraft:coal>,
	<minecraft:quartz>,
	<minecraft:netherrack>,
	<minecraft:soul_sand>,
	<minecraft:gravel>,
	<minecraft:leaves:*>,
	<minecraft:leaves2:*>,
	<minecraft:red_flower:*>,
	<minecraft:double_plant:*>,
	<minecraft:yellow_flower:*>,
	<minecraft:log:*>,
	<minecraft:log2:*>,
	<minecraft:sapling:*>,
	<minecraft:stonebrick:*>,
	<minecraft:waterlily>,
	<minecraft:fish:*>,
	<minecraft:vine>,
	<botania:storage:3>,
	<botania:tinypotato>,
	<botania:managlass>,
] as IItemStack[];

for item in manaInfusionsToRemove {
	ManaInfusion.removeRecipe(item);	
}

ManaInfusion.removeRecipe(<botania:specialflower>.withTag({type: "bubbellChibi"}));
ManaInfusion.removeRecipe(<botania:quartz:*>);

ManaInfusion.removeRecipe(<botania:manaresource:0>);
ManaInfusion.addInfusion(<botania:manaresource:0>, <thebetweenlands:items_misc:11>, 3000);

ManaInfusion.removeRecipe(<botania:manaresource:1>);
ManaInfusion.addInfusion(<botania:manaresource:1>, <thebetweenlands:rock_snot_pearl>, 6000);

ManaInfusion.removeRecipe(<botania:manaresource:2>);
ManaInfusion.addInfusion(<botania:manaresource:2>, <thebetweenlands:items_misc:19>, 10000);

ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>, <betweenlandsredstone:scabyst_dust>, 400);

ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.addInfusion(<botania:storage>, <thebetweenlands:syrmorite_block>, 27000);

ManaInfusion.removeRecipe(<botania:grassseeds>);
ManaInfusion.addInfusion(<botania:grassseeds>, <thebetweenlands:swamp_tallgrass>, 2500);

ManaInfusion.removeRecipe(<botania:grassseeds:1>);
ManaInfusion.addInfusion(<botania:grassseeds:1>, <thebetweenlands:dead_weedwood_bush>, 2500);

ManaInfusion.removeRecipe(<botania:grassseeds:2>);
ManaInfusion.addInfusion(<botania:grassseeds:2>, <thebetweenlands:mud>, 6500);

ManaInfusion.removeRecipe(<botania:pistonrelay>);
ManaInfusion.addInfusion(<botania:pistonrelay>, <betweenlandsredstone:scabyst_piston>, 15000);

ManaInfusion.removeRecipe(<minecraft:ice>);
ManaInfusion.addAlchemy(<thebetweenlands:black_ice>, <minecraft:snow>, 2250);

ManaInfusion.addInfusion(<botania:managlass>, <thebetweenlands:silt_glass>, 150);
ManaInfusion.addInfusion(<botania:managlass>, <thebetweenlands:filtered_silt_glass>, 10);

ManaInfusion.addAlchemy(<thebetweenlands:weedwood>, <thebetweenlands:log_weedwood>, 40);
ManaInfusion.addAlchemy(<thebetweenlands:log_hearthgrove:1>, <thebetweenlands:weedwood>, 40);
ManaInfusion.addAlchemy(<thebetweenlands:log_nibbletwig>, <thebetweenlands:log_hearthgrove:1>, 40);
ManaInfusion.addAlchemy(<thebetweenlands:log_sap>, <thebetweenlands:log_nibbletwig>, 40);
ManaInfusion.addAlchemy(<thebetweenlands:log_rubber>, <thebetweenlands:log_sap>, 40);
ManaInfusion.addAlchemy(<thebetweenlands:log_rotten_bark>, <thebetweenlands:log_rubber>, 40);
ManaInfusion.addAlchemy(<thebetweenlands:giant_root>, <thebetweenlands:log_rotten_bark>, 40);
ManaInfusion.addAlchemy(<thebetweenlands:log_weedwood>, <thebetweenlands:giant_root>, 40);

ManaInfusion.addAlchemy(<thebetweenlands:sapling_hearthgrove>, <thebetweenlands:sapling_weedwood>, 120);
ManaInfusion.addAlchemy(<thebetweenlands:sapling_nibbletwig>, <thebetweenlands:sapling_hearthgrove>, 120);
ManaInfusion.addAlchemy(<thebetweenlands:sapling_sap>, <thebetweenlands:sapling_nibbletwig>, 120);
ManaInfusion.addAlchemy(<thebetweenlands:sapling_rubber>, <thebetweenlands:sapling_sap>, 120);
ManaInfusion.addAlchemy(<thebetweenlands:sapling_weedwood>, <thebetweenlands:sapling_rubber>, 120);


for i in 0 to 16 {
	ManaInfusion.addInfusion(<botania:flower>.withDamage(i), <botania:mushroom>.withDamage(i), 200);

	recipes.remove(<botania:mushroom>.withDamage(i));
	recipes.remove(<botania:petalblock>.withDamage(i));
	recipes.remove(<botania:cosmetic>.withDamage(i));
	recipes.remove(<botania:cosmetic>.withDamage(i + 16));

	scripts.utils.addShaped("petalblock_" ~ i, <botania:petalblock>.withDamage(i), [
		[<botania:mushroom>.withDamage(i), <botania:mushroom>.withDamage(i), <botania:mushroom>.withDamage(i)],
		[<botania:mushroom>.withDamage(i), <botania:mushroom>.withDamage(i), <botania:mushroom>.withDamage(i)],
		[<botania:mushroom>.withDamage(i), <botania:mushroom>.withDamage(i), <botania:mushroom>.withDamage(i)]
	]);

	scripts.utils.addShapeless("petal_from_block_" ~ i, <botania:mushroom>.withDamage(i) * 9, [<botania:petalblock>.withDamage(i)]);

	scripts.utils.addShaped("cosmetic_" ~ i, <botania:cosmetic>.withDamage(i), [
		[<botania:mushroom>.withDamage(i), <botania:mushroom>.withDamage(i), <botania:mushroom>.withDamage(i)],
		[<botania:mushroom>.withDamage(i), <botania:manaresource:16>, <botania:mushroom>.withDamage(i)],
		[<botania:mushroom>.withDamage(i), <botania:mushroom>.withDamage(i), <botania:mushroom>.withDamage(i)]
	]);

	scripts.utils.addShaped("cosmetic_" ~ (i + 16), <botania:cosmetic>.withDamage(i + 16), [
		[<minecraft:dye>.withDamage(15 - i), <minecraft:dye>.withDamage(15 - i), <minecraft:dye>.withDamage(15 - i)],
		[<minecraft:dye>.withDamage(15 - i), <botania:manaresource:16>, <minecraft:dye>.withDamage(15 - i)],
		[<minecraft:dye>.withDamage(15 - i), <minecraft:dye>.withDamage(15 - i), <minecraft:dye>.withDamage(15 - i)]
	]);
} 


// apothecary

Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "entropinnyum"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "shulk_me_not"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "thermalily"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "tigerseye"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "loonium"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "vinculotus"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "bubbell"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "exoflame"}));



// altar

RuneAltar.removeRecipe(<botania:rune>);
RuneAltar.removeRecipe(<botania:rune:1>);
RuneAltar.removeRecipe(<botania:rune:2>);
RuneAltar.removeRecipe(<botania:rune:3>);
RuneAltar.removeRecipe(<botania:rune:4>);
RuneAltar.removeRecipe(<botania:rune:5>);
RuneAltar.removeRecipe(<botania:rune:6>);
RuneAltar.removeRecipe(<botania:rune:7>);

RuneAltar.addRecipe(<botania:rune> * 2, [<ore:powderMana>, <ore:ingotManasteel>, <minecraft:dye:15>, <ore:sugarcane>, <thebetweenlands:items_misc:60>], 5200);
RuneAltar.addRecipe(<botania:rune:1> * 2, [<ore:powderMana>, <ore:ingotManasteel>, <thebetweenlands:angry_pebble>, <thebetweenlands:items_misc:45>, <roots:infernal_bulb>], 5200);
RuneAltar.addRecipe(<botania:rune:2> * 2, [<ore:powderMana>, <ore:ingotManasteel>, <ore:stone>, <thebetweenlands:black_hat_mushroom_item>, <thebetweenlands:sulfur_block>], 5200);
RuneAltar.addRecipe(<botania:rune:3> * 2, [<ore:powderMana>, <ore:ingotManasteel>, <ore:samiteCanvas>, <ore:feather>, <ore:string>], 5200);
RuneAltar.addRecipe(<botania:rune:4>, [<ore:runeWaterB>, <ore:runeFireB>, <ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>, <thebetweenlands:items_misc:6>], 8000);
RuneAltar.addRecipe(<botania:rune:5>, [<ore:runeEarthB>, <ore:runeAirB>, <thebetweenlands:silt>, <thebetweenlands:silt>, <thebetweenlands:sludge_ball>, <thebetweenlands:middle_fruit>], 8000);
RuneAltar.addRecipe(<botania:rune:6>, [<ore:runeFireB>, <ore:runeAirB>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <thebetweenlands:items_misc:30>], 8000);
RuneAltar.addRecipe(<botania:rune:7>, [<ore:runeWaterB>, <ore:runeEarthB>, <minecraft:snow>, <minecraft:snow>, <ore:samite>, <roots:dewgonia>], 8000);




// orechid
val orechidToRemove = [
	"oreAdamantium",
	"oreAluminum",
	"oreAmber",
	"oreApatite",
	"oreBlueTopaz",
	"oreCertusQuartz",
	"oreChimerite",
	"oreCinnabar",
	"oreCoal",
	"oreCopper",
	"oreDark",
	"oreDarkIron",
	"oreDiamond",
	"oreEmerald",
	"oreFzDarkIron",
	"oreGalena",
	"oreGold",
	"oreInfusedAir",
	"oreInfusedEarth",
	"oreInfusedEntropy",
	"oreInfusedFire",
	"oreInfusedOrder",
	"oreInfusedWater",
	"oreIron",
	"oreLapis",
	"oreLead",
	"oreMCropsEssence",
	"oreMithril",
	"oreMythril",
	"oreNickel",
	"oreOlivine",
	"oreOsmium",
	"orePlatinum",
	"oreQuartzBlack",
	"oreRedstone",
	"oreRuby",
	"oreSapphire",
	"oreSilver",
	"oreSulfur",
	"oreTin",
	"oreTungsten",
	"oreUranium",
	"oreVinteum",
	"oreYellorite",
	"oreZinc",
] as string[];

val ignemOrechidToRemove = [
	"oreQuartz",
	"oreNetherCoal"
] as string[];



for ore in orechidToRemove {
	Orechid.removeOre(ore);
}

for ore in ignemOrechidToRemove {
	OrechidIgnem.removeOre(ore);
}

Orechid.addOre(<ore:oreOctine>, 300);
Orechid.addOre(<ore:oreBone>, 800);
Orechid.addOre(<ore:oreSyrmorite>, 500);
Orechid.addOre(<ore:oreCopper>, 400);
Orechid.addOre(<ore:oreAluminum>, 400);
Orechid.addOre(<ore:oreSulfur>, 1000);
Orechid.addOre(<ore:oreAmber>, 200);

OrechidIgnem.addOre(<ore:oreLead>, 1000);
OrechidIgnem.addOre(<ore:oreNickel>, 900);
OrechidIgnem.addOre(<ore:oreSilver>, 900);
OrechidIgnem.addOre(<ore:oreCinnabar>, 500);
OrechidIgnem.addOre(<ore:oreValonite>, 200);
OrechidIgnem.addOre(<ore:oreScabyst>, 600);


// trades

ElvenTrade.removeRecipe(<botania:manaresource:7>);
ElvenTrade.removeRecipe(<botania:storage:2>);
ElvenTrade.addRecipe([<botania:manaresource:7>], [<ore:ingotDawnstone>, <ore:ingotDawnstone>]);
ElvenTrade.addRecipe([<botania:storage:2>], [<ore:blockDawnstone>, <ore:blockDawnstone>]);



// agglomeration

Agglomeration.removeRecipe(<botania:manaresource:4>, [<botania:manaresource>, <botania:manaresource:1>, <botania:manaresource:2>] as IIngredient[]);
Agglomeration.addRecipe(
	<botania:manaresource:4>, 
	[<thaumcraft:void_seed>, <botania:manaresource>, <botania:manaresource:1>, <botania:manaresource:2>] as IIngredient[],
	500000,
	0xff8817,
	0x00FF00,
	<embers:block_dawnstone>,
	<embers:archaic_light>,
	<embers:archaic_edge>
);



// names

<botania:manaresource:2>.displayName = "Mana Stone";
<botania:manaresource:2>.displayName = "Mana Gem";
<botania:manaresource:15>.displayName = "Void Air Bottle";
<botania:grassseeds:1>.displayName = "Dead Spores";
<botania:grassseeds:2>.displayName = "Muddy Spores";