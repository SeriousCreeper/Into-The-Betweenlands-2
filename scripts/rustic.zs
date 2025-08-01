import mods.rustic.CrushingTub;
import crafttweaker.item.IItemStack;

scripts.utils.removeAllExcept("rustic", [
    <rustic:chain>,
    <rustic:candle>,
    <rustic:candle_double>,
    <rustic:candle_lever>,
    <rustic:chandelier>,
    <rustic:chain_gold>,
    <rustic:candle_gold>,
    <rustic:candle_double_gold>,
    <rustic:candle_lever_gold>,
    <rustic:chandelier_gold>,
    <rustic:chain_silver>,
    <rustic:candle_silver>,
    <rustic:candle_lever_silver>,
    <rustic:candle_double_silver>,
    <rustic:chandelier_silver>,
    <rustic:chair_oak>,
    <rustic:chair_big_oak>,
    <rustic:chair_birch>,
    <rustic:chair_spruce>,
    <rustic:chair_acacia>,
    <rustic:chair_jungle>,
    <rustic:table_oak>,
    <rustic:table_big_oak>,
    <rustic:table_birch>,
    <rustic:table_spruce>,
    <rustic:table_acacia>,
    <rustic:table_jungle>,
    <rustic:iron_lattice>,
    <rustic:iron_lantern>,
    <rustic:golden_lantern>,
    <rustic:silver_lantern>,
    <rustic:crushing_tub>,
    <rustic:lantern_wood>,
]);

recipes.remove(<rustic:crushing_tub>);
scripts.utils.addShaped("crushing_tub", <rustic:crushing_tub>, [
    [<ore:plankWood>, null, <ore:plankWood>], 
    [<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);

recipes.remove(<rustic:chain>);
scripts.utils.addShaped("rustic_chain", <rustic:chain> * 12, [
    [<ore:ingotSyrmorite>], 
    [<ore:ingotSyrmorite>], 
    [<ore:ingotSyrmorite>]
]);

recipes.remove(<rustic:candle>);
scripts.utils.addShaped("candle", <rustic:candle> * 4, [
    [<ore:candles>], [<ore:ingotSyrmorite>]
]);

recipes.remove(<rustic:candle_double>);
scripts.utils.addShaped("candle_double", <rustic:candle_double> * 4, [
    [<ore:candles>, null, <ore:candles>],
    [null, <ore:ingotSyrmorite>, null]
]);

recipes.remove(<rustic:chandelier>);
scripts.utils.addShaped("chandelier", <rustic:chandelier> * 2, [
    [null, <ore:ingotSyrmorite>, null],
    [<rustic:chain>, null, <rustic:chain>],
    [<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<rustic:chain_gold>);
scripts.utils.addShaped("chain_gold", <rustic:chain_gold> * 12, [
    [<ore:ingotOctine>], 
    [<ore:ingotOctine>], 
    [<ore:ingotOctine>]
]);

recipes.remove(<rustic:candle_gold>);
scripts.utils.addShaped("candle_gold", <rustic:candle_gold> * 4, [
    [<ore:candles>], [<ore:ingotOctine>]
]);

recipes.remove(<rustic:candle_double_gold>);
scripts.utils.addShaped("candle_double_gold", <rustic:candle_double_gold> * 4, [
    [<ore:candles>, null, <ore:candles>],
    [null, <ore:ingotOctine>, null]
]);

recipes.remove(<rustic:chandelier_gold>);
scripts.utils.addShaped("chandelier_gold", <rustic:chandelier_gold> * 2, [
    [null, <ore:ingotOctine>, null],
    [<rustic:chain_gold>, null, <rustic:chain_gold>],
    [<ore:ingotOctine>, <ore:ingotOctine>, <ore:ingotOctine>]
]);

recipes.remove(<rustic:candle_silver>);
scripts.utils.addShaped("rustic_candle_silver", <rustic:candle_silver> * 4, [
    [<ore:candles>], 
    [<ore:ingotSilver>]
]);

recipes.remove(<rustic:candle_double_silver>);
scripts.utils.addShaped("candle_double_silver", <rustic:candle_double_silver> * 4, [
    [<ore:candles>, null, <ore:candles>],
    [null, <ore:ingotSilver>, null]
]);

recipes.remove(<rustic:chair_oak>);
scripts.utils.addShaped("oak_chair", <rustic:chair_oak> * 4, [
    [<thebetweenlands:weedwood_planks>, null, null], 
    [<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>], 
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rustic:chair_big_oak>);
scripts.utils.addShaped("big_oak_chair", <rustic:chair_big_oak> * 4, [
    [<thebetweenlands:rotten_planks>, null, null], 
    [<thebetweenlands:rotten_planks>, <thebetweenlands:rotten_planks>, <thebetweenlands:rotten_planks>], 
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rustic:chair_birch>);
scripts.utils.addShaped("birch_chair", <rustic:chair_birch> * 4, [
    [<thebetweenlands:giant_root_planks>, null, null], 
    [<thebetweenlands:giant_root_planks>, <thebetweenlands:giant_root_planks>, <thebetweenlands:giant_root_planks>], 
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rustic:chair_spruce>);
scripts.utils.addShaped("spruce_chair", <rustic:chair_spruce> * 4, [
    [<thebetweenlands:rubber_tree_planks>, null, null], 
    [<thebetweenlands:rubber_tree_planks>, <thebetweenlands:rubber_tree_planks>, <thebetweenlands:rubber_tree_planks>], 
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rustic:chair_acacia>);
scripts.utils.addShaped("acacia_chair", <rustic:chair_acacia> * 4, [
    [<thebetweenlands:nibbletwig_planks>, null, null], 
    [<thebetweenlands:nibbletwig_planks>, <thebetweenlands:nibbletwig_planks>, <thebetweenlands:nibbletwig_planks>], 
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rustic:chair_jungle>);
scripts.utils.addShaped("jungle_chair", <rustic:chair_jungle> * 4, [
    [<thebetweenlands:hearthgrove_planks>, null, null], 
    [<thebetweenlands:hearthgrove_planks>, <thebetweenlands:hearthgrove_planks>, <thebetweenlands:hearthgrove_planks>], 
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rustic:table_oak>);
scripts.utils.addShaped("table_oak", <rustic:table_oak> * 2, [
    [<thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>, <thebetweenlands:weedwood_planks>],
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rustic:table_big_oak>);
scripts.utils.addShaped("table_big_oak", <rustic:table_big_oak> * 2, [
    [<thebetweenlands:rotten_planks>, <thebetweenlands:rotten_planks>, <thebetweenlands:rotten_planks>],
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]); 

recipes.remove(<rustic:table_birch>);
scripts.utils.addShaped("table_birch", <rustic:table_birch> * 2, [
    [<thebetweenlands:giant_root_planks>, <thebetweenlands:giant_root_planks>, <thebetweenlands:giant_root_planks>],
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rustic:table_spruce>);
scripts.utils.addShaped("table_spruce", <rustic:table_spruce> * 2, [
    [<thebetweenlands:rubber_tree_planks>, <thebetweenlands:rubber_tree_planks>, <thebetweenlands:rubber_tree_planks>],
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rustic:table_acacia>);
scripts.utils.addShaped("table_acacia", <rustic:table_acacia> * 2, [
    [<thebetweenlands:nibbletwig_planks>, <thebetweenlands:nibbletwig_planks>, <thebetweenlands:nibbletwig_planks>],
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rustic:table_jungle>);
scripts.utils.addShaped("table_jungle", <rustic:table_jungle> * 2, [
    [<thebetweenlands:hearthgrove_planks>, <thebetweenlands:hearthgrove_planks>, <thebetweenlands:hearthgrove_planks>],
    [<thebetweenlands:items_misc:20>, null, <thebetweenlands:items_misc:20>]
]);

recipes.remove(<rusticthaumaturgy:candle_brass>);
scripts.utils.addShaped("brass_candle_tallow", <rusticthaumaturgy:candle_brass> * 4, [
    [<ore:candles>], 
    [<thaumcraft:ingot:2>]
]);

recipes.remove(<rustic:golden_lantern>);
scripts.utils.addShaped("golden_lantern", <rustic:golden_lantern> * 4, [
    [<ore:ingotOctine>], 
    [<thebetweenlands:items_misc:18>], 
    [<ore:ingotOctine>]
]);

recipes.remove(<rustic:silver_lantern>);
scripts.utils.addShaped("silver_lantern", <rustic:silver_lantern> * 4, [
    [<ore:ingotSilver>], 
    [<thebetweenlands:items_misc:18>], 
    [<ore:ingotSilver>]
]);

recipes.remove(<rustic:iron_lantern>);
scripts.utils.addShaped("iron_lantern", <rustic:iron_lantern> * 4, [
    [<ore:ingotSyrmorite>], 
    [<thebetweenlands:items_misc:18>], 
    [<ore:ingotSyrmorite>]
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

recipes.remove(<rustic:lantern_wood>);
scripts.utils.addShaped("lantern_wood", <rustic:lantern_wood>, [
    [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], 
    [<thebetweenlands:silt_glass_pane>, <thebetweenlands:sulfur_torch>, <thebetweenlands:silt_glass_pane>], 
    [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]
]);

recipes.remove(<rustic:iron_lattice>);
scripts.utils.addShaped("iron_lattice", <rustic:iron_lattice> * 16, [
    [null, <ore:ingotSyrmorite>, null], 
    [<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
    [null, <ore:ingotSyrmorite>, null]]
);


CrushingTub.removeRecipe(<rustic:vanta_lily>);
CrushingTub.removeRecipe(<minecraft:golden_apple:1>);
CrushingTub.removeRecipe(<minecraft:golden_apple>);
CrushingTub.removeRecipe(<rustic:honeycomb>);
CrushingTub.removeRecipe(<minecraft:apple>);
CrushingTub.removeRecipe(<rustic:grapes>);
CrushingTub.removeRecipe(<rustic:wildberries>);
CrushingTub.removeRecipe(<minecraft:reeds>);
CrushingTub.removeRecipe(<rustic:ironberries>);
CrushingTub.removeRecipe(<rustic:olives>);

CrushingTub.addRecipe(<liquid:fluid_booze_purple_juice> * 40, null, <thebetweenlands:middle_fruit>);
CrushingTub.addRecipe(<liquid:fluid_honey> * 160, <growthcraft_bees:honey_comb_empty>, <growthcraft_bees:honey_comb_filled>);

CrushingTub.addRecipe(<liquid:armaniis> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Armaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:azuwynn> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Azuwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:byariis> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byariis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:byrginaz> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byrginaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:celawynn> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Celawynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:dayuniis> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Dayuniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:fergalaz> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Fergalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:firnalaz> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Firnalaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:freiwynn> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Freiwynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:geoliirgaz> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Geoliirgaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:ordaniis> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Ordaniis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:uduriis> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Uduriis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:wodren> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Wodren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:yeowynn> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yeowynn"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:yihinren> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yihinren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
CrushingTub.addRecipe(<liquid:yunugaz> * 250, null, <thebetweenlands:aspectrus_fruit>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Yunugaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 250}}]}}));
