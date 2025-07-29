import mods.rustic.CrushingTub;

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
