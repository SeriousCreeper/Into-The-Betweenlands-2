import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

val swamp_hag = LootTweaker.getTable("thebetweenlands:entities/swamp_hag");
val swamp_hag_main = swamp_hag.getPool("swamp_hag");

swamp_hag_main.addItemEntryHelper(<minecraft:rotten_flesh>, 1, 1, [Functions.setCount(0, 2)], []);
swamp_hag_main.addItemEntryHelper(<thaumcraft:brain>, 1, 1, [Functions.setCount(0, 1)], []);
