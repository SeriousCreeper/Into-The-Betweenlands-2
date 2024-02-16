import mods.jei.JEI;
import crafttweaker.item.IItemStack;

val itemsToRemove = [
	<storagedrawers:basicdrawers:*>,
	<storagedrawers:trim:*>
] as IItemStack[];

for item in itemsToRemove {
	JEI.removeAndHide(item);
	furnace.remove(item);
	item.removeAspects(allAspects);
}

recipes.remove(<storagedrawers:framingtable>);
scripts.utils.addShaped("storagedrawers-framing_table", <storagedrawers:framingtable>, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
	[<ore:plankWood>, null, <ore:plankWood>]
]);

recipes.remove(<storagedrawers:compdrawers>);
scripts.utils.addShaped("storagedrawers-compacting_drawer", <storagedrawers:compdrawers>, [
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>], 
	[<betweenlandsredstone:scabyst_piston>, <storagedrawers:customdrawers:*>, <betweenlandsredstone:scabyst_piston>], 
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:items_misc:11>, <thebetweenlands:smooth_cragrock>]
]);

recipes.remove(<storagedrawers:controller>);
scripts.utils.addShaped("storagedrawers-controller", <storagedrawers:controller>, [
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>], 
	[<betweenlandsredstone:scabyst_comparator>, <storagedrawers:customdrawers:*>, <betweenlandsredstone:scabyst_comparator>], 
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:items_misc:19>, <thebetweenlands:smooth_cragrock>]
]);

recipes.remove(<storagedrawers:controllerslave>);
scripts.utils.addShaped("storagedrawers-controller_slave", <storagedrawers:controllerslave>, [
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>, <thebetweenlands:smooth_cragrock>], 
	[<betweenlandsredstone:scabyst_comparator>, <storagedrawers:customdrawers:*>, <betweenlandsredstone:scabyst_comparator>], 
	[<thebetweenlands:smooth_cragrock>, <thebetweenlands:octine_ingot>, <thebetweenlands:smooth_cragrock>]
]);

recipes.remove(<storagedrawers:upgrade_template>);
scripts.utils.addShaped("storagedrawers-upgrade_template", <storagedrawers:upgrade_template> * 2, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:stickWood>, <storagedrawers:customdrawers:*>, <ore:stickWood>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<storagedrawers:keybutton:*>);
scripts.utils.addShapeless("storagedrawers-keybutton_drawer", <storagedrawers:keybutton:0>, [<storagedrawers:drawer_key>, <thebetweenlands:betweenstone_button>]);
scripts.utils.addShapeless("storagedrawers-keybutton_concealment", <storagedrawers:keybutton:1>, [<storagedrawers:shroud_key>, <thebetweenlands:betweenstone_button>]);
scripts.utils.addShapeless("storagedrawers-keybutton_personal", <storagedrawers:keybutton:2>, [<storagedrawers:personal_key>, <thebetweenlands:betweenstone_button>]);
scripts.utils.addShapeless("storagedrawers-keybutton_quantify", <storagedrawers:keybutton:3>, [<storagedrawers:quantify_key>, <thebetweenlands:betweenstone_button>]);

recipes.remove(<storagedrawers:upgrade_storage:0>);
scripts.utils.addShaped("storagedrawers-upgrade_storage_obsidian", <storagedrawers:upgrade_storage:0>, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<thebetweenlands:tar_solid>, <storagedrawers:upgrade_template>, <thebetweenlands:tar_solid>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<storagedrawers:upgrade_storage:1>);
scripts.utils.addShaped("storagedrawers-upgrade_storage_iron", <storagedrawers:upgrade_storage:1>, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:ingotSyrmorite>, <storagedrawers:upgrade_template>, <ore:ingotSyrmorite>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<storagedrawers:upgrade_storage:2>);
scripts.utils.addShaped("storagedrawers-upgrade_storage_gold", <storagedrawers:upgrade_storage:2>, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<ore:ingotOctine>, <storagedrawers:upgrade_template>, <ore:ingotOctine>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<storagedrawers:upgrade_one_stack>);
scripts.utils.addShaped("storagedrawers-upgrade_one_stack", <storagedrawers:upgrade_one_stack>, [
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], 
	[<thebetweenlands:items_misc:14>, <storagedrawers:upgrade_template>, <thebetweenlands:items_misc:14>], 
	[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.remove(<storagedrawers:upgrade_status:1>);
scripts.utils.addShaped("storagedrawers-upgrade_status_level2", <storagedrawers:upgrade_status:1>, [
	[<betweenlandsredstone:scabyst_comparator>, <ore:stickWood>, <betweenlandsredstone:scabyst_comparator>], 
	[<ore:stickWood>, <storagedrawers:upgrade_template>, <ore:stickWood>], 
	[<betweenlandsredstone:scabyst_dust>, <ore:stickWood>, <betweenlandsredstone:scabyst_dust>]
]);

recipes.remove(<storagedrawers:upgrade_void>);
scripts.utils.addShaped("storagedrawers-upgrade_void", <storagedrawers:upgrade_void>, [
	[<thebetweenlands:tar_solid>, <thebetweenlands:tar_solid>, <thebetweenlands:tar_solid>], 
	[<thebetweenlands:tar_solid>, <storagedrawers:upgrade_template>, <thebetweenlands:tar_solid>], 
	[<thebetweenlands:tar_solid>, <thebetweenlands:tar_solid>, <thebetweenlands:tar_solid>]
]);

//recipes.remove(<storagedrawers:upgrade_conversion>);
//scripts.utils.addShaped("storagedrawers-upgrade_conversion", <storagedrawers:upgrade_conversion>, [
//	[<thebetweenlands:items_misc:39>, <ore:stickWood>, <thebetweenlands:items_misc:39>], 
//	[<ore:stickWood>, <storagedrawers:upgrade_template>, <ore:stickWood>], 
//	[<thebetweenlands:items_misc:39>, <ore:stickWood>, <thebetweenlands:items_misc:39>]
//]);

recipes.remove(<storagedrawers:drawer_key>);
scripts.utils.addShaped("storagedrawers-key_drawer", <storagedrawers:drawer_key>, [
	[<ore:nuggetOctine>, <ore:ingotOctine>], 
	[null, <ore:ingotOctine>], 
	[null, <storagedrawers:upgrade_template>]
]);

recipes.remove(<storagedrawers:personal_key>);
scripts.utils.addShapeless("storagedrawers-key_personal", <storagedrawers:personal_key>, [<storagedrawers:drawer_key>, <thebetweenlands:bl_name_tag>]);

recipes.remove(<storagedrawers:shroud_key>);
scripts.utils.addShapeless("storagedrawers-key_concealment", <storagedrawers:shroud_key>, [<storagedrawers:drawer_key>, <thebetweenlands:items_misc:3>]);


<storagedrawers:upgrade_redstone:0>.displayName = "Bluedust Upgrade";
<storagedrawers:upgrade_redstone:1>.displayName = "Bluedust Max Upgrade";
<storagedrawers:upgrade_redstone:2>.displayName = "Bluedust Min Upgrade";