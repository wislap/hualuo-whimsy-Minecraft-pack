import mods.ooi.ConversionItem;
import mods.ooi.ConversionFluid;
import mods.ooi.BlackList;

/*BlackList.addMatchItem("chisel");

static modid as string[] = [
    "minecraft",
    "thermalfoundation",
    "enderio",
    "tconstruct",
    "ic2",
    "mets",
    "moretcon",
    "galaticraftcore",
    "galaticraftplanets",
    "galaxyspace"
];
function getODItem(od as IOreDictEntry) as IItemStack{
    if (isNull(od.firstItem))return <minecraft:stone>;
    var clq as IItemStack = null;
    for i in 0 to modid.length{
        for item in od.items{
            if (item.definition.owner == modid[i]){
                clq = item;
                break;
            }
        }
        if (!isNull(clq))break;
    }

    return isNull(clq) ? od.firstItem : clq;
}

if (!(<ore:itemSilicon>.empty)){
    ConversionItem.create(getODItem(<ore:itemSilicon>))
            .addMatchItem(<ore:itemSilicon>)
            .register();
}

for od in oreDict.entries {
    var odName = od.name;
    if (odName.startsWith("ore") 
        || odName.startsWith("dust")
        || odName.startsWith("ingot")
        || odName.startsWith("gem")
        || odName.startsWith("nugget")
        || odName.startsWith("plate")
        || odName.startsWith("gear")
        || odName.startsWith("stick")
    ){
        ConversionItem.create(getODItem(od))
            .addMatchItem(od)
            .register();
        if (odName.startsWith("gem")){
            val od0 = oreDict.get("block" + odName.substring("gem".length));
            if (!od0.empty){
                ConversionItem.create(getODItem(od0))
                    .addMatchItem(od0)
                    .register();
            }
        } else if (odName.startsWith("ingot")){
            val od0 = oreDict.get("block" + odName.substring("ingot".length));
            if (!od0.empty){
                ConversionItem.create(getODItem(od0))
                    .addMatchItem(od0)
                    .register();
            }
        }
    }
}