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
    <rustic:gargoyle>,
    <rustic:crushing_tub>,
    <rustic:lantern_wood>,
]);


recipes.remove(<rustic:crushing_tub>);
scripts.utils.addShaped("crushing_tub", <rustic:crushing_tub>, [
    [<ore:plankWood>, null, <ore:plankWood>], 
    [<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);


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
