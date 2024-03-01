
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.vanilla.loot.LootFunction;
import loottweaker.vanilla.loot.LootCondition;
import crafttweaker.entity.IEntityDefinition;

val swamp_hag = LootTweaker.getTable("thebetweenlands:entities/swamp_hag");
val swamp_hag_main = swamp_hag.getPool("swamp_hag");
swamp_hag_main.addItemEntryHelper(<thaumcraft:brain>, 1, 1, [Functions.setCount(0, 1)], []);


val mimic = LootTweaker.getTable("mod_lavacow:entities/mimic");
mimic.clear();
val mimic_pool = mimic.addPool("main", 1, 1, 0, 0);
mimic_pool.addLootTableEntry("thebetweenlands:loot/common_chest_loot", 1, 0);

val sludge_menace = LootTweaker.getTable("thebetweenlands:entities/sludge_menace");
val sludge_menace_ring = sludge_menace.getPool("ring");
val sludge_menace_amulet = sludge_menace.getPool("amulet_slot");

/*
sludge_menace_ring.removeEntry("thebetweenlands:ring_of_dispersion");
sludge_menace_ring.addItemEntry(<contenttweaker:boss_item_3>, 1);
sludge_menace_amulet.removeEntry("thebetweenlands:amulet_slot");
*/


function replaceLoot(tableName as string, poolName as string, entryName as string, itemToAdd as IItemStack, weight as int, quality as int, minItem as int, maxItem as int) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.getPool(poolName);
	pool.removeEntry(entryName);
	pool.addItemEntryHelper(itemToAdd, weight, quality, [Functions.setCount(minItem, maxItem)], []);
}

function addLoot(tableName as string, poolName as string, entryName as string, itemToAdd as IItemStack, weight as int, quality as int, minItem as int, maxItem as int) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.getPool(poolName);
	pool.addItemEntryHelper(itemToAdd, weight, quality, [Functions.setCount(minItem, maxItem)], []);
}

function replaceLootComplex(tableName as string, poolName as string, entryName as string, itemToAdd as IItemStack, weight as int, quality as int, funcs as LootFunction[], conditions as LootCondition[]) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.getPool(poolName);
	pool.removeEntry(entryName);
	pool.addItemEntryHelper(itemToAdd, weight, quality, funcs, conditions);
}

function addLootComplex(tableName as string, poolName as string, entryName as string, itemToAdd as IItemStack, weight as int, quality as int, funcs as LootFunction[], conditions as LootCondition[]) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.getPool(poolName);
	pool.addItemEntryHelper(itemToAdd, weight, quality, funcs, conditions);
}


replaceLoot("thebetweenlands:loot/cragrock_tower_chest", "uncommon_loot", "syrmorite_ingot", <thebetweenlands:syrmorite_ore>, 10, 0, 1, 2);
replaceLoot("thebetweenlands:loot/cragrock_tower_chest", "uncommon_loot", "octine_ingot", <thebetweenlands:octine_ore>, 10, 0, 1, 2);

replaceLoot("thebetweenlands:loot/cragrock_tower_chest", "common_loot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 15, 0, 4, 10);
replaceLoot("thebetweenlands:loot/cragrock_tower_chest", "common_loot", "octine_nugget", <pyrotech:generated_slag_octine>, 15, 0, 4, 10);

replaceLoot("thebetweenlands:loot/cave_pot", "cave_pot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 11, 0, 1, 4);
replaceLoot("thebetweenlands:loot/cave_pot", "cave_pot", "octine_nugget", <pyrotech:generated_slag_octine>, 11, 0, 1, 4);

replaceLoot("thebetweenlands:loot/chiromaw_nest_scattered_loot", "chiromaw_nest_scattered_loot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 5, 0, 1, 1);
replaceLoot("thebetweenlands:loot/chiromaw_nest_scattered_loot", "chiromaw_nest_scattered_loot", "octine_nugget", <pyrotech:generated_slag_octine>, 5, 0, 1, 1);

replaceLoot("thebetweenlands:loot/common_chest_loot", "common_chest", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 25, 0, 4, 16);
replaceLoot("thebetweenlands:loot/common_chest_loot", "common_chest", "octine_nugget", <pyrotech:generated_slag_octine>, 25, 0, 4, 16);
replaceLoot("thebetweenlands:loot/common_chest_loot", "common_chest", "syrmorite_ingot", <thebetweenlands:syrmorite_ore>, 15, 0, 1, 2);
replaceLoot("thebetweenlands:loot/common_chest_loot", "common_chest", "thebetweenlands:octine_ingot", <thebetweenlands:octine_ore>, 15, 0, 1, 2);

replaceLoot("thebetweenlands:loot/common_pot_loot", "common_pot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 11, 0, 2, 8);
replaceLoot("thebetweenlands:loot/common_pot_loot", "common_pot", "octine_nugget", <pyrotech:generated_slag_octine>, 11, 0, 2, 8);

replaceLoot("thebetweenlands:loot/cragrock_tower_pot", "pot_loot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 20, 0, 7, 16);
replaceLoot("thebetweenlands:loot/cragrock_tower_pot", "pot_loot", "octine_nugget", <pyrotech:generated_slag_octine>, 20, 0, 7, 16);

replaceLoot("thebetweenlands:loot/dungeon_chest_loot", "dungeon_chest", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 20, 0, 4, 16);
replaceLoot("thebetweenlands:loot/dungeon_chest_loot", "dungeon_chest", "octine_nugget", <pyrotech:generated_slag_octine>, 20, 0, 4, 16);

replaceLoot("thebetweenlands:loot/dungeon_pot_loot", "dungeon_pot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 28, 0, 4, 16);
replaceLoot("thebetweenlands:loot/dungeon_pot_loot", "dungeon_pot", "octine_nugget", <pyrotech:generated_slag_octine>, 28, 0, 4, 16);

replaceLoot("thebetweenlands:loot/idol_heads_chest", "idol_heads_chest", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 25, 0, 4, 16);
replaceLoot("thebetweenlands:loot/idol_heads_chest", "idol_heads_chest", "octine_nugget", <pyrotech:generated_slag_octine>, 25, 0, 4, 16);
replaceLoot("thebetweenlands:loot/idol_heads_chest", "idol_heads_chest", "syrmorite_ingot", <thebetweenlands:syrmorite_ore>, 15, 0, 1, 2);
replaceLoot("thebetweenlands:loot/idol_heads_chest", "idol_heads_chest", "thebetweenlands:octine_ingot", <thebetweenlands:octine_ore>, 15, 0, 1, 2);

replaceLoot("thebetweenlands:loot/marsh_ruins_pot", "marsh_ruins_pot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 12, 0, 2, 8);
replaceLoot("thebetweenlands:loot/marsh_ruins_pot", "marsh_ruins_pot", "octine_nugget", <pyrotech:generated_slag_octine>, 12, 0, 2, 8);

replaceLoot("thebetweenlands:loot/sludge_plains_ruins_urn", "sludge_plains_ruins_urn", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 12, 0, 2, 8);
replaceLoot("thebetweenlands:loot/sludge_plains_ruins_urn", "sludge_plains_ruins_urn", "octine_nugget", <pyrotech:generated_slag_octine>, 12, 0, 2, 8);

replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_barrishee_chest", "common_loot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 15, 0, 4, 8);
replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_barrishee_chest", "common_loot", "octine_nugget", <pyrotech:generated_slag_octine>, 15, 0, 4, 8);
replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_barrishee_chest", "uncommon_loot", "syrmorite_ingot", <thebetweenlands:syrmorite_ore>, 10, 0, 1, 2);
replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_barrishee_chest", "uncommon_loot", "octine_ingot", <thebetweenlands:octine_ore>, 10, 0, 1, 2);

replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_chest", "common_loot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 15, 0, 4, 8);
replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_chest", "common_loot", "octine_nugget", <pyrotech:generated_slag_octine>, 15, 0, 4, 8);
replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_chest", "uncommon_loot", "syrmorite_ingot", <thebetweenlands:syrmorite_ore>, 10, 0, 1, 2);
replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_chest", "uncommon_loot", "octine_ingot", <thebetweenlands:octine_ore>, 10, 0, 1, 2);

replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_crypt_urn", "urn_loot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 20, 0, 4, 10);
replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_crypt_urn", "urn_loot", "octine_nugget", <pyrotech:generated_slag_octine>, 20, 0, 4, 10);

replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_urn", "urn_loot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 20, 0, 4, 10);
replaceLoot("thebetweenlands:loot/sludge_worm_dungeon_urn", "urn_loot", "octine_nugget", <pyrotech:generated_slag_octine>, 20, 0, 4, 10);

replaceLoot("thebetweenlands:loot/spawner_chest", "spawner_chest", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 25, 0, 4, 16);
replaceLoot("thebetweenlands:loot/spawner_chest", "spawner_chest", "octine_nugget", <pyrotech:generated_slag_octine>, 25, 0, 4, 16);
replaceLoot("thebetweenlands:loot/spawner_chest", "spawner_chest", "syrmorite_ingot", <thebetweenlands:syrmorite_ore>, 15, 0, 1, 2);
replaceLoot("thebetweenlands:loot/spawner_chest", "spawner_chest", "thebetweenlands:octine_ingot", <thebetweenlands:octine_ore>, 15, 0, 1, 2);

replaceLoot("thebetweenlands:loot/tar_pool_pot", "tar_pool_pot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 28, 0, 4, 16);
replaceLoot("thebetweenlands:loot/tar_pool_pot", "tar_pool_pot", "octine_nugget", <pyrotech:generated_slag_octine>, 28, 0, 4, 16);

replaceLoot("thebetweenlands:loot/underground_ruins_pot", "underground_ruins_pot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 12, 0, 2, 8);
replaceLoot("thebetweenlands:loot/underground_ruins_pot", "underground_ruins_pot", "octine_nugget", <pyrotech:generated_slag_octine>, 12, 0, 2, 8);

replaceLoot("thebetweenlands:loot/underwater_ruins_pot", "underwater_ruins_pot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 1, 0, 2, 8);

replaceLoot("thebetweenlands:loot/wight_fortress_chest", "common_loot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 15, 0, 4, 8);
replaceLoot("thebetweenlands:loot/wight_fortress_chest", "common_loot", "octine_nugget", <pyrotech:generated_slag_octine>, 15, 0, 4, 8);
replaceLoot("thebetweenlands:loot/wight_fortress_chest", "uncommon_loot", "syrmorite_ingot", <thebetweenlands:syrmorite_ore>, 10, 0, 1, 2);
replaceLoot("thebetweenlands:loot/wight_fortress_chest", "uncommon_loot", "octine_ingot", <thebetweenlands:octine_ore>, 10, 0, 1, 2);

replaceLoot("thebetweenlands:loot/wight_fortress_pot", "pot_loot", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 20, 0, 7, 16);
replaceLoot("thebetweenlands:loot/wight_fortress_pot", "pot_loot", "octine_nugget", <pyrotech:generated_slag_octine>, 20, 0, 7, 16);

replaceLoot("thebetweenlands:animator/scroll", "scroll", "syrmorite_ingot", <thebetweenlands:syrmorite_ore>, 20, 0, 5, 12);
replaceLoot("thebetweenlands:animator/scroll", "scroll", "thebetweenlands:octine_ingot", <thebetweenlands:octine_ore>, 20, 0, 5, 12);

replaceLoot("thaumcraft:cultist", "main", "minecraft:gold_nugget", <thebetweenlands:items_misc:42>, 1, 0, 0, 2);



val table = LootTweaker.getTable("thebetweenlands:entities/anadia_treasure");
val pool = table.getPool("anadia_body");

replaceLootComplex("thebetweenlands:entities/anadia_treasure", "anadia_body", "syrmorite_nuggets_0", <pyrotech:generated_slag_syrmorite>, 3, 0, [Functions.parse({
                            "function": "thebetweenlands:set_count_from_anadia",
                            "size_start": 0.125,
                            "size_end": 0.95,
                            "min_count": 2,
                            "max_count": 4
                        })], [Conditions.parse({
                            "condition": "entity_properties",
                            "entity": "this",
                            "properties": {
                                "thebetweenlands:anadia_body_type": 0
                            }
                        })]);

replaceLootComplex("thebetweenlands:entities/anadia_treasure", "anadia_body", "syrmorite_ingot_1", <pyrotech:generated_pile_slag_syrmorite>, 2, 0, [Functions.parse({
				              "size_start": 0.125,
				              "size_end": 0.95,
				              "min_count": 1,
				              "max_count": 1,
				              "function": "thebetweenlands:set_count_from_anadia"
				            })], [Conditions.parse({
				              "properties": {
				                "thebetweenlands:anadia_body_type": 2
				              },
				              "entity": "this",
				              "condition": "minecraft:entity_properties"
				            })]);

replaceLootComplex("thebetweenlands:entities/anadia_treasure", "anadia_body", "syrmorite_ingot_2", <pyrotech:generated_pile_slag_syrmorite>, 3, 0, [Functions.parse({
				              "size_start": 0.125,
				              "size_end": 0.95,
				              "min_count": 1,
				              "max_count": 1,
				              "function": "thebetweenlands:set_count_from_anadia"
				            })], [Conditions.parse({
				              "properties": {
				                "thebetweenlands:anadia_body_type": 1
				              },
				              "entity": "this",
				              "condition": "minecraft:entity_properties"
				            })]);

replaceLootComplex("thebetweenlands:entities/crypt_crawler", "misc_drops", "syrmorite_nugget", <pyrotech:generated_slag_syrmorite>, 15, 0, [], []);
replaceLootComplex("thebetweenlands:entities/crypt_crawler", "misc_drops", "octine_nugget", <pyrotech:generated_slag_octine>, 13, 0, [], []);
replaceLootComplex("thebetweenlands:entities/emberling", "octine_nugget", "thebetweenlands:items_misc", <pyrotech:generated_slag_octine>, 1, 0, [Functions.parse({
              "count": {
                "min": 1.0,
                "max": 3.0
              },
              "function": "minecraft:looting_enchant"
            })], []);




function removeLootEntry(tableID as string, poolID as string, entryID as string) {
	val table = LootTweaker.getTable(tableID);
	val pool = table.getPool(poolID);
	pool.removeEntry(entryID);
}


// Pedestals from Thaumic Augmentation
removeLootEntry("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "minecraft:ender_pearl");
removeLootEntry("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "minecraft:gold_ingot");
removeLootEntry("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "minecraft:diamond");
removeLootEntry("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "minecraft:emerald");
removeLootEntry("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "minecraft:experience_bottle");
removeLootEntry("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "minecraft:glowstone_dust");

removeLootEntry("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "minecraft:ender_pearl");
removeLootEntry("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "minecraft:nether_star");
removeLootEntry("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "golden_apple");
removeLootEntry("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "enchanted_golden_apple");
removeLootEntry("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "minecraft:gold_ingot");
removeLootEntry("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "minecraft:diamond");
removeLootEntry("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "minecraft:emerald");
removeLootEntry("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "minecraft:experience_bottle");
removeLootEntry("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "minecraft:glowstone_dust");

removeLootEntry("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "minecraft:ender_pearl");
removeLootEntry("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "minecraft:name_tag");
removeLootEntry("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "minecraft:nether_star");
removeLootEntry("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "minecraft:golden_apple");
removeLootEntry("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "minecraft:gold_ingot");
removeLootEntry("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "minecraft:diamond");
removeLootEntry("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "minecraft:emerald");
removeLootEntry("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "minecraft:experience_bottle");
removeLootEntry("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "minecraft:glowstone_dust");

removeLootEntry("mod_lavacow:entities/swarmer", "main", "mod_lavacow:zombiepiranha_item");
removeLootEntry("mod_lavacow:entities/swarmer", "tooth", "mod_lavacow:sharptooth");

removeLootEntry("minecraft:entities/zombie", "main", "minecraft:rotten_flesh");
removeLootEntry("minecraft:entities/zombie", "pool1", "minecraft:iron_ingot");
removeLootEntry("minecraft:entities/zombie", "pool1", "minecraft:carrot");
removeLootEntry("minecraft:entities/zombie", "pool1", "minecraft:potato");

removeLootEntry("minecraft:entities/skeleton", "main", "minecraft:arrow");
removeLootEntry("minecraft:entities/skeleton", "pool1", "minecraft:bone");

removeLootEntry("minecraft:entities/witch", "main", "minecraft:glowstone_dust");
removeLootEntry("minecraft:entities/witch", "main", "minecraft:sugar");
removeLootEntry("minecraft:entities/witch", "main", "minecraft:redstone");
removeLootEntry("minecraft:entities/witch", "main", "minecraft:spider_eye");
removeLootEntry("minecraft:entities/witch", "main", "minecraft:glass_bottle");
removeLootEntry("minecraft:entities/witch", "main", "minecraft:gunpowder");
removeLootEntry("minecraft:entities/witch", "main", "minecraft:stick");


addLootComplex("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "ancient_debris", <thebetweenlands:items_misc:47>, 15, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "valonite_shard", <thebetweenlands:items_misc:19>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "octine_ingot", <thebetweenlands:octine_ingot>, 15, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "rocksnot_pearl", <thebetweenlands:rock_snot_pearl>, 5, 0, [], []);
//addLootComplex("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "bluedust_block", <coloredredstone:colored_redstone_block:12>, 5, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "crimson_middle_gem", <thebetweenlands:crimson_middle_gem>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "aqua_middle_gem", <thebetweenlands:aqua_middle_gem>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_common", "pedestal_common", "green_middle_gem", <thebetweenlands:green_middle_gem>, 10, 0, [], []);

addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "ancient_debris", <thebetweenlands:items_misc:47>, 15, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "valonite_shard", <thebetweenlands:items_misc:19>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "octine_ingot", <thebetweenlands:octine_ingot>, 15, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "rocksnot_pearl", <thebetweenlands:rock_snot_pearl>, 5, 0, [], []);
//addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "bluedust_block", <coloredredstone:colored_redstone_block:12>, 5, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "crimson_middle_gem", <thebetweenlands:crimson_middle_gem>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "aqua_middle_gem", <thebetweenlands:aqua_middle_gem>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "green_middle_gem", <thebetweenlands:green_middle_gem>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "valonite_block", <thebetweenlands:valonite_block>, 3, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "octine_block", <thebetweenlands:octine_block>, 4, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "syrmorite_block", <thebetweenlands:syrmorite_block>, 5, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "spirit_fruit", <thebetweenlands:spirit_fruit>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_rare", "pedestal_rare", "loot_scroll", <thebetweenlands:items_misc:40>, 10, 0, [], []);

addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "ancient_debris", <thebetweenlands:items_misc:47>, 15, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "valonite_shard", <thebetweenlands:items_misc:19>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "octine_ingot", <thebetweenlands:octine_ingot>, 15, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "rocksnot_pearl", <thebetweenlands:rock_snot_pearl>, 5, 0, [], []);
//addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "bluedust_block", <coloredredstone:colored_redstone_block:12>, 5, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "crimson_middle_gem", <thebetweenlands:crimson_middle_gem>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "aqua_middle_gem", <thebetweenlands:aqua_middle_gem>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "green_middle_gem", <thebetweenlands:green_middle_gem>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "loot_scroll", <thebetweenlands:items_misc:40>, 5, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "storage_raw_quartz", <arcanearchives:storage_raw_quartz>, 10, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "lurker_skin_pouch_big", <thebetweenlands:lurker_skin_pouch:3>, 5, 0, [], []);
addLootComplex("thaumicaugmentation:generic/pedestal_uncommon", "pedestal_uncommon", "lurker_skin_pouch_small", <thebetweenlands:lurker_skin_pouch:0>, 7, 0, [], []);



// Loot pots from Thaumic Augmentation
removeLootEntry("thaumicaugmentation:block/loot_common", "loot_common", "nugget_gold");
removeLootEntry("thaumicaugmentation:block/loot_common", "loot_common", "minecraft:ender_pearl");
removeLootEntry("thaumicaugmentation:block/loot_common", "loot_common", "minecraft:name_tag");
removeLootEntry("thaumicaugmentation:block/loot_common", "loot_common", "minecraft:gold_ingot");
removeLootEntry("thaumicaugmentation:block/loot_common", "loot_common", "minecraft:diamond");
removeLootEntry("thaumicaugmentation:block/loot_common", "loot_common", "minecraft:emerald");
removeLootEntry("thaumicaugmentation:block/loot_common", "loot_common", "minecraft:experience_bottle");
removeLootEntry("thaumicaugmentation:block/loot_common", "loot_common", "minecraft:glowstone_dust");

removeLootEntry("thaumicaugmentation:block/loot_rare", "loot_rare", "nugget_gold");
removeLootEntry("thaumicaugmentation:block/loot_rare", "loot_rare", "minecraft:ender_pearl");
removeLootEntry("thaumicaugmentation:block/loot_rare", "loot_rare", "minecraft:nether_star");
removeLootEntry("thaumicaugmentation:block/loot_rare", "loot_rare", "enchanted_golden_apple");
removeLootEntry("thaumicaugmentation:block/loot_rare", "loot_rare", "minecraft:gold_ingot");
removeLootEntry("thaumicaugmentation:block/loot_rare", "loot_rare", "minecraft:diamond");
removeLootEntry("thaumicaugmentation:block/loot_rare", "loot_rare", "minecraft:emerald");
removeLootEntry("thaumicaugmentation:block/loot_rare", "loot_rare", "minecraft:experience_bottle");
removeLootEntry("thaumicaugmentation:block/loot_rare", "loot_rare", "minecraft:glowstone_dust");

removeLootEntry("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "nugget_gold");
removeLootEntry("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "minecraft:ender_pearl");
removeLootEntry("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "minecraft:name_tag");
removeLootEntry("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "minecraft:nether_star");
removeLootEntry("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "minecraft:golden_apple");
removeLootEntry("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "minecraft:gold_ingot");
removeLootEntry("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "minecraft:diamond");
removeLootEntry("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "minecraft:emerald");
removeLootEntry("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "minecraft:experience_bottle");
removeLootEntry("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "minecraft:glowstone_dust");

addLoot("thaumicaugmentation:block/loot_common", "loot_common", "octine_nugget", <thebetweenlands:items_misc:42>, 350, 0, 1, 2);
addLoot("thaumicaugmentation:block/loot_common", "loot_common", "ancient_debris", <thebetweenlands:items_misc:47>, 50, 0, 1, 5);
addLoot("thaumicaugmentation:block/loot_common", "loot_common", "valonite_shard", <thebetweenlands:items_misc:19>, 10, 0, 1, 3);
addLoot("thaumicaugmentation:block/loot_common", "loot_common", "dentrothyst_shard_green", <thebetweenlands:dentrothyst_shard_green>, 10, 0, 1, 10);
addLoot("thaumicaugmentation:block/loot_common", "loot_common", "dentrothyst_shard_orange", <thebetweenlands:dentrothyst_shard_orange>, 10, 0, 1, 5);
addLoot("thaumicaugmentation:block/loot_common", "loot_common", "octine_ingot", <thebetweenlands:octine_ingot>, 15, 0, 1, 2);
addLoot("thaumicaugmentation:block/loot_common", "loot_common", "rocksnot_pearl", <thebetweenlands:rock_snot_pearl>, 5, 0, 1, 3);
//addLoot("thaumicaugmentation:block/loot_common", "loot_common", "blue_dust", <coloredredstone:colored_redstone_dust:12>, 5, 0, 4, 10);

addLoot("thaumicaugmentation:block/loot_rare", "loot_rare", "ancient_debris", <thebetweenlands:items_misc:47>, 50, 0, 1, 5);
addLoot("thaumicaugmentation:block/loot_rare", "loot_rare", "valonite_shard", <thebetweenlands:items_misc:19>, 10, 0, 1, 3);
addLoot("thaumicaugmentation:block/loot_rare", "loot_rare", "dentrothyst_shard_green", <thebetweenlands:dentrothyst_shard_green>, 10, 0, 1, 10);
addLoot("thaumicaugmentation:block/loot_rare", "loot_rare", "dentrothyst_shard_orange", <thebetweenlands:dentrothyst_shard_orange>, 10, 0, 1, 5);
addLoot("thaumicaugmentation:block/loot_rare", "loot_rare", "octine_ingot", <thebetweenlands:octine_ingot>, 15, 0, 1, 2);
addLoot("thaumicaugmentation:block/loot_rare", "loot_rare", "rocksnot_pearl", <thebetweenlands:rock_snot_pearl>, 5, 0, 1, 3);
addLoot("thaumicaugmentation:block/loot_rare", "loot_rare", "spirit_fruit", <thebetweenlands:spirit_fruit>, 15, 0, 1, 1);
addLoot("thaumicaugmentation:block/loot_rare", "loot_rare", "sapling_spirit_tree", <thebetweenlands:sapling_spirit_tree>, 10, 0, 1, 3);

addLoot("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "octine_nugget", <thebetweenlands:items_misc:42>, 250, 0, 1, 2);
addLoot("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "ancient_debris", <thebetweenlands:items_misc:47>, 50, 0, 1, 5);
addLoot("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "valonite_shard", <thebetweenlands:items_misc:19>, 10, 0, 1, 1);
addLoot("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "octine_ingot", <thebetweenlands:octine_ingot>, 15, 0, 1, 2);
addLoot("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "rocksnot_pearl", <thebetweenlands:rock_snot_pearl>, 5, 0, 1, 3);
//addLoot("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "blue_dust", <coloredredstone:colored_redstone_dust:12>, 5, 0, 4, 10);
addLoot("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "spirit_fruit", <thebetweenlands:spirit_fruit>, 15, 0, 1, 1);
addLoot("thaumicaugmentation:block/loot_uncommon", "loot_uncommon", "sapling_spirit_tree", <thebetweenlands:sapling_spirit_tree>, 10, 0, 1, 3);



val ancientArmorChest = LootTweaker.getTable("bladditions:loot/ancient_armor_chest");
ancientArmorChest.addPool("helmet", 1, 1, 0, 0);
ancientArmorChest.addPool("chestplate", 1, 1, 0, 0);
ancientArmorChest.addPool("leggings", 1, 1, 0, 0);
ancientArmorChest.addPool("boots", 1, 1, 0, 0);

addLoot("bladditions:loot/ancient_armor_chest", "helmet", "broken_ancient_armor_helmet", <contenttweaker:broken_ancient_armor_helmet_0>, 1, 0, 1, 1);
addLoot("bladditions:loot/ancient_armor_chest", "chestplate", "broken_ancient_armor_chestplate", <contenttweaker:broken_ancient_armor_chestplate_0>, 1, 0, 1, 1);
addLoot("bladditions:loot/ancient_armor_chest", "leggings", "broken_ancient_armor_leggings", <contenttweaker:broken_ancient_armor_leggings_0>, 1, 0, 1, 1);
addLoot("bladditions:loot/ancient_armor_chest", "boots", "broken_ancient_armor_boots", <contenttweaker:broken_ancient_armor_boots_0>, 1, 0, 1, 1);

LootTweaker.getTable("thebetweenlands:entities/spirit_tree_face_large").addPool("tablet", 1, 1, 0, 0);
LootTweaker.getTable("thebetweenlands:entities/dreadful_peat_mummy").addPool("tablet", 1, 1, 0, 0);

addLoot("thebetweenlands:entities/spirit_tree_face_large", "tablet", "tablet", <contenttweaker:book_stonetablet_top>, 1, 0, 1, 1);
addLoot("thebetweenlands:entities/dreadful_peat_mummy", "tablet", "tablet", <contenttweaker:book_stonetablet_bottom>, 1, 0, 1, 1);


//removeLootEntry("thebetweenlands:entities/infestation", "infestation", "thebetweenlands:pheromone_thorax");
removeLootEntry("minecraft:entities/slime", "main", "minecraft:slime_ball");
removeLootEntry("futuremc:entities/tropical_fish", "futuremc:tropical_fish", "minecraft:fish");
removeLootEntry("futuremc:entities/cod", "futuremc:cod", "minecraft:fish");
removeLootEntry("futuremc:entities/salmon", "futuremc:salmon", "minecraft:fish");

<entity:thebetweenlands:termite>.addPlayerOnlyDrop(<thebetweenlands:dentrothyst_shard_green>, 1, 1, 0.1);
<entity:thebetweenlands:termite>.addPlayerOnlyDrop(<thebetweenlands:dentrothyst_shard_orange>, 1, 1, 0.02);

<entity:thebetweenlands:sporeling>.removeDrop(<thebetweenlands:spores>);
<entity:thebetweenlands:sporeling>.addPlayerOnlyDrop(<thebetweenlands:spores>, 0, 1);

<entity:mod_lavacow:scarecrow>.removeDrop(<minecraft:stick>);
<entity:mod_lavacow:scarecrow>.removeDrop(<minecraft:wheat>);
<entity:mod_lavacow:scarecrow>.addPlayerOnlyDrop(<thebetweenlands:items_misc:20>, 0, 1);
<entity:mod_lavacow:scarecrow>.addPlayerOnlyDrop(<thebetweenlands:items_misc:6>, 0, 1);


/*
val sporeling = LootTweaker.getTable("thebetweenlands:entities/sporeling");
val sporeling_main = sporeling.getPool("sporeling");
sporeling_main.setRolls(0, 2);
sporeling_main.removeEntry("thebetweenlands:spores");
sporeling_main.addItemEntryHelper(<thebetweenlands:spores>, 1, 1, [Functions.setCount(0, 1)], []);
*/


val darkdruid = LootTweaker.getTable("thebetweenlands:entities/dark_druid");
darkdruid.removePool("dark_druid");