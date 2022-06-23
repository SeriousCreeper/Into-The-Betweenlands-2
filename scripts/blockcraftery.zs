recipes.removeByRecipeName("blockcraftery:editable_pressure_plate");
scripts.utils.addShaped("editable_pressure_plate", <blockcraftery:editable_pressure_plate_all> * 2, [
	[<thebetweenlands:weedwood_plank_pressure_plate>, <blockcraftery:editable_block:*>, <blockcraftery:editable_block:*>]
]);

recipes.removeByRecipeName("blockcraftery:editable_pressure_plate_reinforced");
scripts.utils.addShaped("editable_pressure_plate_reinforced", <blockcraftery:editable_pressure_plate_all_reinforced> * 2, [
	[<thebetweenlands:weedwood_plank_pressure_plate>, <blockcraftery:editable_block_reinforced:*>, <blockcraftery:editable_block_reinforced:*>]
]);

recipes.remove(<blockcraftery:editable_block_reinforced>);
scripts.utils.addShaped("editable_block_reinforced", <blockcraftery:editable_block_reinforced> * 3, [
	[<ore:stickWood>, <ore:nuggetSyrmorite>, <ore:stickWood>], 
	[null, <ore:nuggetSyrmorite>, null], 
	[<ore:stickWood>, <ore:nuggetSyrmorite>, <ore:stickWood>]
]);
scripts.utils.addShaped("editable_block_reinforced_upgrade", <blockcraftery:editable_block_reinforced> * 3, [
	[null, <ore:nuggetSyrmorite>, null], 
	[<ore:nuggetSyrmorite>, <blockcraftery:editable_block:*>, <ore:nuggetSyrmorite>], 
	[null, <blockcraftery:editable_block:*>, null]
]);
