import crafttweaker.item.IIngredient;

scripts.utils.addShapeless("journal", <loreexpansion:lore_journal>, [<minecraft:book>]);


val lorePages = [
	<loreexpansion:lore_scrap>.withTag({lore: {id: "Lurking Shadows", category: "Others"}}),
	<loreexpansion:lore_scrap>.withTag({lore: {id: "Mutants of Terror", category: "Others"}}),
	<loreexpansion:lore_scrap>.withTag({lore: {id: "Wight of Shadows", category: "Others"}}),
	<loreexpansion:lore_scrap>.withTag({lore: {id: "Marsh Ruins", category: "Others"}}),
	<loreexpansion:lore_scrap>.withTag({lore: {id: "Idol Heads", category: "Others"}}),
	<loreexpansion:lore_scrap>.withTag({lore: {id: "Tar Pit", category: "Others"}}),
	<loreexpansion:lore_scrap>.withTag({lore: {id: "Dungeon Shrines", category: "Others"}}),
	<loreexpansion:lore_scrap>.withTag({lore: {id: "Underground Ruins", category: "Others"}}),
	<loreexpansion:lore_scrap>.withTag({lore: {id: "Cragrock Tower", category: "Others"}}),
	<loreexpansion:lore_scrap>.withTag({lore: {id: "Wight Fortress", category: "Others"}}),
] as IIngredient[];

val loreScrap = <thebetweenlands:lore_scrap:*>;

recipes.addShapeless("convert_lore_scrap", <loreexpansion:lore_scrap>, [loreScrap.anyDamage().marked("lore")],
	function(out, ins, cInfo) {
		return lorePages[ins.lore.damage];
	}, 
null);


scripts.utils.addInfoTooltip(<loreexpansion:lore_scrap>, "Right-click to add to Journal");