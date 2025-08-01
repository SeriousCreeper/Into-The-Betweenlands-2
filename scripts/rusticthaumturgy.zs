import crafttweaker.item.IItemStack;

scripts.utils.removeAllExcept("rusticthaumaturgy", [
    <rusticthaumaturgy:dust_tiny_blaze>,
    <rusticthaumaturgy:cindermote>,
    <rusticthaumaturgy:shimmerpetal>,
    <rusticthaumaturgy:viscap>,
    <rusticthaumaturgy:cindermote_seeds>,
    <rusticthaumaturgy:shimmerpetal_bulb>,
    <rusticthaumaturgy:viscap_spores>,
]);

recipes.remove(<rusticthaumaturgy:candle_brass>);
scripts.utils.addShaped("brass_candle_tallow", <rusticthaumaturgy:candle_brass> * 4, [
    [<ore:candles>], 
    [<thaumcraft:ingot:2>]
]);

recipes.remove(<rusticthaumaturgy:lantern_brass>);
scripts.utils.addShaped("brass_lantern", <rusticthaumaturgy:lantern_brass> * 4, [
    [<ore:ingotBrass>], 
    [<thebetweenlands:items_misc:18>], 
    [<ore:ingotBrass>]
]);

recipes.remove(<rusticthaumaturgy:chair_greatwood>);
scripts.utils.addShaped("greatwood_chair", <rusticthaumaturgy:chair_greatwood> * 4, [
    [<thaumcraft:plank_greatwood>, null, null], 
    [<thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>], 
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rusticthaumaturgy:table_greatwood>);
scripts.utils.addShaped("greatwood_table", <rusticthaumaturgy:table_greatwood> * 2, [
    [<thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>],
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rusticthaumaturgy:chair_silverwood>);
scripts.utils.addShaped("silverwood_chair", <rusticthaumaturgy:chair_silverwood> * 4, [
    [<thaumcraft:plank_silverwood>, null, null], 
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>], 
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rusticthaumaturgy:table_silverwood>);
scripts.utils.addShaped("silverwood_table", <rusticthaumaturgy:table_silverwood> * 2, [
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>],
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);
