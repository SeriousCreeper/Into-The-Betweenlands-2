val storeDefault = "_store";
val storeBuilder = "Builder";
val storeFisher = "Fisher";


mods.Delivery.Store.setProfile("black_f");
mods.Delivery.Store.addTrade(<minecraft:wheat> * 20, <minecraft:diamond> * 5);
mods.Delivery.Store.addTrade(<minecraft:wheat> * 10, <minecraft:diamond> * 5, <minecraft:emerald> * 5);

mods.Delivery.Store.setProfile("red_f");
mods.Delivery.Store.addTrade(<minecraft:stone> * 20, <minecraft:diamond> * 5);
mods.Delivery.Store.addTrade("claytest", <minecraft:clay> * 20, <minecraft:diamond> * 5);