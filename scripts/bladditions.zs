import crafttweaker.item.IItemStack;

<bladditions:corrupted_bone_wayfinder>.addAdvancedTooltip(function(item) {   
    if(item.withTag({dimension: 21})) {
        return format.green("Destination: Cragrock Tower");
    }

    if(item.withTag({dimension: 22})) {
        return format.green("Destination: Wight Fortress");
    }

    if(item.withTag({dimension: 23})) {
        return format.green("Destination: Sludgeon");
    }

    return "";
});