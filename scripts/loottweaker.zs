import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

val swamp_hag = LootTweaker.getTable("thebetweenlands:entities/swamp_hag");
val swamp_hag_main = swamp_hag.getPool("swamp_hag");

swamp_hag_main.addItemEntry(<minecraft:rotten_flesh>, 1, 1, [Functions.setCount(0, 2)], []);
swamp_hag_main.addItemEntry(<thaumcraft:brain>, 1, 1, [Functions.setCount(0, 1)], []);


val sludge_menace = LootTweaker.getTable("thebetweenlands:entities/sludge_menace");
val sludge_menace_ring = sludge_menace.getPool("ring");
val sludge_menace_amulet = sludge_menace.getPool("amulet_slot");

sludge_menace_ring.removeEntry("thebetweenlands:ring_of_dispersion");
sludge_menace_ring.addItemEntry(<contenttweaker:boss_item_3>, 1);

sludge_menace_amulet.removeEntry("thebetweenlands:amulet_slot");

