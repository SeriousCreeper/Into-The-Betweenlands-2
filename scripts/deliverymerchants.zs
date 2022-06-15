import mods.Delivery.Store;


val storeDefault = "_store";
val storeBuilder = "Builder";
val storeFisher = "Fisher";


val cur_1 = <immersiveruins:scrap2>; // value = 1
val cur_2 = <immersiveruins:scrap>; // value = 64
val cur_3 = <immersiveruins:scrap3>; // value = 256



function addExchangeStore() {
	var cur_1 = <immersiveruins:scrap>; // value = 1
	var cur_2 = <immersiveruins:scrap2>; // value = 64
	var cur_3 = <immersiveruins:scrap3>; // value = 256
	
	Store.setStoreIcon("Exchange", cur_1);

	Store.addTrade(cur_1 * 64, "Exchange", cur_2);
	Store.addTrade(cur_1 * 256, "Exchange", cur_3);
	Store.addTrade(cur_2, "Exchange", cur_1 * 64);
	Store.addTrade(cur_2 * 4, "Exchange", cur_3);
	Store.addTrade(cur_3, "Exchange", cur_2 * 4);
}


// rarities bl
Store.setProfile("black_f");
Store.setStoreIcon("_store", <thebetweenlands:life_crystal_fragment>);

Store.addTrade(<thebetweenlands:life_crystal_fragment>, cur_2 * 2, cur_3 * 1);
Store.addTrade(<thebetweenlands:bark_amulet>, cur_3 * 1);
Store.addTrade(<livingchest:eye_bone>, cur_1 * 64);
Store.addTrade(<thebetweenlands:aqua_middle_gem_ore>, cur_1 * 32);
Store.addTrade(<thebetweenlands:crimson_middle_gem_ore>, cur_1 * 32);
Store.addTrade(<thebetweenlands:green_middle_gem_ore>, cur_1 * 32);
Store.addTrade(<thebetweenlands:rock_snot_pearl>, cur_1 * 8);
Store.addTrade(<thebetweenlands:aspectrus_seeds>, cur_1 * 32);
Store.addTrade(<thebetweenlands:bone_wayfinder>, cur_1 * 64);
Store.addTrade(<simpledifficulty:dragon_canteen>.withTag({Doses: 0, CanteenType: 3}), cur_3 * 4);

Store.addTrade("dungeon_sludgeon", <thebetweenlands:rune_door_key>, cur_1 * 64);
Store.addTrade("dungeon_sludgeon", <pogosticks:pogo_stick>, cur_3);

addExchangeStore();


// uncraftables
Store.setProfile("blue_f");
Store.setStoreIcon("_store", <thebetweenlands:root_pod>);

Store.addTrade(<thebetweenlands:root_pod>, cur_1 * 8);
Store.addTrade(<thebetweenlands:stalactite>, cur_1 * 2);
Store.addTrade(<thebetweenlands:life_crystal_stalactite>, cur_1 * 4);
Store.addTrade(<thebetweenlands:hollow_log>, cur_1 * 4);

Store.addTrade("dungeon_sludgeon", <thebetweenlands:mud_brick_alcove>, cur_1 * 16);
Store.addTrade("dungeon_sludgeon", <thebetweenlands:loot_urn>, cur_1 * 16);
Store.addTrade("dungeon_sludgeon", <thebetweenlands:loot_urn:4>, cur_1 * 16);
Store.addTrade("dungeon_sludgeon", <thebetweenlands:loot_urn:8>, cur_1 * 16);
Store.addTrade("dungeon_sludgeon", <thebetweenlands:mud_brick_spike_trap>, cur_1 * 64);
Store.addTrade("dungeon_sludgeon", <thebetweenlands:mud_tiles_spike_trap>, cur_1 * 64);
Store.addTrade("dungeon_sludgeon", <thebetweenlands:mud_tower_brazier>, cur_1 * 32);

Store.addTrade("dungeon_wight_fortress", <thebetweenlands:spike_trap>, cur_1 * 64);
Store.addTrade("dungeon_wight_fortress", <thebetweenlands:betweenstone_bricks_mirage>, cur_1 * 16);
Store.addTrade("dungeon_wight_fortress", <thebetweenlands:possessed_block>, cur_1 * 32);

Store.addTrade("dungeon_cragrock", <thebetweenlands:glowing_betweenstone_tile>, cur_1 * 16);
Store.addTrade("dungeon_cragrock", <thebetweenlands:glowing_smooth_cragrock>, cur_1 * 16);
Store.addTrade("dungeon_cragrock", <thebetweenlands:inactive_glowing_smooth_cragrock>, cur_1 * 16);

addExchangeStore();


// discs
Store.setProfile("brown_m");
Store.setStoreIcon("_store", <thebetweenlands:hag_dance>);

Store.addTrade(<thebetweenlands:astatos>, cur_2 * 32);
Store.addTrade(<thebetweenlands:between_you_and_me>, cur_2 * 32);
Store.addTrade(<thebetweenlands:christmas_on_the_marsh>, cur_2 * 32);
Store.addTrade(<thebetweenlands:the_explorer>, cur_2 * 32);
Store.addTrade(<thebetweenlands:hag_dance>, cur_2 * 32);
Store.addTrade(<thebetweenlands:lonely_fire>, cur_2 * 32);
Store.addTrade(<thebetweenlands:mysterious_record>, cur_2 * 32);
Store.addTrade(<thebetweenlands:ancient>, cur_2 * 32);
Store.addTrade(<thebetweenlands:beneath_a_green_sky>, cur_2 * 32);
Store.addTrade(<thebetweenlands:onwards>, cur_2 * 32);
Store.addTrade(<thebetweenlands:stuck_in_the_mud>, cur_2 * 32);
Store.addTrade(<thebetweenlands:wandering_wisps>, cur_2 * 32);
Store.addTrade(<thebetweenlands:waterlogged>, cur_2 * 32);

addExchangeStore();


// ores
Store.setProfile("green_f");
Store.setStoreIcon("_store", <thebetweenlands:sulfur_ore>);

Store.addTrade(<thebetweenlands:sulfur_ore>, cur_1 * 4);
Store.addTrade(<thebetweenlands:slimy_bone_ore>, cur_1 * 6);
Store.addTrade(<thebetweenlands:syrmorite_ore>, cur_1 * 8);
Store.addTrade(<thebetweenlands:octine_ore>, cur_1 * 8);
Store.addTrade(<thebetweenlands:scabyst_ore>, cur_1 * 12);
Store.addTrade(<thebetweenlands:valonite_ore>, cur_1 * 32);

Store.addTrade("knowledge_of_technology", <betweenores:nickel_ore>, cur_1 * 8);
Store.addTrade("knowledge_of_technology", <betweenores:lead_ore>, cur_1 * 8);
Store.addTrade("knowledge_of_technology", <betweenores:silver_ore>, cur_1 * 8);
Store.addTrade("knowledge_of_technology", <thaumcraft:ore_amber>, cur_1 * 12);
Store.addTrade("knowledge_of_technology", <thaumcraft:ore_cinnabar>, cur_1 * 12);

addExchangeStore();


// fisherman
Store.setProfile("green_m");
Store.setStoreIcon("_store", <thebetweenlands:items_misc:56>);

Store.addTrade(<thebetweenlands:items_misc:56>, cur_1 * 6);
Store.addTrade(<thebetweenlands:anadia_meat_raw>, cur_1 * 4);
Store.addTrade(<thebetweenlands:items_misc:51>, cur_1 * 16);
Store.addTrade(<thebetweenlands:items_misc:52>, cur_1 * 16);
Store.addTrade(<thebetweenlands:items_misc:53>, cur_1 * 16);
Store.addTrade(<thebetweenlands:items_misc:54>, cur_1 * 16);
Store.addTrade(<thebetweenlands:items_misc:55>, cur_1 * 16);
Store.addTrade(<thebetweenlands:items_misc:57>, cur_1 * 16);
Store.addTrade(<thebetweenlands:aa_upgrade_electric>, cur_3);
Store.addTrade(<thebetweenlands:aa_upgrade_glide>, cur_3);
Store.addTrade(<thebetweenlands:aa_upgrade_leap>, cur_3);
Store.addTrade(<thebetweenlands:aa_upgrade_urchin>, cur_3);
Store.addTrade(<thebetweenlands:aa_upgrade_vortex>, cur_3);

addExchangeStore();


