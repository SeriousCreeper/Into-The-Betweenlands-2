import crafttweaker.item.IItemStack;

val itemsToRemove = [
	<jaopca:block.brick>,
	<jaopca:block.brick_nether>,
	<jaopca:block.elven_elementium>,
	<jaopca:block.manasteel>,
	<jaopca:block.raw_zorrasteel>,
	<jaopca:block.terrasteel>,
	<jaopca:dust.aluminum>,
	<jaopca:dust.brass>,
	<jaopca:dust.brick>,
	<jaopca:dust.brick_nether>,
	<jaopca:dust.bronze>,
	<jaopca:dust.copper>,
	<jaopca:dust.dawnstone>,
	<jaopca:dust.electrum>,
	<jaopca:dust.elven_elementium>,
	<jaopca:dust.lead>,
	<jaopca:dust.manasteel>,
	<jaopca:dust.nickel>,
	<jaopca:dust.octine>,
	<jaopca:dust.raw_zorrasteel>,
	<jaopca:dust.silver>,
	<jaopca:dust.syrmorite>,
	<jaopca:dust.terrasteel>,
	<jaopca:dust.thaumium>,
	<jaopca:dust.tin>,
	<jaopca:dust.void>,
	<jaopca:dust.zorrasteel>,
] as IItemStack[];


for item in itemsToRemove {
	recipes.remove(item);
	furnace.remove(item);
}