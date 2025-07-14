import mods.rustic.CrushingTub;


recipes.remove(<rustic:crushing_tub>);
scripts.utils.addShaped("crushing_tub", <rustic:crushing_tub>, [
    [<ore:plankWood>, null, <ore:plankWood>], 
    [<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);



CrushingTub.addRecipe(<liquid:grapejuice> * 40, null, <thebetweenlands:middle_fruit>);