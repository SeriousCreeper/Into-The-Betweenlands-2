import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

val swamp_hag = LootTweaker.getTable("thebetweenlands:entities/swamp_hag");
val swamp_hag_main = swamp_hag.getPool("swamp_hag");

swamp_hag_main.addItemEntry(<thaumcraft:brain>, 1, 1, [Functions.setCount(0, 1)], []);


val sludge_menace = LootTweaker.getTable("thebetweenlands:entities/sludge_menace");
val sludge_menace_ring = sludge_menace.getPool("ring");
val sludge_menace_amulet = sludge_menace.getPool("amulet_slot");

sludge_menace_ring.removeEntry("thebetweenlands:ring_of_dispersion");
sludge_menace_ring.addItemEntry(<contenttweaker:boss_item_3>, 1);

sludge_menace_amulet.removeEntry("thebetweenlands:amulet_slot");



function replaceLoot(tableName as string, poolName as string, entryName as string, itemToAdd as IItemStack, weight as int, quality as int, minItem as int, maxItem as int) {
	val table = LootTweaker.getTable(tableName);
	val pool = table.getPool(poolName);
	pool.removeEntry(entryName);
	pool.addItemEntry(itemToAdd, weight, quality, [Functions.setCount(minItem, maxItem)], []);
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

val table = LootTweaker.getTable("thebetweenlands:entities/anadia_treasure");
val pool = table.getPool("anadia_body");
pool.removeEntry("syrmorite_nuggets_0");
pool.addItemEntry(<pyrotech:generated_slag_syrmorite>, 3, 0, [{"function":"thebetweenlands:set_count_from_anadia","size_start":0.125,"size_end":0.95,"min_count":4,"max_count":8}], [{"condition":"entity_properties","entity":"this","properties":{"thebetweenlands:anadia_body_type":0}}]);