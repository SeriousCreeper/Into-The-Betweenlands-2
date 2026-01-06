import crafttweaker.item.IItemStack;
import mods.thaumcraft.Infusion;

recipes.remove(<congregamystica:candle_brass>);
scripts.utils.addShaped("brass_candle_tallow", <congregamystica:candle_brass> * 4, [
    [<ore:candles>], 
    [<thaumcraft:ingot:2>]
]);

recipes.remove(<congregamystica:lantern_brass>);
scripts.utils.addShaped("brass_lantern", <congregamystica:lantern_brass> * 4, [
    [<ore:ingotBrass>], 
    [<thebetweenlands:items_misc:18>], 
    [<ore:ingotBrass>]
]);

recipes.remove(<congregamystica:chair_greatwood>);
scripts.utils.addShaped("greatwood_chair", <congregamystica:chair_greatwood> * 4, [
    [<thaumcraft:plank_greatwood>, null, null], 
    [<thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>], 
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<congregamystica:table_greatwood>);
scripts.utils.addShaped("greatwood_table", <congregamystica:table_greatwood> * 2, [
    [<thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>],
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<congregamystica:chair_silverwood>);
scripts.utils.addShaped("silverwood_chair", <congregamystica:chair_silverwood> * 4, [
    [<thaumcraft:plank_silverwood>, null, null], 
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>], 
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<congregamystica:table_silverwood>);
scripts.utils.addShaped("silverwood_table", <congregamystica:table_silverwood> * 2, [
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>],
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);