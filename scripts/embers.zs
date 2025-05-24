import crafttweaker.liquid.ILiquidStack;
import mods.embers.Alchemy;
import mods.embers.Melter;
import mods.embers.Stamper;
import mods.embers.EmberGeneration;
import mods.embers.Mixer;
import mods.embers.EmberBoreFixed;
import mods.embers.HeatCoil;



// ----------- NORMAL RECIPES ----------------------
recipes.remove(<embers:blend_caminite>);
//scripts.utils.addShaped("embers-blend_caminite", <embers:blend_caminite> * 5, [
//	[<thebetweenlands:mud>, <ore:dustAsh>, <thebetweenlands:mud>], 
//	[<pyrotech:material:8>, <thebetweenlands:silt>, <pyrotech:material:8>], 
//	[<thebetweenlands:mud>, <ore:dustAsh>, <thebetweenlands:mud>]
//]);

recipes.remove(<embers:mech_core>);
scripts.utils.addShaped("embers-mech_core", <embers:mech_core>, [
	[<ore:ingotSyrmorite>, <embers:plate_lead>, <ore:ingotSyrmorite>], 
	[<embers:plate_lead>, <ore:plateLead>, <embers:plate_lead>], 
	[<ore:ingotSyrmorite>, <embers:plate_lead>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:stamper_base>);
recipes.addShaped("embers-stamp_base", <embers:stamper_base>, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<embers:block_caminite_brick:*>, <thebetweenlands:bl_bucket:1>.noReturn() | <thebetweenlands:bl_bucket:1>.withTag({Fluid: {}}).noReturn(), <embers:block_caminite_brick:*>]]);


recipes.remove(<embers:stamper>);
scripts.utils.addShaped("embers-stamper", <embers:stamper>, [
	[<embers:brick_caminite:*>, <ore:ingotSyrmorite>, <embers:brick_caminite:*>], 
	[<embers:brick_caminite:*>, <ore:blockSyrmorite>, <embers:brick_caminite:*>], 
	[<embers:brick_caminite:*>, null, <embers:brick_caminite:*>]
]);

recipes.removeByRecipeName("embers:ashen_stone");
scripts.utils.addShaped("embers-ashen_stone", <embers:ashen_stone> * 4, [
	[null, <thebetweenlands:limestone>, null], 
	[<thebetweenlands:limestone>, <ore:dustAsh>, <thebetweenlands:limestone>], 
	[null, <thebetweenlands:limestone>, null]
]);

recipes.removeByRecipeName("embers:ashen_brick");
scripts.utils.addShaped("embers-ashen_brick", <embers:ashen_brick> * 4, [
	[null, <thebetweenlands:limestone_bricks>, null], 
	[<thebetweenlands:limestone_bricks>, <ore:dustAsh>, <thebetweenlands:limestone_bricks>], 
	[null, <thebetweenlands:limestone_bricks>, null]
]);

recipes.remove(<embers:auto_hammer>);
scripts.utils.addShaped("auto_hammer", <embers:auto_hammer>, [
	[<embers:stairs_caminite_brick:*>, <embers:stairs_caminite_brick:*>, null], 
	[<ore:blockOctine>, <ore:ingotSyrmorite>, <ore:blockSyrmorite>], 
	[<embers:stairs_caminite_brick:*>, <embers:stairs_caminite_brick:*>, null]
]);

recipes.remove(<embers:block_furnace>);
scripts.utils.addShaped("embers_block_furnace", <embers:block_furnace>, [
	[<embers:brick_caminite:*>, <embers:plate_caminite:*>, <embers:brick_caminite:*>], 
	[<embers:brick_caminite:*>, <ore:ingotSyrmorite>, <embers:brick_caminite:*>], 
	[<ore:ingotSyrmorite>, <thebetweenlands:sulfur_furnace>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:cinder_plinth>);
scripts.utils.addShaped("embers_cinder_plinth", <embers:cinder_plinth>, [
	[null, <ore:plateLead>, null], 
	[<ore:ingotSilver>, <thebetweenlands:sulfur_furnace>, <ore:ingotSilver>], 
	[<ore:plateLead>, <embers:block_caminite_brick:*>, <ore:plateLead>]
]);

recipes.remove(<embers:boiler>);
scripts.utils.addShaped("embers_boiler_modified", <embers:boiler>, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <thebetweenlands:sulfur_furnace>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:blockOctine>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:ember_bore>);
scripts.utils.addShaped("ember_bore", <embers:ember_bore>, [
	[<embers:stairs_caminite_brick:*>, <ore:ingotSyrmorite>, <embers:stairs_caminite_brick:*>], 
	[<embers:stairs_caminite_brick:*>, <embers:mech_core:*>, <embers:stairs_caminite_brick:*>], 
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:pipe>);
scripts.utils.addShaped("pipe", <embers:pipe> * 8, [
	[<ore:ingotSyrmorite>, <ore:plateSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:ember_receiver>);
scripts.utils.addShaped("ember_receiver", <embers:ember_receiver> * 4, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <embers:plate_caminite:*>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:ember_emitter>);
scripts.utils.addShaped("ember_emitter", <embers:ember_emitter> * 4, [
	[null, <ore:ingotSyrmorite>, null], 
	[null, <ore:ingotSyrmorite>, null], 
	[<ore:ingotSyrmorite>, <embers:plate_caminite:*>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:ember_activator>);
scripts.utils.addShaped("ember_activator", <embers:ember_activator>, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
	[<ore:plateSyrmorite>, <thebetweenlands:sulfur_furnace>, <ore:plateSyrmorite>]
]);

recipes.remove(<embers:block_tank>);
scripts.utils.addShaped("block_tank", <embers:block_tank>, [
	[<embers:brick_caminite:*>, null, <embers:brick_caminite:*>], 
	[<ore:plateSyrmorite>, null, <ore:plateSyrmorite>], 
	[<embers:brick_caminite:*>, <ore:ingotSyrmorite>, <embers:brick_caminite:*>]
]);
scripts.utils.addShapeless("block_tank_clear", <embers:block_tank>, [<embers:block_tank>]);

recipes.remove(<embers:copper_cell>);
scripts.utils.addShaped("copper_cell", <embers:copper_cell>.withTag({emberCapacity: 24000.0, ember: 0.0}), [
	[<embers:block_caminite_brick:*>, <ore:ingotSyrmorite>, <embers:block_caminite_brick:*>], 
	[<ore:ingotSyrmorite>, <ore:blockOctine>, <ore:ingotSyrmorite>], 
	[<embers:block_caminite_brick:*>, <ore:ingotSyrmorite>, <embers:block_caminite_brick:*>]
]);

recipes.remove(<embers:bin>);
scripts.utils.addShaped("bin", <embers:bin>, [
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:plateSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:mech_accessor>);
scripts.utils.addShaped("mech_accessor", <embers:mech_accessor>, [
	[<embers:stairs_caminite_brick:*>, <ore:plateSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:mixer>);
scripts.utils.addShaped("mixer", <embers:mixer>, [
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateSyrmorite>], 
	[<ore:plateSyrmorite>, <ore:ingotSyrmorite>, <ore:plateSyrmorite>], 
	[<ore:ingotSyrmorite>, <embers:mech_core:*>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:heat_coil>);
scripts.utils.addShaped("heat_coil", <embers:heat_coil>, [
	[<ore:plateOctine>, <ore:plateOctine>, <ore:plateOctine>], 
	[<ore:ingotSyrmorite>, <ore:blockOctine>, <ore:ingotSyrmorite>], 
	[null, <embers:mech_core:*>, null]
]);

recipes.remove(<embers:fluid_dropper>);
scripts.utils.addShaped("fluid_dropper", <embers:fluid_dropper>, [
	[null, <embers:pipe:*>, null], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:large_tank>);
scripts.utils.addShaped("large_tank", <embers:large_tank>, [
	[<embers:stairs_caminite_brick:*>, null, <embers:stairs_caminite_brick:*>], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>], 
	[<embers:stairs_caminite_brick:*>, <embers:block_tank:*>, <embers:stairs_caminite_brick:*>]
]);


scripts.utils.addShaped("item_gauge", <embers:item_gauge>, [
	[<ore:dustRedstone>], 
	[<thebetweenlands:items_misc:32>], 
	[<ore:plateLead>]
]);

recipes.remove(<embers:ember_gauge>);
scripts.utils.addShaped("ember_gauge", <embers:ember_gauge>, [
	[<ore:dustRedstone>], 
	[<thebetweenlands:items_misc:32>], 
	[<ore:plateOctine>]
]);

recipes.remove(<embers:fluid_gauge>);
scripts.utils.addShaped("fluid_gauge", <embers:fluid_gauge>, [
	[<ore:dustRedstone>], 
	[<thebetweenlands:items_misc:32>], 
	[<ore:plateSyrmorite>]
]);

recipes.remove(<embers:block_lantern>);
scripts.utils.addShaped("block_lantern", <embers:block_lantern> * 4, [
	[<ore:plateSyrmorite>], 
	[<embers:shard_ember:*>], 
	[<ore:ingotSyrmorite>]
]);

recipes.remove(<embers:beam_splitter>);
scripts.utils.addShaped("beam_splitter", <embers:beam_splitter>, [
	[null, <ore:ingotDawnstone>, null], 
	[<ore:ingotSyrmorite>, <ore:plateSyrmorite>, <ore:ingotSyrmorite>], 
	[null, <ore:ingotSyrmorite>, null]
]);

recipes.remove(<embers:ember_relay>);
scripts.utils.addShaped("ember_relay", <embers:ember_relay> * 4, [
	[null, <ore:ingotOctine>, null], 
	[<ore:ingotOctine>, null, <ore:ingotOctine>], 
	[null, <ore:plateSyrmorite>, null]
]);

recipes.remove(<embers:charger>);
scripts.utils.addShaped("charger", <embers:charger>, [
	[null, <ore:plateSyrmorite>, null], 
	[<ore:ingotDawnstone>, <ore:ingotSyrmorite>, <ore:ingotDawnstone>], 
	[<ore:ingotSyrmorite>, <ore:plateOctine>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:breaker>);
scripts.utils.addShaped("breaker", <embers:breaker>, [
	[<ore:plateSyrmorite>, <ore:ingotSyrmorite>, <ore:plateSyrmorite>], 
	[<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>], 
	[<ore:ingotLead>, null, <ore:ingotLead>]
]);

recipes.remove(<embers:ember_pulser>);
scripts.utils.addShaped("ember_pulser", <embers:ember_pulser>, [
	[<ore:plateDawnstone>], 
	[<embers:ember_emitter:*>], 
	[<ore:ingotSyrmorite>]
]);

recipes.remove(<embers:inferno_forge>);
scripts.utils.addShaped("inferno_forge", <embers:inferno_forge>, [
	[<embers:block_dawnstone:*>, <ore:plateSyrmorite>, <embers:block_dawnstone:*>], 
	[<ore:ingotDawnstone>, <ore:blockOctine>, <ore:ingotDawnstone>], 
	[<embers:block_caminite_brick:*>, <embers:wildfire_core:*>, <embers:block_caminite_brick:*>]
]);

recipes.remove(<embers:mechanical_pump>);
scripts.utils.addShaped("mechanical_pump", <embers:mechanical_pump>, [
	[<embers:pipe:*>, <ore:plateSyrmorite>, <embers:pipe:*>], 
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateSyrmorite>], 
	[<embers:brick_caminite:*>, <embers:pump:*>, <embers:brick_caminite:*>]
]);

recipes.remove(<embers:mini_boiler>);
scripts.utils.addShaped("mini_boiler", <embers:mini_boiler>, [
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateSyrmorite>], 
	[<ore:ingotSyrmorite>, null, <ore:plateSyrmorite>], 
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateSyrmorite>]
]);

recipes.remove(<embers:fluid_transfer>);
scripts.utils.addShaped("fluid_transfer", <embers:fluid_transfer> * 4, [
	[<ore:plateSyrmorite>, <embers:pipe:*>, <ore:plateSyrmorite>], 
	[<ore:ingotSyrmorite>, <embers:pipe:*>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, null, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:clockwork_attenuator>);
scripts.utils.addShaped("clockwork_attenuator", <embers:clockwork_attenuator>, [
	[<ore:dustRedstone>], 
	[<thebetweenlands:items_misc:32>], 
	[<mystgears:gear_syrmorite>]
]);

recipes.remove(<embers:steam_engine>);
scripts.utils.addShaped("steam_engine", <embers:steam_engine>, [
	[null, <embers:pipe:*>, <embers:pipe:*>], 
	[<mysticalmechanics:axle_iron:*>, <mystgears:gear_syrmorite>, <ore:plateOctine>], 
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateOctine>]
]);

recipes.remove(<embers:mech_actuator>);
scripts.utils.addShaped("mech_actuator", <embers:mech_actuator>, [
	[null, <mysticalmechanics:axle_iron:*>, null], 
	[<mysticalmechanics:axle_iron:*>, <mystgears:gear_syrmorite>, <mysticalmechanics:axle_iron:*>], 
	[<embers:mech_accessor:*>, <mysticalmechanics:axle_iron:*>, null]
]);

recipes.remove(<embers:mech_actuator_single>);
scripts.utils.addShaped("mech_actuator_single", <embers:mech_actuator_single>, [
	[<embers:mech_accessor:*>, <mystgears:gear_syrmorite>, <mysticalmechanics:axle_iron:*>]
]);

recipes.remove(<embers:tinker_hammer>);
scripts.utils.addShaped("tinker_hammer", <embers:tinker_hammer>, [
	[<ore:ingotSyrmorite>, <ore:ingotLead>, <ore:ingotSyrmorite>],
	[<ore:ingotSyrmorite>, <ore:stickWood>, <ore:ingotSyrmorite>],
	[null, <ore:stickWood>, null]
]);

recipes.remove(<embers:ember_detector>);
scripts.utils.addShaped("ember_detector", <embers:ember_detector>, [
	[null, <ore:ingotSyrmorite>, null], 
	[<ore:ingotSyrmorite>, <ore:dustRedstone>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:ember_jar>);
scripts.utils.addShaped("ember_jar", <embers:ember_jar>.withTag({emberCapacity: 2000.0, ember: 0.0}), [
	[null, <ore:ingotSyrmorite>, null], 
	[<ore:ingotSyrmorite>, <embers:shard_ember:*>, <ore:ingotSyrmorite>], 
	[null, <ore:blockGlass>, null]
]);

recipes.remove(<embers:ember_cartridge>);
scripts.utils.addShaped("ember_cartridge", <embers:ember_cartridge>.withTag({emberCapacity: 6000.0, ember: 0.0}), [
	[<ore:ingotSyrmorite>, <ore:plateOctine>, <ore:ingotSyrmorite>], 
	[<ore:blockGlass>, <embers:crystal_ember:*>, <ore:blockGlass>], 
	[null, <ore:blockGlass>, null]
]);

recipes.remove(<embers:ashen_cloak_head>);
scripts.utils.addShaped("ashen_cloak_head", <embers:ashen_cloak_head>, [
	[null, <contenttweaker:silk>, null], 
	[<embers:ashen_cloth:*>, null, <embers:ashen_cloth:*>], 
	[<ore:ingotDawnstone>, <embers:ashen_cloth:*>, <ore:ingotDawnstone>]
]);

recipes.remove(<embers:glimmer_lamp>);
scripts.utils.addShaped("glimmer_lamp", <embers:glimmer_lamp>.withTag({light: 1200}), [
	[null, <ore:plateSyrmorite>, null], 
	[<minecraft:iron_bars>, <embers:glimmer_shard>, <minecraft:iron_bars>], 
	[null, <ore:plateSyrmorite>, null]
]);

recipes.remove(<embers:jet_augment>);
scripts.utils.addShaped("jet_augment", <embers:jet_augment>, [
	[<ore:plateDawnstone>, <ore:plateDawnstone>, null], 
	[<ore:ingotSyrmorite>, <embers:shard_ember:*>, <ore:ingotDawnstone>],
	[<ore:plateDawnstone>, <ore:plateDawnstone>, null]
]);

recipes.remove(<embers:resonating_bell>);
scripts.utils.addShaped("resonating_bell", <embers:resonating_bell>, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:plateSyrmorite>], 
	[null, <ore:ingotSilver>, <ore:ingotSyrmorite>], 
	[<ore:plateSilver>, null, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:diffraction_barrel>);
scripts.utils.addShaped("diffraction_barrel", <embers:diffraction_barrel>, [
	[<minecraft:iron_bars:*>, <ore:plateSyrmorite>, <embers:superheater:*>]
]);

recipes.remove(<embers:tinker_lens>);
scripts.utils.addShaped("tinker_lens", <embers:tinker_lens>, [
	[<ore:ingotSyrmorite>, <ore:nuggetLead>, null], 
	[<ore:plateLead>, <ore:paneGlass>, <ore:nuggetLead>], 
	[<ore:ingotSyrmorite>, <ore:nuggetLead>, null]
]);

recipes.remove(<embers:spark_plug>);
scripts.utils.addShaped("spark_plug", <embers:spark_plug>, [
	[<ore:ingotAluminium>, null, <ore:ingotAluminium>], 
	[null, <ore:plateSyrmorite>, null], 
	[null, <embers:aspectus_silver:*>, null]
]);

recipes.remove(<embers:ashen_amulet>);
scripts.utils.addShaped("ashen_amulet", <embers:ashen_amulet>, [
	[null, <ore:leather>, null], 
	[<ore:leather>, null, <ore:leather>], 
	[<embers:archaic_brick:*>, <ore:dustAsh>, <embers:archaic_brick:*>]
]);

recipes.remove(<embers:ember_amulet>);
scripts.utils.addShaped("ember_amulet", <embers:ember_amulet>, [
	[null, <ore:leather>, null], 
	[<ore:leather>, null, <ore:leather>], 
	[<ore:nuggetDawnstone>, <embers:ember_cluster:*>, <ore:nuggetDawnstone>]
]);

recipes.remove(<embers:ember_belt>);
scripts.utils.addShaped("ember_belt", <embers:ember_belt>, [
	[<ore:leather>, <ore:ingotDawnstone>, <ore:leather>], 
	[<ore:leather>, null, <ore:leather>], 
	[<ore:plateDawnstone>, <embers:ember_cluster:*>, <ore:plateDawnstone>]
]);

recipes.remove(<embers:reactor>);
scripts.utils.addShaped("reactor", <embers:reactor>, [
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <embers:wildfire_core:*>, <ore:ingotSyrmorite>], 
	[<ore:plateSilver>, <embers:block_caminite_brick:*>, <ore:plateSilver>]
]);

recipes.remove(<embers:combustor>);
scripts.utils.addShaped("combustor", <embers:combustor>, [
	[null, <ore:ingotSyrmorite>, null], 
	[<ore:plateGold>, <embers:ember_cluster:*>, <ore:plateGold>], 
	[<ore:ingotSyrmorite>, <embers:mech_core:*>, <ore:ingotSyrmorite>]
]);

recipes.remove(<embers:archaic_circuit>);
scripts.utils.addShaped("archaic_circuit", <embers:archaic_circuit>, [
	[null, <embers:archaic_brick:*>, null], 
	[<embers:archaic_brick:*>, <ore:ingotSyrmorite>, <embers:archaic_brick:*>], 
	[null, <embers:archaic_brick:*>, null]
]);

recipes.remove(<embers:superheater>);
scripts.utils.addShaped("superheater", <embers:superheater>, [
	[null, <ore:ingotDawnstone>, <ore:plateDawnstone>], 
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <ore:ingotDawnstone>], 
	[<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, null]
]);

recipes.remove(<embers:ember_funnel>);
scripts.utils.addShaped("ember_funnel", <embers:ember_funnel>, [
	[<ore:plateDawnstone>, null, <ore:plateDawnstone>], 
	[<ore:ingotSyrmorite>, <embers:ember_receiver:*>, <ore:ingotSyrmorite>], 
	[null, <ore:plateDawnstone>, null]
]);

recipes.remove(<embers:ember_siphon>);
scripts.utils.addShaped("ember_siphon", <embers:ember_siphon>, [
	[<embers:wall_caminite_brick>, <ore:ingotSyrmorite>, <embers:wall_caminite_brick>], 
	[<ore:plateSilver>, <ore:ingotSyrmorite>, <ore:plateSilver>], 
	[<embers:brick_caminite:*>, <embers:brick_caminite:*>, <embers:brick_caminite:*>]
]);

recipes.remove(<embers:alchemy_tablet>);
scripts.utils.addShaped("alchemy_tablet", <embers:alchemy_tablet>, [
	[null, <ore:plateDawnstone>, null], 
	[<embers:stairs_caminite_brick:*>, <ore:plateOctine>, <embers:stairs_caminite_brick:*>], 
	[<embers:block_caminite_brick:*>, <ore:ingotDawnstone>, <embers:block_caminite_brick:*>]
]);

recipes.remove(<embers:alchemy_pedestal>);
scripts.utils.addShaped("alchemy_pedestal", <embers:alchemy_pedestal>, [
	[<ore:plateDawnstone>, null, <ore:plateDawnstone>], 
	[<ore:ingotDawnstone>, <embers:crystal_ember:*>, <ore:ingotDawnstone>], 
	[<embers:stairs_caminite_brick:*>, <ore:blockOctine>, <embers:stairs_caminite_brick:*>]
]);

recipes.remove(<embers:beam_cannon>);
scripts.utils.addShaped("beam_cannon", <embers:beam_cannon>, [
	[<ore:plateOctine>, <embers:crystal_ember:*>, <ore:plateOctine>], 
	[<ore:plateOctine>, <embers:crystal_ember:*>, <ore:plateOctine>], 
	[<ore:ingotDawnstone>, <embers:block_caminite_brick:*>, <ore:ingotDawnstone>]
]);

recipes.remove(<embers:crystal_cell>);
scripts.utils.addShaped("crystal_cell", <embers:crystal_cell>, [
	[null, <embers:crystal_ember:*>, null], 
	[<ore:plateDawnstone>, <embers:crystal_ember:*>, <ore:plateDawnstone>], 
	[<ore:blockOctine>, <ore:blockDawnstone>, <ore:blockOctine>]
]);

recipes.remove(<embers:stirling>);
scripts.utils.addShaped("stirling", <embers:stirling>, [
	[<ore:plateDawnstone>, <ore:blockOctine>, <ore:plateDawnstone>], 
	[<ore:plateDawnstone>, <ore:blockOctine>, <ore:plateDawnstone>], 
	[<embers:shard_ember:*>, <embers:wildfire_core:*>, <embers:shard_ember:*>]
]);

recipes.remove(<embers:reaction_chamber>);
scripts.utils.addShaped("reaction_chamber", <embers:reaction_chamber>, [
	[<ore:plateSyrmorite>, <ore:plateSyrmorite>, <ore:plateSyrmorite>], 
	[<ore:plateSyrmorite>, null, <ore:plateSyrmorite>], 
	[<ore:ingotSyrmorite>, <embers:spark_plug:*>, <ore:ingotSyrmorite>]
]);



recipes.remove(<embers:plate_iron>);
//scripts.utils.addShapeless("plate_iron", <embers:plate_iron>, [<ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <embers:tinker_hammer:*>]);

recipes.remove(<embers:plate_gold>);
//scripts.utils.addShapeless("plate_gold", <embers:plate_gold>, [<ore:ingotOctine>, <ore:ingotOctine>, <embers:tinker_hammer:*>]);




// ----------- ALCHEMY ----------------------
Alchemy.remove(<embers:isolated_materia>);
Alchemy.remove(<soot:witch_fire>);
Alchemy.remove(<embers:seed_tin>);

Alchemy.remove(<embers:winding_gears>);
Alchemy.add(<embers:winding_gears>, [<ore:ingotOctine>, <ore:plateOctine>, <ore:plateOctine>, <ore:plateOctine>, <ore:plateOctine>], 
	{
		"copper" : 32 to 128
	}
);

Alchemy.add(<embers:blend_caminite> * 4, [<roots:runic_dust>, <thebetweenlands:mud>, <pyrotech:material:8>, <thebetweenlands:silt>, <embers:dust_ash>], 
	{
		"dawnstone" : 4 to 8
	}
);

Alchemy.remove(<embers:tyrfing>);
Alchemy.add(<embers:tyrfing>, [<thebetweenlands:valonite_sword>, <thebetweenlands:tar_solid>, <thebetweenlands:sulfur_block>, <embers:ingot_lead>, <embers:ingot_lead>], 
	{
		"silver" : 64 to 96, 
		"lead" : 64 to 96
	}
);

Alchemy.remove(<embers:dust_metallurgic>);
Alchemy.add(<embers:dust_metallurgic> * 3, [<ore:crystalSeed>, <embers:dust_ember>, <ore:dustRedstone>, <thaumcraft:salis_mundus>, null], 
	{
		"dawnstone" : 0 to 16, 
		"iron" : 0 to 16, 
		"copper" : 0 to 16, 
		"silver" : 0 to 16, 
		"lead" : 0 to 16
	}
);

Alchemy.add(<bladditions:corrupted_bone_wayfinder>.withTag({dimension: 22}), [<contenttweaker:inert_boneway_finder>, <thebetweenlands:glowing_betweenstone_tile>, <thebetweenlands:valonite_block>, <thebetweenlands:wight_heart>, <thebetweenlands:dentrothyst:1>], 
	{
		"dawnstone" : 16 to 32, 
		"iron" : 16 to 32, 
		"copper" : 16 to 32, 
		"silver" : 16 to 32, 
		"lead" : 16 to 32
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
/*
Alchemy.add(<embers:blasting_core>, [<thebetweenlands:angry_pebble>, <embers:plate_iron>, <embers:plate_iron>, <ore:ingotSyrmorite>, <embers:plate_iron>], 
	{
		"copper" : 16 to 24
	}
);
*/

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
/*
Alchemy.add(<embers:isolated_materia>, [<ore:ingotSyrmorite>, <thebetweenlands:sludge_ball>, <thebetweenlands:dentrothyst_shard_orange>, <thebetweenlands:dentrothyst_shard_green>, null], 
	{
		"iron" : 24 to 36
	}
);
*/

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

Alchemy.remove(<embers:seed_gold>);

Alchemy.add(<embers:seed_syrmorite>, [<thebetweenlands:dentrothyst_shard_orange>, <ore:ingotSyrmorite>, <ore:ingotSyrmorite>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"iron" : 96 to 128
	}
);

Alchemy.add(<embers:seed_octine>, [<thebetweenlands:dentrothyst_shard_orange>, <ore:ingotOctine>, <ore:ingotOctine>, <embers:shard_ember>, <embers:shard_ember>], 
	{
		"iron" : 48 to 64,
		"dawnstone" : 48 to 64
	}
);

Alchemy.remove(<embers:seed_iron>);

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
Alchemy.remove(<embers:seed_nickel>);	
Alchemy.remove(<embers:seed_copper>);

Alchemy.remove(<embers:explosion_charm>);
Alchemy.add(<embers:explosion_charm>, [<embers:ember_cluster>, <embers:archaic_brick>, <thebetweenlands:items_misc:4>, <embers:archaic_brick>, <embers:archaic_brick>], 
	{
		"iron" : 8 to 32,
		"copper" : 8 to 32
	}
);

Alchemy.remove(<embers:intelligent_apparatus>);
Alchemy.add(<embers:intelligent_apparatus>, [<ore:plateOctine>, <embers:archaic_circuit>, <ore:ingotOctine>, <embers:archaic_circuit>, <ore:ingotOctine>], 
	{
		"lead" : 40 to 64,
		"copper" : 24 to 48
	}
);

Alchemy.remove(<embers:wildfire_core>);
Alchemy.add(<embers:wildfire_core>, [<embers:ancient_motive_core>, <ore:ingotDawnstone>, <embers:ember_cluster>, <ore:ingotDawnstone>, <ore:plateOctine>], 
	{
		"iron" : 32 to 48,
		"silver" : 24 to 32
	}
);

Alchemy.remove(<soot:eitr>);
Alchemy.add(<soot:eitr>, [<thaumcraft:void_pick>, <ore:ingotAntimony>, <soot:sulfur_clump>, <ore:ingotAntimony>, <soot:signet_antimony>], 
	{
		"iron" : 64 to 96,
		"lead" : 64 to 96
	}
);

recipes.remove(<botania:alfheimportal>);
Alchemy.add(<botania:alfheimportal>, [<thebetweenlands:shimmer_stone>, <thebetweenlands:polished_dentrothyst>, <botania:livingwood>, <thebetweenlands:polished_dentrothyst>, <botania:livingwood>], 
	{
		"dawnstone" : 32 to 64, 
		"silver" : 32 to 64
	}
);

recipes.remove(<botania:pylon:1>);
Alchemy.add(<botania:pylon:1>, [<botania:pylon>, <thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:dentrothyst_shard_green>, <thebetweenlands:wight_heart>], 
	{
		"dawnstone" : 24 to 48, 
		"silver" : 24 to 48
	}
);




// ----------- METAL COEFFICIENT ----------------------
/*
EmberGeneration.addMetalCoefficient(<thaumcraft:metal_void>, 1);
EmberGeneration.addMetalCoefficient(<thaumcraft:metal_thaumium>, 0.9);
EmberGeneration.addMetalCoefficient(<thebetweenlands:octine_block>, 0.8);
EmberGeneration.addMetalCoefficient(<ore:blockSyrmorite>, 0.7);
*/


// ----------- MELTER ----------------------
val liquidsToRemove = [
	<liquid:iron>,
	<liquid:gold>,
	<liquid:tin>,
	<liquid:sugar>,
	<liquid:copper>,
	<liquid:aluminum>,
	<liquid:nickel>,
	<liquid:bronze>,
	<liquid:electrum>,
] as ILiquidStack[];

for liquid in liquidsToRemove {
	Melter.remove(liquid * 1296);
	Melter.remove(liquid * 288);
	Melter.remove(liquid * 144);
	Melter.remove(liquid * 16);
	Melter.remove(liquid);
}

for liquid in liquids {
	Melter.remove(liquids[liquid] * 1296);
	Melter.remove(liquids[liquid] * 288);
	Melter.remove(liquids[liquid] * 144);
	Melter.remove(liquids[liquid] * 16);
	Melter.remove(liquids[liquid]);
	
	Melter.add(liquids[liquid] * 1296, metals[liquid].block);
	Melter.add(liquids[liquid] * 144, metals[liquid].ingot);
	Melter.add(liquids[liquid] * 144, metals[liquid].plate);
	Melter.add(liquids[liquid] * 16, metals[liquid].nugget);
}

Melter.remove(<liquid:alchemical_redstone>);
Melter.add(<liquid:alchemical_redstone> * 144, <ore:dustRedstone>);
Melter.add(<liquid:alchemical_redstone> * 1296, <ore:blockRedstone>);

Melter.remove(<liquid:oil_soul> * 100);
Melter.add(<liquid:oil_soul> * 4, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "spiritus"}]}));

Melter.add(<liquid:tar> * 16, <thebetweenlands:items_misc:26>);

Melter.remove(<liquid:boiling_beetroot_soup> * 50);
Melter.add(<liquid:boiling_beetroot_soup> * 50, <roots:pereskia_bulb>);

Melter.remove(<liquid:boiling_potato_juice> * 50);
Melter.add(<liquid:boiling_potato_juice> * 50, <thebetweenlands:tangled_root>);

Melter.remove(<liquid:boiling_wort> * 100);
Melter.add(<liquid:boiling_wort> * 100, <thebetweenlands:items_misc:6>);

Melter.remove(<liquid:boiling_wormwood> * 50);
Melter.remove(<liquid:boiling_wormwood> * 100);
Melter.add(<liquid:boiling_wormwood> * 50, <thebetweenlands:swamp_double_tallgrass>);

Melter.add(<liquid:syrmorite> * 144, <embers:aspectus_iron>);
Melter.add(<liquid:octine> * 144, <embers:aspectus_copper>);
Melter.add(<liquid:lead> * 144, <embers:aspectus_lead>);
Melter.add(<liquid:silver> * 144, <embers:aspectus_silver>);
Melter.add(<liquid:dawnstone> * 144, <embers:aspectus_dawnstone>);

//Melter.add(<liquid:steel> * 16, <immersiveengineering:metal:28>);
//Melter.add(<liquid:steel> * 144, <immersiveengineering:metal:8>);
//Melter.add(<liquid:steel> * 1296, <immersiveengineering:storage:8>);


// ----------- STAMPER ----------------------
Stamper.remove(<mystgears:gear_tin>);
Stamper.remove(<minecraft:gold_ingot>);
Stamper.remove(<embers:ingot_copper>);
Stamper.remove(<mystgears:gear_copper>);
Stamper.remove(<embers:plate_copper>);
Stamper.remove(<embers:nugget_copper>);
Stamper.remove(<thaumcraft:nugget:1>);
Stamper.remove(<thaumcraft:nugget:2>);
Stamper.remove(<thaumcraft:nugget:3>);
Stamper.remove(<embers:block_copper>);
Stamper.remove(<thebetweenlands:octine_ingot>);
Stamper.remove(<mystgears:gear_nickel>);
Stamper.remove(<embers:nugget_nickel>);
Stamper.remove(<embers:plate_nickel>);
Stamper.remove(<embers:ingot_nickel>);
Stamper.remove(<mystgears:gear_aluminium>);
Stamper.remove(<embers:nugget_aluminum>);
Stamper.remove(<embers:plate_aluminum>);
Stamper.remove(<embers:ingot_aluminum>);
Stamper.remove(<embers:plate_bronze>);
Stamper.remove(<embers:nugget_bronze>);
Stamper.remove(<mystgears:gear_bronze>);
Stamper.remove(<embers:ingot_bronze>);
Stamper.remove(<embers:ingot_electrum>);
Stamper.remove(<embers:plate_electrum>);
Stamper.remove(<embers:nugget_electrum>);
Stamper.remove(<mystgears:gear_electrum>);
Stamper.remove(<embers:ingot_tin>);
Stamper.remove(<embers:plate_tin>);
Stamper.remove(<embers:plate_iron>);
Stamper.remove(<thaumcraft:plate:1>);

Stamper.add(<thebetweenlands:items_misc:11>, <liquid:syrmorite> * 144, <embers:stamp_bar>);
Stamper.add(<thaumcraft:ingot:2>, <liquid:brass> * 144, <embers:stamp_bar>);

Stamper.add(<thaumcraft:nugget:8>, <liquid:brass> * 16, <soot:stamp_nugget>);
Stamper.add(<embers:nugget_silver>, <liquid:silver> * 16, <soot:stamp_nugget>);

Stamper.add(<thaumcraft:plate:1>, <liquid:syrmorite> * 144, <embers:stamp_plate>);
Stamper.add(<thaumcraft:plate:0>, <liquid:brass> * 144, <embers:stamp_plate>);
Stamper.add(<thaumcraft:plate:2>, <liquid:thaumium> * 144, <embers:stamp_plate>);
Stamper.add(<thaumcraft:plate:3>, <liquid:void> * 144, <embers:stamp_plate>);
Stamper.add(<embers:plate_iron>, <liquid:iron> * 144, <embers:stamp_plate>);

//recipes.remove(<immersiveengineering:metal:38>);
//recipes.remove(<immersiveengineering:metal:8>);
//recipes.remove(<immersiveengineering:storage:8>);
//recipes.remove(<immersiveengineering:storage:28>);
//Stamper.add(<immersiveengineering:metal:38>, <liquid:steel> * 144, <embers:stamp_plate>);
//Stamper.add(<immersiveengineering:metal:8>, <liquid:steel> * 144, <embers:stamp_bar>);
//Stamper.add(<immersiveengineering:storage:8>, <liquid:steel> * 1296, <embers:stamp_flat>);
//Stamper.add(<immersiveengineering:metal:28>, <liquid:steel> * 16, <soot:stamp_nugget>);

Stamper.remove(<embers:plate_gold>);
Stamper.add(<embers:plate_gold>, <liquid:octine> * 144, <embers:stamp_plate>);
	
Stamper.remove(<minecraft:blaze_powder>);

Stamper.remove(<embers:aspectus_iron>);
Stamper.add(<embers:aspectus_iron>, <liquid:syrmorite> * 144, <embers:stamp_plate>, <embers:shard_ember>);

Stamper.remove(<embers:aspectus_copper>);
Stamper.add(<embers:aspectus_copper>, <liquid:octine> * 144, <embers:stamp_plate>, <embers:shard_ember>);

recipes.remove(<thebetweenlands:octine_pickaxe>);
recipes.remove(<thebetweenlands:octine_axe>);
recipes.remove(<thebetweenlands:octine_shovel>);
recipes.remove(<thebetweenlands:octine_sword>);
recipes.remove(<thebetweenlands:octine_shield>);
//recipes.remove(<pyrotech:gold_hammer>);
//recipes.remove(<pyrotech:tongs_gold>);
Stamper.add(<thebetweenlands:octine_pickaxe>, <liquid:octine> * 432, <embers:stamp_flat>, <thebetweenlands:bone_pickaxe>);
Stamper.add(<thebetweenlands:octine_axe>, <liquid:octine> * 432, <embers:stamp_flat>, <thebetweenlands:bone_axe>);
Stamper.add(<thebetweenlands:octine_shovel>, <liquid:octine> * 144, <embers:stamp_flat>, <thebetweenlands:bone_shovel>);
Stamper.add(<thebetweenlands:octine_sword>, <liquid:octine> * 288, <embers:stamp_flat>, <thebetweenlands:bone_sword>);
Stamper.add(<thebetweenlands:octine_shield>, <liquid:octine> * 1008, <embers:stamp_flat>, <thebetweenlands:bone_shield>);
Stamper.add(<roots:iron_knife>, <liquid:octine> * 288, <embers:stamp_flat>, <roots:stone_knife>);
//Stamper.add(<pyrotech:gold_hammer>, <liquid:octine> * 288, <embers:stamp_flat>, <pyrotech:bone_hammer>);
//Stamper.add(<pyrotech:tongs_gold>, <liquid:octine> * 432, <embers:stamp_flat>, <pyrotech:tongs_bone>);
Stamper.add(<thebetweenlands:items_misc:32>, null, <embers:stamp_flat>, <pyrotech:material:25>);



// Bullet mold
//Stamper.add(<immersiveengineering:bullet>, <liquid:copper> * 144, <immersiveengineering:mold:3>);

// Wires mold
//Stamper.add(<alternatingflux:material> * 2, <liquid:constantan> * 144, <immersiveengineering:mold:4>);
//Stamper.add(<immersiveengineering:material:20> * 2, <liquid:copper> * 144, <immersiveengineering:mold:4>);
//Stamper.add(<immersiveengineering:material:21> * 2, <liquid:electrum> * 144, <immersiveengineering:mold:4>);
//Stamper.add(<immersiveengineering:material:22> * 2, <liquid:aluminum> * 144, <immersiveengineering:mold:4>);
//Stamper.add(<immersiveengineering:material:23> * 2, <liquid:steel> * 144, <immersiveengineering:mold:4>);
//
//Stamper.add(<immersiveengineering:material:1> * 2, <liquid:iron> * 144, <immersiveengineering:mold:2>);
//Stamper.add(<immersiveengineering:material:2> * 2, <liquid:steel> * 144, <immersiveengineering:mold:2>);
//Stamper.add(<immersiveengineering:material:3> * 2, <liquid:aluminum> * 144, <immersiveengineering:mold:2>);
//
//Stamper.add(<immersiveengineering:graphite_electrode>, null, <immersiveengineering:mold:2>,<immersiveengineering:material:19> * 4);



//Stamper.remove(<minecraft:iron_nugget>);
//Stamper.add(<thebetweenlands:items_misc:41>, <liquid:syrmorite> * 16, <soot:stamp_nugget>);

//Stamper.remove(<minecraft:gold_nugget>);
//Stamper.add(<thebetweenlands:items_misc:42>, <liquid:octine> * 16, <soot:stamp_nugget>);



HeatCoil.add(<thebetweenlands:frog_legs_cooked>, <thebetweenlands:frog_legs_raw>);
HeatCoil.add(<thebetweenlands:fried_swamp_kelp>, <thebetweenlands:swamp_kelp_item>);
HeatCoil.add(<thebetweenlands:sludge_jello>, <thebetweenlands:sludge_ball>);
HeatCoil.add(<thebetweenlands:olmlette>, <thebetweenlands:items_misc:61>);
HeatCoil.add(<thebetweenlands:barnacle_cooked>, <thebetweenlands:barnacle>);
HeatCoil.add(<thebetweenlands:mire_snail_egg_cooked>, <thebetweenlands:mire_snail_egg>);
HeatCoil.add(<thebetweenlands:snail_flesh_cooked>, <thebetweenlands:snail_flesh_raw>);
HeatCoil.add(<thebetweenlands:anadia_meat_cooked>, <thebetweenlands:anadia_meat_raw>);
HeatCoil.add(<thebetweenlands:olm_egg_cooked>, <thebetweenlands:olm_egg_raw>);
HeatCoil.add(<roots:cooked_pereskia>, <roots:pereskia_bulb>);
HeatCoil.add(<embers:dust_ash>, <pyrotech:rock:7>);
HeatCoil.add(<thebetweenlands:sulfur_torch>, <thebetweenlands:sulfur_torch_extinguished>);
HeatCoil.add(<thebetweenlands:items_misc:6>, <thebetweenlands:swamp_reed_item>);


// ----------- MIXER ----------------------
Mixer.remove(<liquid:iron>);
Mixer.remove(<liquid:iron> * 4);
Mixer.remove(<liquid:gold>);
Mixer.remove(<liquid:gold> * 4);
Mixer.remove(<liquid:antimony>);
Mixer.remove(<liquid:dawnstone> * 8);
Mixer.remove(<liquid:tin>);
Mixer.remove(<liquid:tin> * 4);
Mixer.remove(<liquid:copper>);
Mixer.remove(<liquid:copper> * 4);
Mixer.remove(<liquid:nickel>);
Mixer.remove(<liquid:nickel> * 4);
Mixer.remove(<liquid:aluminum>);
Mixer.remove(<liquid:aluminum> * 4);
Mixer.remove(<liquid:electrum> * 8);
Mixer.remove(<liquid:bronze> * 8);

Mixer.add(<liquid:dawnstone> * 8, [<liquid:syrmorite> * 4, <liquid:octine> * 4]);

Mixer.remove(<liquid:inner_fire> * 4);
Mixer.add(<liquid:inner_fire> * 4, [<liquid:fluid_booze_hopale_extended> * 4, <liquid:octine> * 1]);


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


EmberGeneration.removeCatalysisFuel(<minecraft:redstone>);
EmberGeneration.removeCatalysisFuel(<minecraft:gunpowder>);
EmberGeneration.removeCatalysisFuel(<minecraft:glowstone_dust>);

EmberGeneration.addCatalysisFuel(<betweenlandsredstone:scabyst_dust>, 2);
EmberGeneration.addCatalysisFuel(<thebetweenlands:items_misc:44>, 3);
EmberGeneration.addCatalysisFuel(<thebetweenlands:wisp>, 4);


// ----------- BORE ----------------------
var boresetTCCrystals = EmberBoreFixed.create([20], ["thebetweenlands:swamplands_clearing"]);

boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}) * 1).weight(50));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}) * 1).weight(50));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}) * 1).weight(50));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}) * 1).weight(50));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}) * 1).weight(50));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}) * 1).weight(50));

boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}) * 2).weight(35));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}) * 2).weight(35));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}) * 2).weight(35));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}) * 2).weight(35));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}) * 2).weight(35));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}) * 2).weight(35));

boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}) * 3).weight(15));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}) * 3).weight(15));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}) * 3).weight(15));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}) * 3).weight(15));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}) * 3).weight(15));
boresetTCCrystals.addOutput((<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}) * 3).weight(15));



scripts.utils.addInfoTooltip(<thebetweenlands:items_misc:45>, "Can be used as Embers fuel");
scripts.utils.addInfoTooltip(<embers:ember_bore>, "Has to be placed in the pitstone layers");


<embers:plate_iron>.displayName = "Wrought Iron Plate";
<embers:plate_gold>.displayName = "Octine Plate";
<embers:aspectus_iron>.displayName = "Syrmorite Aspectus";
<embers:aspectus_copper>.displayName = "Octine Aspectus";
//<embers:seed_iron>.displayName = "Syrmorite Crystal Seed";
//<embers:seed_gold>.displayName = "Octine Crystal Seed";
<embers:copper_cell:*>.displayName = "Octine Cell";
<embers:charger>.displayName = "Octine Charger";
<embers:seed_syrmorite>.displayName = "Syrmorite Crystal Seed";
<embers:seed_octine>.displayName = "Octine Crystal Seed";
<embers:seed_iron>.displayName = "Wrought Iron Crystal Seed";