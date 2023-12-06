import crafttweaker.game.IGame;

game.setLocalization("item.simpledifficulty:dragon_canteen_broken.name", "Broken Ancient Beast Canteen");
game.setLocalization("item.simpledifficulty:dragon_canteen_empty.name", "Empty Ancient Beast Canteen");
game.setLocalization("item.simpledifficulty:dragon_canteen_normal.name", "Water Ancient Beast Canteen");
game.setLocalization("item.simpledifficulty:dragon_canteen_purified.name", "Purified Ancient Beast Canteen");

//game.setLocalization("item.simpledifficulty:iron_canteen_broken.name", "Broken Syrmorite Canteen");
//game.setLocalization("item.simpledifficulty:iron_canteen_empty.name", "Empty Syrmorite Canteen");
//game.setLocalization("item.simpledifficulty:iron_canteen_normal.name", "Water Syrmorite Canteen");
//game.setLocalization("item.simpledifficulty:iron_canteen_purified.name", "Purified Syrmorite Canteen");

game.setLocalization("gui.pyrotech.jei.info.pit.kiln", "To use a pit kiln, first dig a hole in the ground and place the pit kiln inside. Next, place the item you want to fire in the pit kiln, place a thatch block, and place three logs on top. Finally, light the top of the kiln and be sure to keep it dry while it fires!");

game.setLocalization("gui.pyrotech.jei.category.anvil.granite", "Limestone Anvil");
game.setLocalization("gui.pyrotech.jei.category.anvil.ironclad", "Syrmorite Anvil");

game.setLocalization("roots.ritual.ritual_animal_harvest.name", "Fish Hatchery");
game.setLocalization("roots.ritual.ritual_summon_creatures.name", "Force Spawner");

game.setLocalization("tile.oreIron", "Wrought Iron");
game.setLocalization("fluid.iron", "Molten Wrought Iron");
game.setLocalization("fluid.copper", "Molten Russite");
game.setLocalization("fluid.lead", "Molten Gloomsilver");
game.setLocalization("fluid.silver", "Molten Mirrium");
game.setLocalization("fluid.nickel", "Molten Nyxite");
game.setLocalization("fluid.aluminum", "Molten Lumicite");
game.setLocalization("fluid.boiling_beetroot_soup", "Boiling Pereskia Soup");
game.setLocalization("fluid.boiling_potato_juice", "Boiling Root Soup");
game.setLocalization("fluid.boiling_wort", "Boiling Swamp Reed Wort");
game.setLocalization("fluid.vodka", "Root Vodka");

scripts.utils.addInfoTooltip(<contenttweaker:access_crystal>, "Right click crystal onto the portal to gain access.");

<betweenores:copper_ore>.displayName = <betweenores:copper_ore>.displayName.replaceAll("Copper", "Russite");
<embers:ingot_copper>.displayName = <embers:ingot_copper>.displayName.replaceAll("Copper", "Russite");
<embers:nugget_copper>.displayName = <embers:nugget_copper>.displayName.replaceAll("Copper", "Russite");
<embers:plate_copper>.displayName = <embers:plate_copper>.displayName.replaceAll("Copper", "Russite");
<embers:aspectus_copper>.displayName = <embers:aspectus_copper>.displayName.replaceAll("Copper", "Russite");
<embers:block_copper>.displayName = <embers:block_copper>.displayName.replaceAll("Copper", "Russite");
<embers:seed_copper>.displayName = <embers:seed_copper>.displayName.replaceAll("Copper", "Russite");
<mystgears:gear_copper>.displayName = <mystgears:gear_copper>.displayName.replaceAll("Copper", "Russite");
<thaumcraft:nugget:1>.displayName = <thaumcraft:nugget:1>.displayName.replaceAll("Copper", "Russite");
<thaumcraft:cluster:2>.displayName = <thaumcraft:cluster:2>.displayName.replaceAll("Copper", "Russite");

<betweenores:lead_ore>.displayName = <betweenores:lead_ore>.displayName.replaceAll("Lead", "Gloomsilver");
<embers:ingot_lead>.displayName = <embers:ingot_lead>.displayName.replaceAll("Lead", "Gloomsilver");
<embers:nugget_lead>.displayName = <embers:nugget_lead>.displayName.replaceAll("Lead", "Gloomsilver");
<embers:plate_lead>.displayName = <embers:plate_lead>.displayName.replaceAll("Lead", "Gloomsilver");
<embers:aspectus_lead>.displayName = <embers:aspectus_lead>.displayName.replaceAll("Lead", "Gloomsilver");
<embers:block_lead>.displayName = <embers:block_lead>.displayName.replaceAll("Lead", "Gloomsilver");
<embers:seed_lead>.displayName = <embers:seed_lead>.displayName.replaceAll("Lead", "Gloomsilver");
<mystgears:gear_lead>.displayName = <mystgears:gear_lead>.displayName.replaceAll("Lead", "Gloomsilver");
<thaumcraft:nugget:4>.displayName = <thaumcraft:nugget:4>.displayName.replaceAll("Lead", "Gloomsilver");
<thaumcraft:cluster:5>.displayName = <thaumcraft:cluster:5>.displayName.replaceAll("Lead", "Gloomsilver");

<betweenores:silver_ore>.displayName = <betweenores:silver_ore>.displayName.replaceAll("Silver", "Mirrium");
<embers:ingot_silver>.displayName = <embers:ingot_silver>.displayName.replaceAll("Silver", "Mirrium");
<embers:nugget_silver>.displayName = <embers:nugget_silver>.displayName.replaceAll("Silver", "Mirrium");
<embers:plate_silver>.displayName = <embers:plate_silver>.displayName.replaceAll("Silver", "Mirrium");
<embers:aspectus_silver>.displayName = <embers:aspectus_silver>.displayName.replaceAll("Silver", "Mirrium");
<embers:block_silver>.displayName = <embers:block_silver>.displayName.replaceAll("Silver", "Mirrium");
<embers:seed_silver>.displayName = <embers:seed_silver>.displayName.replaceAll("Silver", "Mirrium");
<mystgears:gear_silver>.displayName = <mystgears:gear_silver>.displayName.replaceAll("Silver", "Mirrium");
<thaumcraft:cluster:4>.displayName = <thaumcraft:cluster:4>.displayName.replaceAll("Silver", "Mirrium");
<thaumcraft:nugget:3>.displayName = <thaumcraft:nugget:3>.displayName.replaceAll("Silver", "Mirrium");

<betweenores:nickel_ore>.displayName = <betweenores:nickel_ore>.displayName.replaceAll("Nickel", "Nyxite");
<embers:ingot_nickel>.displayName = <embers:ingot_nickel>.displayName.replaceAll("Nickel", "Nyxite");
<embers:plate_nickel>.displayName = <embers:plate_nickel>.displayName.replaceAll("Nickel", "Nyxite");
<embers:nugget_nickel>.displayName = <embers:nugget_nickel>.displayName.replaceAll("Nickel", "Nyxite");
<embers:block_nickel>.displayName = <embers:block_nickel>.displayName.replaceAll("Nickel", "Nyxite");
<embers:seed_nickel>.displayName = <embers:seed_nickel>.displayName.replaceAll("Nickel", "Nyxite");
<mystgears:gear_nickel>.displayName = <mystgears:gear_nickel>.displayName.replaceAll("Nickel", "Nyxite");

<betweenores:aluminum_ore>.displayName = <betweenores:aluminum_ore>.displayName.replaceAll("Aluminum", "Lumicite");
<embers:ingot_aluminum>.displayName = <embers:ingot_aluminum>.displayName.replaceAll("Aluminium", "Lumicite");
<embers:plate_aluminum>.displayName = <embers:plate_aluminum>.displayName.replaceAll("Aluminium", "Lumicite");
<embers:nugget_aluminum>.displayName = <embers:nugget_aluminum>.displayName.replaceAll("Aluminium", "Lumicite");
<embers:block_aluminum>.displayName = <embers:block_aluminum>.displayName.replaceAll("Aluminium", "Lumicite");
<embers:seed_aluminum>.displayName = <embers:seed_aluminum>.displayName.replaceAll("Aluminium", "Lumicite");
<mystgears:gear_aluminium>.displayName = <mystgears:gear_aluminium>.displayName.replaceAll("Aluminium", "Lumicite");

