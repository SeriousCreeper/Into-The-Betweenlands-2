import crafttweaker.item.IItemStack;

<immersiveruins:scrap>.maxStackSize = 64;
<immersiveruins:scrap2>.maxStackSize = 64;
<immersiveruins:scrap3>.maxStackSize = 64;

val mixedScrap = {
	<immersiveruins:iegencon1> : 1,
	<immersiveruins:iegencon2> : 1,
	<immersiveruins:iegencon3> : 1,
	<immersiveruins:ie_gen_slab_2> : 1,
	<immersiveruins:ie_gen_slab_1> : 1,
	<immersiveruins:ie_gen_motor_cyl_1> : 1,
	<immersiveruins:ie_gen_motor_cyl_3> : 1,
	<immersiveruins:ie_gen_motor_cyl_2> : 1,
	<immersiveruins:ie_gen_slab_5> : 1,
	<immersiveruins:motor> : 1,
	<immersiveruins:gr_part_21> : 1,
	<immersiveruins:gr_part_22> : 1,
	<immersiveruins:gr_part_41> : 1,
	<immersiveruins:gr_part_42> : 1,
	<immersiveruins:gr_part_44> : 1,
	<immersiveruins:gr_part_45> : 1,
	<immersiveruins:device_1> : 1,
	<immersiveruins:device_10> : 1,
	<immersiveruins:device_9> : 1,
	<immersiveruins:device_8> : 1,
	<immersiveruins:device_7> : 1,
	<immersiveruins:device_6> : 1,
	<immersiveruins:device_5> : 1,
	<immersiveruins:device_4> : 1,
	<immersiveruins:device_3> : 1,
	<immersiveruins:device_2> : 1,
	<immersiveruins:device_11> : 1,
	<immersiveruins:device_12> : 1,
	<immersiveruins:ie_gen_motor_1> : 2,
} as int[IItemStack];

val metalScrap = {
	<immersiveruins:gr_part_18> : 1,
	<immersiveruins:scaffold> : 1,
	<immersiveruins:pipe_1> : 1,
	<immersiveruins:pipe_2> : 1,
	<immersiveruins:pipe_3> : 1,
	<immersiveruins:pipe_4> : 1,
	<immersiveruins:beam_1> : 1,
	<immersiveruins:beam_2> : 1,
	<immersiveruins:beam_3> : 1,
	<immersiveruins:ie_gen_slab_3> : 1,
	<immersiveruins:ie_gen_slab_4> : 1,
	<immersiveruins:ie_gen_slab_6> : 1,
	<immersiveruins:ie_gen_slab_7> : 1,
	<immersiveruins:ie_gen_slab_8> : 1,
	<immersiveruins:ie_gen_slab_9> : 1,
	<immersiveruins:ie_gen_slab_10> : 1,
	<immersiveruins:ie_gen_slab_11> : 1,
	<immersiveruins:ie_gen_slab_12> : 1,
	<immersiveruins:ie_gen_slab_14> : 1,
	<immersiveruins:ie_gen_slab_15> : 1,
	<immersiveruins:ie_gen_slab_16> : 1,
	<immersiveruins:gr_part_11> : 1,
	<immersiveruins:gr_part_12> : 1,
	<immersiveruins:gr_part_13> : 1,
	<immersiveruins:gr_part_23> : 1,
	<immersiveruins:gr_part_31> : 1,
	<immersiveruins:gr_part_32> : 1,
	<immersiveruins:gr_part_33> : 1,
	<immersiveruins:gr_part_43> : 1,
	<immersiveruins:gr_part_14> : 1,
	<immersiveruins:gr_part_15> : 1,
	<immersiveruins:gr_part_25> : 1,
	<immersiveruins:gr_part_35> : 1,
	<immersiveruins:barrel> : 1,
	<immersiveruins:canister> : 1,
	<immersiveruins:gr_part_17> : 1,
	<immersiveruins:beam_4> : 1,
	<immersiveruins:beam_5> : 1,
	<immersiveruins:beam_6> : 1,
	<immersiveruins:beam_7> : 1,
	<immersiveruins:beam_8> : 1,
	<immersiveruins:beam_9> : 1,
	<immersiveruins:metalblock> : 1,
	<immersiveruins:gr_part_28> : 4,
	<immersiveruins:ie_gen_motor_2> : 2,
	<immersiveruins:ie_gen_motor_3> : 2,
} as int[IItemStack];

val electronicScrap = {
	<immersiveruins:gr_part_01> : 1,
	<immersiveruins:gr_part_02> : 1,
	<immersiveruins:gr_part_03> : 1,
	<immersiveruins:gr_part_04> : 1,
	<immersiveruins:gr_part_05> : 1,
	<immersiveruins:gr_part_06> : 1,
} as int[IItemStack];


for scrap, amount in mixedScrap {
	scripts.utils.addInfoTooltip(scrap, "Mixed Scrap x" ~ amount);
}

for scrap, amount in metalScrap {
	scripts.utils.addInfoTooltip(scrap, "Metal Scrap x" ~ amount);
}

for scrap, amount in electronicScrap {
	scripts.utils.addInfoTooltip(scrap, "Electronic Scrap x" ~ amount);
}