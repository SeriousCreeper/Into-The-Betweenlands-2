import crafttweaker.liquid.ILiquidStack;
import mods.embers.Alchemy;
import mods.embers.Melter;
import mods.embers.Stamper;
import mods.embers.EmberGeneration;
import mods.embers.Mixer;
import mods.embers.EmberBoreFixed;



// ----------- NORMAL RECIPES ----------------------
recipes.remove(<embers:blend_caminite>);
recipes.addShaped("embers-blend_caminite", <embers:blend_caminite> * 8, [
	[<thebetweenlands:silt>, <thebetweenlands:mud>], 
	[<thebetweenlands:mud>, <thebetweenlands:silt>]
]);

recipes.remove(<embers:mech_core>);
recipes.addShaped("embers-mech_core", <embers:mech_core>, [
	[<thebetweenlands:items_misc:11>, <embers:plate_lead>, <thebetweenlands:items_misc:11>], 
	[<embers:plate_lead>, <ore:plateLead>, <embers:plate_lead>], 
	[<thebetweenlands:items_misc:11>, <embers:plate_lead>, <thebetweenlands:items_misc:11>]
]);

recipes.remove(<embers:stamper_base>);
recipes.addShaped("embers-stamp_base", <embers:stamper_base>, [
	[<thebetweenlands:items_misc:11>, null, <thebetweenlands:items_misc:11>], 
	[<embers:block_caminite_brick:*>, <thebetweenlands:bl_bucket:1>.noReturn(), <embers:block_caminite_brick:*>]]);


recipes.remove(<embers:stamper>);
recipes.addShaped("embers-stamper", <embers:stamper>, [
	[<embers:brick_caminite:*>, <ore:ingotCopper>, <embers:brick_caminite:*>], 
	[<embers:brick_caminite:*>, <thebetweenlands:syrmorite_block>, <embers:brick_caminite:*>], 
	[<embers:brick_caminite:*>, null, <embers:brick_caminite:*>]
]);

recipes.removeByRecipeName("embers:ashen_stone");
recipes.addShaped("embers-ashen_stone", <embers:ashen_stone> * 4, [
	[null, <thebetweenlands:limestone>, null], 
	[<thebetweenlands:limestone>, <ore:dustAsh>, <thebetweenlands:limestone>], 
	[null, <thebetweenlands:limestone>, null]
]);

recipes.removeByRecipeName("embers:ashen_brick");
recipes.addShaped("embers-ashen_brick", <embers:ashen_brick> * 4, [
	[null, <thebetweenlands:limestone_bricks>, null], 
	[<thebetweenlands:limestone_bricks>, <ore:dustAsh>, <thebetweenlands:limestone_bricks>], 
	[null, <thebetweenlands:limestone_bricks>, null]
]);

recipes.remove(<embers:auto_hammer>);
recipes.addShaped("embers-auto_hammer", <embers:auto_hammer>, [
	[<embers:stairs_caminite_brick:*>, <embers:stairs_caminite_brick:*>, null], 
	[<ore:blockCopper>, <thebetweenlands:items_misc:11>, <thebetweenlands:syrmorite_block>], 
	[<embers:stairs_caminite_brick:*>, <embers:stairs_caminite_brick:*>, null]
]);

recipes.remove(<embers:block_furnace>);
recipes.addShaped("embers_block_furnace", <embers:block_furnace>, [
	[<embers:brick_caminite:*>, <embers:plate_caminite:*>, <embers:brick_caminite:*>], 
	[<embers:brick_caminite:*>, <ore:ingotCopper>, <embers:brick_caminite:*>], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:sulfur_furnace>, <thebetweenlands:items_misc:11>]
]);

recipes.remove(<embers:cinder_plinth>);
recipes.addShaped("embers_cinder_plinth", <embers:cinder_plinth>, [
	[null, <ore:plateLead>, null], 
	[<ore:ingotSilver>, <thebetweenlands:sulfur_furnace>, <ore:ingotSilver>], 
	[<ore:plateLead>, <embers:block_caminite_brick:*>, <ore:plateLead>]
]);

recipes.remove(<embers:boiler>);
recipes.addShaped("embers_boiler_modified", <embers:boiler>, [
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], 
	[<thebetweenlands:items_misc:11>, <thebetweenlands:sulfur_furnace>, <thebetweenlands:items_misc:11>], 
	[<thebetweenlands:items_misc:11>, <ore:blockCopper>, <thebetweenlands:items_misc:11>]
]);

recipes.remove(<embers:ember_bore>);
recipes.addShaped("ember_bore", <embers:ember_bore>, [
	[<embers:stairs_caminite_brick:*>, <ore:ingotCopper>, <embers:stairs_caminite_brick:*>], 
	[<embers:stairs_caminite_brick:*>, <embers:mech_core:*>, <embers:stairs_caminite_brick:*>], 
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:pipe>);
recipes.addShaped("pipe", <embers:pipe> * 8, [
	[<ore:ingotSyrmorite>, <ore:plateSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:ember_receiver>);
recipes.addShaped("ember_receiver", <embers:ember_receiver> * 4, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotCopper>, <embers:plate_caminite:*>, <ore:ingotCopper>]
]);

recipes.remove(<embers:ember_emitter>);
recipes.addShaped("ember_emitter", <embers:ember_emitter> * 4, [
	[null, <ore:ingotCopper>, null], 
	[null, <ore:ingotCopper>, null], 
	[<ore:ingotSyrmorite>, <embers:plate_caminite:*>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:ember_activator>);
recipes.addShaped("ember_activator", <embers:ember_activator>, [
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], 
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], 
	[<ore:plateSyrmorite>, <thebetweenlands:sulfur_furnace>, <ore:plateSyrmorite>]
]);

recipes.remove(<embers:block_tank>);
recipes.addShaped("block_tank", <embers:block_tank>, [
	[<embers:brick_caminite:*>, null, <embers:brick_caminite:*>], 
	[<ore:plateSyrmorite>, null, <ore:plateSyrmorite>], 
	[<embers:brick_caminite:*>, <ore:ingotSyrmorite>, <embers:brick_caminite:*>]
]);
recipes.addShapeless("block_tank_clear", <embers:block_tank>, [<embers:block_tank>]);

recipes.remove(<embers:copper_cell>);
recipes.addShaped("copper_cell", <embers:copper_cell>.withTag({emberCapacity: 24000.0, ember: 0.0}), [
	[<embers:block_caminite_brick:*>, <ore:ingotSyrmorite>, <embers:block_caminite_brick:*>], 
	[<ore:ingotSyrmorite>, <ore:blockCopper>, <ore:ingotSyrmorite>], 
	[<embers:block_caminite_brick:*>, <ore:ingotSyrmorite>, <embers:block_caminite_brick:*>]
]);

recipes.remove(<embers:bin>);
recipes.addShaped("bin", <embers:bin>, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:plateSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:mech_accessor>);
recipes.addShaped("mech_accessor", <embers:mech_accessor>, [
	[<embers:stairs_caminite_brick:*>, <ore:plateSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:mixer>);
recipes.addShaped("mixer", <embers:mixer>, [
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateSyrmorite>], 
	[<ore:plateSyrmorite>, <ore:ingotCopper>, <ore:plateSyrmorite>], 
	[<ore:ingotSyrmorite>, <embers:mech_core:*>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:heat_coil>);
recipes.addShaped("heat_coil", <embers:heat_coil>, [
	[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], 
	[<ore:ingotSyrmorite>, <ore:blockCopper>, <ore:ingotSyrmorite>], 
	[null, <embers:mech_core:*>, null]
]);

recipes.remove(<embers:fluid_dropper>);
recipes.addShaped("fluid_dropper", <embers:fluid_dropper>, [
	[null, <embers:pipe:*>, null], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:large_tank>);
recipes.addShaped("large_tank", <embers:large_tank>, [
	[<embers:stairs_caminite_brick:*>, null, <embers:stairs_caminite_brick:*>], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<embers:stairs_caminite_brick:*>, <embers:block_tank:*>, <embers:stairs_caminite_brick:*>]
]);

recipes.remove(<embers:ember_gauge>);
recipes.addShaped("ember_gauge", <embers:ember_gauge>, [
	[<ore:dustRedstone>], 
	[<thebetweenlands:items_misc:32>], 
	[<ore:plateCopper>]
]);

recipes.remove(<embers:fluid_gauge>);
recipes.addShaped("fluid_gauge", <embers:fluid_gauge>, [
	[<ore:dustRedstone>], 
	[<thebetweenlands:items_misc:32>], 
	[<ore:plateSyrmorite>]
]);

recipes.remove(<embers:block_lantern>);
recipes.addShaped("block_lantern", <embers:block_lantern> * 4, [
	[<ore:plateSyrmorite>], 
	[<embers:shard_ember:*>], 
	[<ore:ingotSyrmorite>]
]);

recipes.remove(<embers:beam_splitter>);
recipes.addShaped("beam_splitter", <embers:beam_splitter>, [
	[null, <ore:ingotDawnstone>, null], 
	[<ore:ingotCopper>, <ore:plateSyrmorite>, <ore:ingotCopper>], 
	[null, <ore:ingotSyrmorite>, null]
]);

recipes.remove(<embers:ember_relay>);
recipes.addShaped("ember_relay", <embers:ember_relay> * 4, [
	[null, <ore:ingotCopper>, null], 
	[<ore:ingotCopper>, null, <ore:ingotCopper>], 
	[null, <ore:plateSyrmorite>, null]
]);

recipes.remove(<embers:charger>);
recipes.addShaped("charger", <embers:charger>, [
	[null, <ore:plateSyrmorite>, null], 
	[<ore:ingotDawnstone>, <ore:ingotCopper>, <ore:ingotDawnstone>], 
	[<ore:ingotSyrmorite>, <ore:plateCopper>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:breaker>);
recipes.addShaped("breaker", <embers:breaker>, [
	[<ore:plateSyrmorite>, <ore:ingotSyrmorite>, <ore:plateSyrmorite>], 
	[<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>], 
	[<ore:ingotLead>, null, <ore:ingotLead>]
]);

recipes.remove(<embers:ember_pulser>);
recipes.addShaped("ember_pulser", <embers:ember_pulser>, [
	[<ore:plateDawnstone>], 
	[<embers:ember_emitter:*>], 
	[<ore:ingotSyrmorite>]
]);

recipes.remove(<embers:inferno_forge>);
recipes.addShaped("inferno_forge", <embers:inferno_forge>, [
	[<embers:block_dawnstone:*>, <ore:plateSyrmorite>, <embers:block_dawnstone:*>], 
	[<ore:ingotDawnstone>, <ore:blockCopper>, <ore:ingotDawnstone>], 
	[<embers:block_caminite_brick:*>, <embers:wildfire_core:*>, <embers:block_caminite_brick:*>]
]);

recipes.remove(<embers:mechanical_pump>);
recipes.addShaped("mechanical_pump", <embers:mechanical_pump>, [
	[<embers:pipe:*>, <ore:plateSyrmorite>, <embers:pipe:*>], 
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateSyrmorite>], 
	[<embers:brick_caminite:*>, <embers:pump:*>, <embers:brick_caminite:*>]
]);

recipes.remove(<embers:mini_boiler>);
recipes.addShaped("mini_boiler", <embers:mini_boiler>, [
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateSyrmorite>], 
	[<ore:ingotCopper>, null, <ore:plateSyrmorite>], 
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateSyrmorite>]
]);

recipes.remove(<embers:fluid_transfer>);
recipes.addShaped("fluid_transfer", <embers:fluid_transfer> * 4, [
	[<ore:plateSyrmorite>, <embers:pipe:*>, <ore:plateSyrmorite>], 
	[<ore:ingotSyrmorite>, <embers:pipe:*>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:clockwork_attenuator>);
recipes.addShaped("clockwork_attenuator", <embers:clockwork_attenuator>, [
	[<ore:nuggetElectrum>, <ore:dustRedstone>, <ore:nuggetElectrum>], 
	[null, <thebetweenlands:items_misc:32>, null], 
	[<ore:nuggetElectrum>, <ore:plateElectrum>, <ore:nuggetElectrum>]
]);

recipes.remove(<embers:steam_engine>);
recipes.addShaped("steam_engine", <embers:steam_engine>, [
	[null, <embers:pipe:*>, <embers:pipe:*>], 
	[<mysticalmechanics:axle_iron:*>, <mystgears:gear_syrmorite>, <ore:plateCopper>], 
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateCopper>]
]);

recipes.remove(<embers:mech_actuator>);
recipes.addShaped("mech_actuator", <embers:mech_actuator>, [
	[null, <mysticalmechanics:axle_iron:*>, null], 
	[<mysticalmechanics:axle_iron:*>, <mystgears:gear_syrmorite>, <mysticalmechanics:axle_iron:*>], 
	[<embers:mech_accessor:*>, <mysticalmechanics:axle_iron:*>, null]
]);

recipes.remove(<embers:mech_actuator_single>);
recipes.addShaped("mech_actuator_single", <embers:mech_actuator_single>, [
	[<embers:mech_accessor:*>, <mystgears:gear_syrmorite>, <mysticalmechanics:axle_iron:*>]
]);

recipes.remove(<embers:tinker_hammer>);
recipes.addShaped("tinker_hammer", <embers:tinker_hammer>, [
	[<ore:ingotSyrmorite>, <ore:ingotLead>, <ore:ingotSyrmorite>],
	[<ore:ingotSyrmorite>, <ore:stickWood>, <ore:ingotSyrmorite>],
	[null, <ore:stickWood>, null]
]);

recipes.remove(<embers:ember_detector>);
recipes.addShaped("ember_detector", <embers:ember_detector>, [
	[null, <ore:ingotSyrmorite>, null], 
	[<ore:ingotCopper>, <ore:dustRedstone>, <ore:ingotCopper>], 
	[<ore:ingotCopper>, <ore:ingotSyrmorite>, <ore:ingotCopper>]
]);

recipes.remove(<embers:ember_jar>);
recipes.addShaped("ember_jar", <embers:ember_jar>.withTag({emberCapacity: 2000.0, ember: 0.0}), [
	[null, <ore:ingotCopper>, null], 
	[<ore:ingotSyrmorite>, <embers:shard_ember:*>, <ore:ingotSyrmorite>], 
	[null, <ore:blockGlass>, null]
]);

recipes.remove(<embers:ember_cartridge>);
recipes.addShaped("ember_cartridge", <embers:ember_cartridge>.withTag({emberCapacity: 6000.0, ember: 0.0}), [
	[<ore:ingotSyrmorite>, <ore:plateCopper>, <ore:ingotSyrmorite>], 
	[<ore:blockGlass>, <embers:crystal_ember:*>, <ore:blockGlass>], 
	[null, <ore:blockGlass>, null]
]);

recipes.remove(<embers:ignition_cannon>);
recipes.addShaped("ignition_cannon", <embers:ignition_cannon>.withTag({cooldown: 0}), [
	[null, <ore:ingotDawnstone>, <embers:plate_dawnstone>], 
	[<ore:ingotDawnstone>, <embers:plate_dawnstone>, <ore:ingotSyrmorite>], 
	[<embers:shard_ember>, <ore:stickWood>, null]
]);

recipes.remove(<embers:ashen_cloak_head>);
recipes.addShaped("ashen_cloak_head", <embers:ashen_cloak_head>, [
	[null, <dawnoftimebuilder:silk>, null], 
	[<embers:ashen_cloth:*>, null, <embers:ashen_cloth:*>], 
	[<ore:ingotDawnstone>, <embers:ashen_cloth:*>, <ore:ingotDawnstone>]
]);

recipes.remove(<embers:glimmer_lamp>);
recipes.addShaped("glimmer_lamp", <embers:glimmer_lamp>.withTag({light: 1200}), [
	[null, <ore:plateSyrmorite>, null], 
	[<minecraft:iron_bars>, <embers:glimmer_shard>, <minecraft:iron_bars>], 
	[null, <ore:plateSyrmorite>, null]
]);

recipes.remove(<embers:jet_augment>);
recipes.addShaped("jet_augment", <embers:jet_augment>, [
	[<ore:plateDawnstone>, <ore:plateDawnstone>, null], 
	[<ore:ingotSyrmorite>, <embers:shard_ember:*>, <ore:ingotDawnstone>],
	[<ore:plateDawnstone>, <ore:plateDawnstone>, null]
]);

recipes.remove(<embers:resonating_bell>);
recipes.addShaped("resonating_bell", <embers:resonating_bell>, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:plateSyrmorite>], 
	[null, <ore:ingotSilver>, <ore:ingotSyrmorite>], 
	[<ore:plateSilver>, null, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:diffraction_barrel>);
recipes.addShaped("diffraction_barrel", <embers:diffraction_barrel>, [
	[<minecraft:iron_bars:*>, <ore:plateSyrmorite>, <embers:superheater:*>]
]);

recipes.remove(<embers:tinker_lens>);
recipes.addShaped("tinker_lens", <embers:tinker_lens>, [
	[<ore:ingotSyrmorite>, <ore:nuggetLead>, null], 
	[<ore:plateLead>, <ore:paneGlass>, <ore:nuggetLead>], 
	[<ore:ingotSyrmorite>, <ore:nuggetLead>, null]
]);

recipes.remove(<embers:spark_plug>);
recipes.addShaped("spark_plug", <embers:spark_plug>, [
	[<ore:ingotAluminium>, null, <ore:ingotAluminium>], 
	[null, <ore:plateSyrmorite>, null], 
	[null, <embers:aspectus_silver:*>, null]
]);

recipes.remove(<embers:ashen_amulet>);
recipes.addShaped("ashen_amulet", <embers:ashen_amulet>, [
	[null, <ore:leather>, null], 
	[<ore:leather>, null, <ore:leather>], 
	[<embers:archaic_brick:*>, <ore:dustAsh>, <embers:archaic_brick:*>]
]);

recipes.remove(<embers:ember_amulet>);
recipes.addShaped("ember_amulet", <embers:ember_amulet>, [
	[null, <ore:leather>, null], 
	[<ore:leather>, null, <ore:leather>], 
	[<ore:nuggetDawnstone>, <embers:ember_cluster:*>, <ore:nuggetDawnstone>]
]);

recipes.remove(<embers:ember_belt>);
recipes.addShaped("ember_belt", <embers:ember_belt>, [
	[<ore:leather>, <ore:ingotDawnstone>, <ore:leather>], 
	[<ore:leather>, null, <ore:leather>], 
	[<ore:plateDawnstone>, <embers:ember_cluster:*>, <ore:plateDawnstone>]
]);



recipes.remove(<embers:plate_iron>);
recipes.addShapeless("plate_iron", <embers:plate_iron>, [<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <embers:tinker_hammer:*>]);

recipes.remove(<embers:plate_gold>);
//recipes.addShapeless("plate_gold", <embers:plate_gold>, [<ore:ingotOctine>, <ore:ingotOctine>, <embers:tinker_hammer:*>]);

recipes.addShapeless("plate_brass", <thaumcraft:plate:0>, [<ore:ingotBrass>, <ore:ingotBrass>, <embers:tinker_hammer:*>]);
recipes.addShapeless("plate_thaumium", <thaumcraft:plate:2>, [<ore:ingotThaumium>, <ore:ingotThaumium>, <embers:tinker_hammer:*>]);
recipes.addShapeless("plate_void", <thaumcraft:plate:3>, [<ore:ingotVoid>, <ore:ingotVoid>, <embers:tinker_hammer:*>]);





// ----------- ALCHEMY ----------------------
Alchemy.remove(<embers:tyrfing>);
Alchemy.add(<embers:tyrfing>, [<thebetweenlands:valonite_sword>, <thebetweenlands:tar_solid>, <thebetweenlands:sulfur_block>, <embers:ingot_lead>, <embers:ingot_lead>], 
	{
		"silver" : 64 to 96, 
		"lead" : 64 to 96
	}
);

Alchemy.remove(<embers:dust_metallurgic>);
Alchemy.add(<embers:dust_metallurgic> * 3, [<ore:crystalSeed>, <embers:dust_ember>, <ore:dustRedstone>, null, null], 
	{
		"dawnstone" : 0 to 16, 
		"iron" : 0 to 16, 
		"copper" : 0 to 16, 
		"silver" : 0 to 16, 
		"lead" : 0 to 16
	}
);

Alchemy.remove(<embers:eldritch_insignia>);
Alchemy.add(<embers:eldritch_insignia>, [<embers:archaic_circuit>, <thebetweenlands:items_misc:18>, <embers:archaic_brick>, <thebetweenlands:items_misc:18>, <embers:archaic_brick>], 
	{
		"dawnstone" : 16 to 32, 
		"lead" : 48 to 72
	}
);

Alchemy.remove(<embers:blasting_core>);
Alchemy.add(<embers:blasting_core>, [<thebetweenlands:angry_pebble>, <embers:plate_iron>, <embers:plate_iron>, <embers:ingot_copper>, <embers:plate_iron>], 
	{
		"copper" : 16 to 24
	}
);

Alchemy.remove(<embers:archaic_brick>);
Alchemy.add(<embers:archaic_brick> * 5, [<embers:archaic_brick>, <thebetweenlands:mud>, <thebetweenlands:sludge_ball>, <thebetweenlands:mud>, <thebetweenlands:sludge_ball>], 
	{
		"dawnstone" : 4 to 8
	}
);

Alchemy.remove(<embers:ember_cluster>);
Alchemy.add(<embers:ember_cluster>, [<embers:crystal_ember>, <embers:shard_ember>, <embers:shard_ember>, <embers:shard_ember>, <thebetweenlands:angry_pebble>], 
	{
		"dawnstone" : 24 to 48,
		"copper" : 24 to 48
	}
);

Alchemy.remove(<minecraft:soul_sand>);
Alchemy.remove(<minecraft:netherrack>);

Alchemy.remove(<embers:adhesive>);
Alchemy.add(<embers:adhesive> * 6, [<thebetweenlands:sludge_ball>, <thebetweenlands:items_crushed:17>, <thebetweenlands:items_crushed:17>, null, null], 
	{
		"iron" : 12 to 18
	}
);

Alchemy.remove(<embers:isolated_materia>);
Alchemy.add(<embers:isolated_materia>, [<thebetweenlands:items_misc:11>, <thebetweenlands:sludge_ball>, <thebetweenlands:dentrothyst_shard_orange>, <thebetweenlands:dentrothyst_shard_green>, null], 
	{
		"iron" : 24 to 36
	}
);

Alchemy.remove(<embers:isolated_materia>);
Alchemy.add(<embers:isolated_materia>, [<thebetweenlands:items_misc:11>, <thebetweenlands:sludge_ball>, <thebetweenlands:dentrothyst_shard_orange>, <thebetweenlands:dentrothyst_shard_green>, null], 
	{
		"iron" : 24 to 36
	}
);

Alchemy.remove(<embers:glimmer_shard>);
Alchemy.add(<embers:glimmer_shard>.withTag({light: 800}), [<thebetweenlands:dentrothyst_shard_orange>, <thebetweenlands:angry_pebble>, <thebetweenlands:angry_pebble>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"dawnstone" : 64 to 80
	}
);

Alchemy.remove(<embers:inflictor_gem>);
Alchemy.add(<embers:inflictor_gem>, [<thebetweenlands:items_misc:19>, <embers:ingot_dawnstone>, <thebetweenlands:items_misc:18>, <thebetweenlands:items_misc:18>, <thebetweenlands:items_misc:18>], 
	{
		"dawnstone" : 32 to 48,
		"lead" : 24 to 40
	}
);

Alchemy.remove(<embers:ashen_cloth>);
Alchemy.add(<embers:ashen_cloth> * 2, [<thebetweenlands:shelf_fungus>, <embers:dust_ash>, <embers:dust_ash>, <minecraft:string>, <minecraft:string>], 
	{
		"iron" : 12 to 24,
		"lead" : 12 to 24
	}
);

Alchemy.remove(<embers:seed_iron>);
Alchemy.add(<embers:seed_iron>, [<thebetweenlands:dentrothyst_shard_orange>, <thebetweenlands:items_misc:11>, <thebetweenlands:items_misc:11>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"iron" : 96 to 128
	}
);

Alchemy.remove(<embers:seed_gold>);
Alchemy.add(<embers:seed_gold>, [<thebetweenlands:dentrothyst_shard_orange>, <thebetweenlands:octine_ingot>, <thebetweenlands:octine_ingot>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"dawnstone" : 48 to 64,
		"iron" : 48 to 64
	}
);

Alchemy.remove(<embers:seed_copper>);
Alchemy.add(<embers:seed_copper>, [<thebetweenlands:dentrothyst_shard_orange>, <embers:ingot_copper>, <embers:ingot_copper>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"iron" : 48 to 64,
		"copper" : 48 to 64
	}
);

Alchemy.remove(<embers:seed_silver>);
Alchemy.add(<embers:seed_silver>, [<thebetweenlands:dentrothyst_shard_orange>, <embers:ingot_silver>, <embers:ingot_silver>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"iron" : 48 to 64,
		"silver" : 48 to 64
	}
);

Alchemy.remove(<embers:seed_lead>);
Alchemy.add(<embers:seed_lead>, [<thebetweenlands:dentrothyst_shard_orange>, <embers:ingot_lead>, <embers:ingot_lead>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"iron" : 48 to 64,
		"lead" : 48 to 64
	}
);

Alchemy.remove(<embers:seed_aluminum>);
Alchemy.add(<embers:seed_aluminum>, [<thebetweenlands:dentrothyst_shard_orange>, <embers:ingot_aluminum>, <embers:ingot_aluminum>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"iron" : 48 to 64,
		"copper" : 24 to 32,
		"silver" : 24 to 32
	}
);

Alchemy.remove(<embers:seed_nickel>);
Alchemy.add(<embers:seed_nickel>, [<thebetweenlands:dentrothyst_shard_orange>, <embers:ingot_nickel>, <embers:ingot_nickel>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"iron" : 72 to 96,
		"lead" : 24 to 32
	}
);

Alchemy.remove(<embers:seed_tin>);
Alchemy.add(<embers:seed_tin>, [<thebetweenlands:dentrothyst_shard_orange>, <embers:ingot_tin>, <embers:ingot_tin>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"iron" : 72 to 96,
		"silver" : 24 to 32
	}
);

Alchemy.remove(<embers:explosion_charm>);
Alchemy.add(<embers:explosion_charm>, [<embers:ember_cluster>, <embers:archaic_brick>, <thebetweenlands:items_misc:4>, <embers:archaic_brick>, <embers:archaic_brick>], 
	{
		"iron" : 8 to 32,
		"copper" : 8 to 32
	}
);



// ----------- MELTER ----------------------
val liquidsToRemove = [
	<liquid:iron>,
	<liquid:gold>,
] as ILiquidStack[];

for liquid in liquidsToRemove {
	Melter.remove(liquid * 1296);
	Melter.remove(liquid * 288);
	Melter.remove(liquid * 144);
	Melter.remove(liquid * 16);
}

for liquid in liquids {
	Melter.remove(liquids[liquid] * 1296);
	Melter.remove(liquids[liquid] * 288);
	Melter.remove(liquids[liquid] * 144);
	Melter.remove(liquids[liquid] * 16);
	
	Melter.add(liquids[liquid] * 1296, metals[liquid].block);
	Melter.add(liquids[liquid] * 144, metals[liquid].ingot);
	Melter.add(liquids[liquid] * 144, metals[liquid].plate);
	Melter.add(liquids[liquid] * 16, metals[liquid].nugget);
}

Melter.remove(<liquid:alchemical_redstone>);
Melter.add(<liquid:alchemical_redstone> * 144, <ore:dustRedstone>);
Melter.add(<liquid:alchemical_redstone> * 1296, <ore:blockRedstone>);

Melter.remove(<liquid:oil_soul> * 100);
Melter.add(<liquid:oil_soul> * 5, <thebetweenlands:sap_spit>);




// ----------- STAMPER ----------------------
Stamper.remove(<minecraft:iron_ingot>);
Stamper.add(<thebetweenlands:items_misc:11>, <liquid:syrmorite> * 144, <embers:stamp_bar>);

Stamper.remove(<minecraft:gold_ingot>);
Stamper.add(<thebetweenlands:octine_ingot>, <liquid:octine> * 144, <embers:stamp_bar>);

Stamper.remove(<embers:plate_iron>);
Stamper.add(<embers:plate_iron>, <liquid:syrmorite> * 144, <embers:stamp_plate>);

Stamper.add(<thaumcraft:plate:0>, <liquid:brass> * 144, <embers:stamp_plate>);
Stamper.add(<thaumcraft:plate:2>, <liquid:thaumium> * 144, <embers:stamp_plate>);
Stamper.add(<thaumcraft:plate:3>, <liquid:void> * 144, <embers:stamp_plate>);

Stamper.remove(<embers:plate_gold>);
Stamper.add(<embers:plate_gold>, <liquid:octine> * 144, <embers:stamp_plate>);
	
Stamper.remove(<minecraft:blaze_powder>);

Stamper.remove(<embers:aspectus_iron>);
Stamper.add(<embers:aspectus_iron>, <liquid:syrmorite> * 144, <embers:stamp_plate>, <embers:shard_ember>);

recipes.remove(<thebetweenlands:octine_pickaxe>);
recipes.remove(<thebetweenlands:octine_axe>);
recipes.remove(<thebetweenlands:octine_shovel>);
recipes.remove(<thebetweenlands:octine_sword>);
Stamper.add(<thebetweenlands:octine_pickaxe>, <liquid:octine> * 432, <embers:stamp_flat>, <thebetweenlands:bone_pickaxe>);
Stamper.add(<thebetweenlands:octine_axe>, <liquid:octine> * 432, <embers:stamp_flat>, <thebetweenlands:bone_axe>);
Stamper.add(<thebetweenlands:octine_shovel>, <liquid:octine> * 144, <embers:stamp_flat>, <thebetweenlands:bone_shovel>);
Stamper.add(<thebetweenlands:octine_sword>, <liquid:octine> * 288, <embers:stamp_flat>, <thebetweenlands:bone_sword>);
Stamper.add(<roots:iron_knife>, <liquid:octine> * 288, <embers:stamp_flat>, <roots:stone_knife>);




//Stamper.remove(<minecraft:iron_nugget>);
//Stamper.add(<thebetweenlands:items_misc:41>, <liquid:syrmorite> * 16, <soot:stamp_nugget>);

//Stamper.remove(<minecraft:gold_nugget>);
//Stamper.add(<thebetweenlands:items_misc:42>, <liquid:octine> * 16, <soot:stamp_nugget>);



// ----------- MIXER ----------------------
Mixer.remove(<liquid:dawnstone> * 8);
Mixer.add(<liquid:dawnstone> * 8, [<liquid:copper> * 4, <liquid:octine> * 4]);

Mixer.remove(<liquid:electrum>);
Mixer.add(<liquid:electrum> * 8, [<liquid:silver> * 4, <liquid:octine> * 4]);




// ----------- EMBER GENERATION ----------------------
EmberGeneration.addEmberFuel(<thebetweenlands:items_misc:45>, 1000);
EmberGeneration.removeBoilerFluid(<liquid:water>);
EmberGeneration.addBoilerFluid(<liquid:swamp_water>, <liquid:steam>, 5, [255, 255, 255]);

EmberGeneration.removeCombustionFuel(<minecraft:coal>);
EmberGeneration.removeCombustionFuel(<minecraft:netherbrick>);
EmberGeneration.removeCombustionFuel(<minecraft:blaze_powder>);

EmberGeneration.addCombustionFuel(<thebetweenlands:items_misc:18>, 2);
EmberGeneration.addCombustionFuel(<thebetweenlands:items_misc:42>, 3);
EmberGeneration.addCombustionFuel(<thebetweenlands:items_misc:45>, 4);


EmberGeneration.removeCatalysisFuel(<minecraft:gunpowder>);
EmberGeneration.removeCatalysisFuel(<minecraft:glowstone_dust>);

EmberGeneration.addCatalysisFuel(<thebetweenlands:items_misc:44>, 3);
EmberGeneration.addCatalysisFuel(<thebetweenlands:wisp>, 4);




// ----------- BORE ----------------------
var boresetTCCrystals = EmberBoreFixed.create([20], ["thebetweenlands:swamplands_clearing"]);

boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}) * 2).weight(20));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}) * 2).weight(20));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}) * 2).weight(20));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}) * 2).weight(20));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}) * 2).weight(20));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}) * 2).weight(20));

boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}) * 3).weight(15));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}) * 3).weight(15));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}) * 3).weight(15));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}) * 3).weight(15));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}) * 3).weight(15));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}) * 3).weight(15));

boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}) * 4).weight(10));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}) * 4).weight(10));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}) * 4).weight(10));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}) * 4).weight(10));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}) * 4).weight(10));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}) * 4).weight(10));



scripts.utils.addInfoTooltip(<thebetweenlands:items_misc:45>, "Can be used as Embers fuel");
scripts.utils.addInfoTooltip(<embers:ember_bore>, "Has to be placed in the pitstone layers");


<embers:plate_iron>.displayName = "Syrmorite Plate";
<embers:plate_gold>.displayName = "Octine Plate";
<embers:aspectus_iron>.displayName = "Syrmorite Aspectus";
<embers:seed_iron>.displayName = "Syrmorite Crystal Seed";
<embers:seed_gold>.displayName = "Octine Crystal Seed";
