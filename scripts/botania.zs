import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;

PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.removeRecipe(<minecraft:cobblestone>);
PureDaisy.removeRecipe(<minecraft:sand>);
PureDaisy.removeRecipe(<minecraft:packed_ice>);
PureDaisy.removeRecipe(<minecraft:obsidian>);
PureDaisy.removeRecipe(<minecraft:snow>);

// variables
var defaultPureDaisyTime = 60 * 20; // make this faster as pacifisit


// normal recipes

recipes.remove(<botania:altar>);
scripts.utils.addShaped("altar_0", <botania:altar>, [
	[<roots:runestone_slab>, <ore:petalWhite> | <ore:petalOrange> | <ore:petalMagenta> | <ore:petalLightBlue> | <ore:petalYellow> | <ore:petalLime> | <ore:petalPink> | <ore:petalGray> | <ore:petalLightGray> | <ore:petalCyan> | <ore:petalPurple> | <ore:petalBlue> | <ore:petalBrown> | <ore:petalGreen> | <ore:petalRed> | <ore:petalBlack>, <roots:runestone_slab>], 
	[null, <roots:runestone>, null], 
	[<roots:runestone>, <roots:runestone>, <roots:runestone>]
]);

recipes.remove(<botania:manaresource:6>);
recipes.addShapeless("botania_manaresource_6", <botania:manaresource:6>, [<betweenlandsredstone:scabyst_dust>, <thebetweenlands:swamp_tallgrass>]);




// pure daisy recipes

PureDaisy.addRecipe(<roots:runestone>, <botania:livingrock>, defaultPureDaisyTime);
PureDaisy.addRecipe(<roots:wildwood_log>, <botania:livingwood>, defaultPureDaisyTime);



// mana infusions

ManaInfusion.removeRecipe(<botania:manaresource:0>);
ManaInfusion.addInfusion(<botania:manaresource:0>, <thebetweenlands:items_misc:11>, 3000);

ManaInfusion.removeRecipe(<botania:manaresource:1>);
ManaInfusion.addInfusion(<botania:manaresource:1>, <thebetweenlands:shimmer_stone>, 6000);

ManaInfusion.removeRecipe(<botania:manaresource:2>);
ManaInfusion.addInfusion(<botania:manaresource:2>, <thebetweenlands:items_misc:19>, 10000);

ManaInfusion.removeRecipe(<botania:manaresource:23>);
ManaInfusion.addInfusion(<botania:manaresource:23>, <betweenlandsredstone:scabyst_dust>, 400);




// names

<botania:manaresource:2>.displayName = "Mana Stone";
<botania:manaresource:2>.displayName = "Mana Gem";