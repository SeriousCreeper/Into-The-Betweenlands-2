recipes.remove(<statues:hammer>);
scripts.utils.addShaped("hammer", <statues:hammer>, [
	[null, <ore:ingotSyrmorite>], 
	[<ore:ingotSyrmorite>, <ore:stickWood>], 
	[null, <ore:stickWood>]
]);


<statues:hammer>.displayName = "Statue Hammer";
scripts.utils.addInfoTooltip(<statues:hammer>, "Only used to create statues, won't work on anvils or worktables.");
