import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.botania.Apothecary;

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

recipes.remove(<botania:altar>);
scripts.utils.addShaped("altar_0", <botania:altar>, [
	[<roots:runestone_slab>, <ore:petalAny>, <roots:runestone_slab>], 
	[null, <roots:runestone>, null], 
	[<roots:runestone>, <roots:runestone>, <roots:runestone>]
]);

recipes.remove(<botania:manaresource:6>);
scripts.utils.addShapeless("botania_manaresource_6", <botania:manaresource:6>, [<betweenlandsredstone:scabyst_dust>, <thebetweenlands:swamp_tallgrass>]);

recipes.remove(<botania:fertilizer>);
scripts.utils.addShapeless("fertilizer", <botania:fertilizer>, [<minecraft:dye:15>, <minecraft:dye:11>, <minecraft:dye:11>, <minecraft:dye:1>, <minecraft:dye:1>]);

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

ManaInfusion.removeRecipe(<botania:specialflower>.withTag({type: "bubbellChibi"}));
ManaInfusion.removeRecipe(<botania:quartz:*>);

ManaInfusion.removeRecipe(<botania:manaresource:0>);
ManaInfusion.addInfusion(<botania:manaresource:0>, <thebetweenlands:items_misc:11>, 3000);

ManaInfusion.removeRecipe(<botania:manaresource:1>);
ManaInfusion.addInfusion(<botania:manaresource:1>, <thebetweenlands:shimmer_stone>, 6000);

ManaInfusion.removeRecipe(<botania:manaresource:2>);
ManaInfusion.addInfusion(<botania:manaresource:2>, <thebetweenlands:items_misc:19>, 10000);

ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>, <betweenlandsredstone:scabyst_dust>, 400);

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



// names

<botania:manaresource:2>.displayName = "Mana Stone";
<botania:manaresource:2>.displayName = "Mana Gem";