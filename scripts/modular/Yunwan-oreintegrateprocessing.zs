#priority 1000
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.MachineUpgradeBuilder;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.MachineStructureFormedEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.FactoryRecipeStartEvent;

MMEvents.onStructureFormed("oreintegrateprocessing", function(event as MachineStructureFormedEvent) {
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);    
        var UsedVolume = dData.getLong("UsedVolume",0); 
        map["type"] = 0; // 初始化萃取剂类型为none
        map["volume"] = 0; // 初始化萃取剂体积为0
        map["UsedVolume"] = 0; // 初始化使用过的萃取剂体积为0
        event.controller.customData = data;
});

MachineModifier.setInternalParallelism("oreintegrateprocessing", 8);

RecipeBuilder.newBuilder("ExtractantProcessingA","oreintegrateprocessing",1)
    .addFluidInput(<liquid:extractanta> * 1000)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        event.activeRecipe.maxParallelism = 1;
        val data = event.controller.customData;
        var dData= D(data);
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);

        if (type == 2) ||(type == 3){
            event.setFailed("错误的萃取剂类型");
        }
        if (volume > 399000){
            event.setFailed("萃取剂已经满了");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);
        map["type"] = 1;
        map["volume"] = volume + 1000;
        event.controller.customData = data;
    })
    .setThreadName("萃取剂泵A")
    .build();

RecipeBuilder.newBuilder("UsedExtractantProcessingA","oreintegrateprocessing",1)
    .addFluidOutput(<liquid:usedextractanta> * 1000)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        event.activeRecipe.maxParallelism = 1;
        val data = event.controller.customData;
        var dData= D(data);
        var type = dData.getLong("type",0);
        var UsedVolume = dData.getLong("UsedVolume",0);

        if (type == 2) ||(type ==3){
            event.setFailed("错误的萃取剂类型");
        }
        if (UsedVolume < 1000){
            event.setFailed("使用过的萃取剂不足");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var volume = dData.getLong("volume",0);
        var UsedVolume = dData.getLong("UsedVolume",0);
        map["UsedVolume"] = UsedVolume - 1000;
        event.controller.customData = data;
    })
    .setThreadName("萃取剂回收器A")
    .build();
RecipeBuilder.newBuilder("ExtractantProcessingB","oreintegrateprocessing",1)
    .addFluidInput(<liquid:extractantb> * 1000)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        event.activeRecipe.maxParallelism = 1;
        val data = event.controller.customData;
        var dData= D(data);
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);

        if (type == 1) ||(type == 3){
            event.setFailed("错误的萃取剂类型");
        }
        if (volume > 399000){
            event.setFailed("萃取剂已经满了");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);
        map["type"] = 2;
        map["volume"] = volume + 1000;
        event.controller.customData = data;
    })
    .setThreadName("萃取剂泵B")
    .build();

RecipeBuilder.newBuilder("UsedExtractantProcessingB","oreintegrateprocessing",1)
    .addFluidOutput(<liquid:usedextractantb> * 1000)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        event.activeRecipe.maxParallelism = 1;
        val data = event.controller.customData;
        var dData= D(data);
        var type = dData.getLong("type",0);
        var UsedVolume = dData.getLong("UsedVolume",0);

        if (type == 1) ||(type ==3){
            event.setFailed("错误的萃取剂类型");
        }
        if (UsedVolume < 1000){
            event.setFailed("使用过的萃取剂不足");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var volume = dData.getLong("volume",0);
        var UsedVolume = dData.getLong("UsedVolume",0);
        map["UsedVolume"] = UsedVolume - 1000;
        event.controller.customData = data;
    })
    .setThreadName("萃取剂回收器B")
    .build();

RecipeBuilder.newBuilder("ExtractantProcessingC","oreintegrateprocessing",1)
    .addFluidInput(<liquid:extractantc> * 1000)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        event.activeRecipe.maxParallelism = 1;
        val data = event.controller.customData;
        var dData= D(data);
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);

        if (type == 1) ||(type == 2){
            event.setFailed("错误的萃取剂类型");
        }
        if (volume > 399000){
            event.setFailed("萃取剂已经满了");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);
        map["type"] = 3;
        map["volume"] = volume + 1000;
        event.controller.customData = data;
    })
    .setThreadName("萃取剂泵C")
    .build();

RecipeBuilder.newBuilder("UsedExtractantProcessingC","oreintegrateprocessing",1)
    .addFluidOutput(<liquid:usedextractantc> * 1000)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        event.activeRecipe.maxParallelism = 1;
        val data = event.controller.customData;
        var dData= D(data);
        var type = dData.getLong("type",0);
        var UsedVolume = dData.getLong("UsedVolume",0);

        if (type == 2) ||(type ==1){
            event.setFailed("错误的萃取剂类型");
        }
        if (UsedVolume < 1000){
            event.setFailed("使用过的萃取剂不足");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var volume = dData.getLong("volume",0);
        var UsedVolume = dData.getLong("UsedVolume",0);
        map["UsedVolume"] = UsedVolume - 1000;
        event.controller.customData = data;
    })
    .setThreadName("萃取剂回收器C")
    .build();
    
MachineModifier.setMaxThreads("oreintegrateprocessing", 0);
MachineModifier.addCoreThread("oreintegrateprocessing",FactoryRecipeThread.createCoreThread("萃取剂泵A").addRecipe("ExtractantProcessingA"));
MachineModifier.addCoreThread("oreintegrateprocessing",FactoryRecipeThread.createCoreThread("萃取剂回收器A").addRecipe("UsedExtractantProcessingA"));
MachineModifier.addCoreThread("oreintegrateprocessing",FactoryRecipeThread.createCoreThread("萃取剂泵B").addRecipe("ExtractantProcessingB"));
MachineModifier.addCoreThread("oreintegrateprocessing",FactoryRecipeThread.createCoreThread("萃取剂回收器B").addRecipe("UsedExtractantProcessingB"));
MachineModifier.addCoreThread("oreintegrateprocessing",FactoryRecipeThread.createCoreThread("萃取剂泵C").addRecipe("ExtractantProcessingC"));
MachineModifier.addCoreThread("oreintegrateprocessing",FactoryRecipeThread.createCoreThread("萃取剂回收器C").addRecipe("UsedExtractantProcessingC"));
MachineModifier.setMaxThreads("oreintegrateprocessing", 130);

#---------------------------魔改配方 ---------------------------

# 矿物
val ore as IOreDictEntry[int] = {
    1 : <ore:oreIron>,
    2 : <ore:oreGold>, 
    3 : <ore:oreCopper>,
    4 : <ore:oreTin>,
    5 : <ore:oreLead>,
    6 : <ore:oreSilver>,
    7 : <ore:oreNickel>,
    8 : <ore:orePlatinum>,
    9 : <ore:oreAluminum>,
    10: <ore:oreUranium>,
    11: <ore:oreOsmium>,
    12: <ore:oreBauxite>,
    13: <ore:oreCobalt>,
    14: <ore:oreArdite>,
    15: <ore:oreDraconium>,
    16: <ore:oreLapis>,
    17: <ore:oreRedstone>,
    18: <ore:oreDiamond>,
    19: <ore:oreEmerald>,
    20: <ore:oreQuartz>,
    21: <ore:oreCoal>,
    22: <ore:oreCertusQuartz>,
    23: <ore:oreChargedCertusQuartz>


};
# 主产物粉
val major as IItemStack[int] = {
    1 : <thermalfoundation:material> * 2,
    2 : <thermalfoundation:material:1> * 2, 
    3 : <thermalfoundation:material:64> * 2,
    4 : <thermalfoundation:material:65> * 2,
    5 : <thermalfoundation:material:67> * 2,
    6 : <thermalfoundation:material:66> * 2,
    7 : <thermalfoundation:material:69> * 2,
    8 : <thermalfoundation:material:70> * 2,
    9 : <thermalfoundation:material:68> * 2,
    10: <nuclearcraft:dust:4> * 2,
    11: <mekanism:dust:2> * 2,
    12: <thermalfoundation:material:68> * 2,
    13: <enderio:item_material:31> * 2,
    14: <enderio:item_material:30> * 2,
    15: <draconicevolution:draconium_dust> * 4,
    16: <minecraft:dye:4> * 5,
    17: <minecraft:redstone> * 2,
    18: <minecraft:diamond> * 2,
    19: <minecraft:emerald> * 2,
    20: <minecraft:quartz> * 2,
    21: <thermalfoundation:material:77> * 2,
    22: <appliedenergistics2:material> * 2,
    23: <appliedenergistics2:material:1> * 2

};
# 副产物粉
val minor as IItemStack[int] = {
    1 : <thermalfoundation:material:69> ,
    2 : <thermalfoundation:material:70>, 
    3 : <thermalfoundation:material:1>,
    4 : <thermalfoundation:material>,
    5 : <thermalfoundation:material:66>,
    6 : <thermalfoundation:material:67>,
    7 : <thermalfoundation:material:70>,
    8 : <thermalfoundation:material:71>,
    9 : <thermalfoundation:material>,
    10: <nuclearcraft:dust:3>,
    11: <thermalfoundation:material:71>,
    12: <mets:titanium_dust>,
    13: <enderio:item_material:30>,
    14: <enderio:item_material:31>,
    15: <draconicevolution:draconium_dust>,
    16: <thermalfoundation:material:771>,
    17: <thermalfoundation:material:866>,
    18: <minecraft:emerald>,
    19: <minecraft:diamond>,
    20: <thermalfoundation:material:865>,
    21: <thermalfoundation:material:79>,
    22: <appliedenergistics2:material>,
    23: <appliedenergistics2:material:1>
};


MMEvents.onControllerGUIRender("oreintegrateprocessing",function(event as ControllerGUIRenderEvent){
    val ctrl = event.controller;
    val data = ctrl.customData;
    val dData = D(data);

    var type = dData.getLong("type",0);
    var volume = dData.getLong("volume",0);
    var UsedVolume = dData.getLong("UsedVolume",0);
    var info as string[] = [];
    //定义空的一个字符串数组，并逐渐添加，这样的格式可以让之后的查看更加轻松
    info += "————————————萃取剂监控————————————";
    if (type ==0){
            info += "萃取剂类型:无";
        }
    if (type ==1){
            info += "萃取剂类型:萃取剂A";
        }
    if (type ==2){
            info += "萃取剂类型:萃取剂B";
        }
    if (type ==3){
            info += "萃取剂类型:萃取剂C";
        }
    
    info += "萃取剂体积:"+volume+"mb";
    info += "使用过的萃取剂体积:"+UsedVolume+"mb";
    event.extraInfo = info;
    //将添加的gui信息显示上去，没有这一步则不会显示
});
for order, itemOre in ore {
    RecipeBuilder.newBuilder("oreintegrateprocessing"+major[order].name, "oreintegrateprocessing",8)
    .addEnergyPerTickInput(3200)
    .addItemInput(itemOre)
    .addItemOutput(major[order])
    .addItemOutput(minor[order]).setChance(0.25)
    .addRecipeTooltip("此反应每次消耗50mb任意等级萃取剂")
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        event.activeRecipe.maxParallelism = 1;
        val data = event.controller.customData;
        var dData= D(data);
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);
        if(type == 0){
            event.setFailed("没有萃取剂");
        }
        else if(volume < 50){
            event.setFailed("萃取剂体积不足");
        }})
    .addFactoryStartHandler(function(event as FactoryRecipeStartEvent) {
        val data = event.controller.customData;
        var dData= D(data);
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);
        val thread = event.factoryRecipeThread;
        if (type == 1){
            thread.addModifier("MajorOutput", RecipeModifierBuilder.create("modularmachinery:item", "output", 1.5, 1, false).build());
            thread.addModifier("MinorOutput", RecipeModifierBuilder.create("modularmachinery:item", "output", 2  , 1, true ).build());
        }
        if (type == 2){
            thread.addModifier("MajorOutput", RecipeModifierBuilder.create("modularmachinery:item", "output", 2  , 1, false).build());
            thread.addModifier("MinorOutput", RecipeModifierBuilder.create("modularmachinery:item", "output", 4  , 1, true ).build());
        }
        if (type == 3){
            thread.addModifier("MajorOutput", RecipeModifierBuilder.create("modularmachinery:item", "output", 2.5, 1, false).build());
            thread.addModifier("MinorOutput", RecipeModifierBuilder.create("modularmachinery:item", "output", 6  , 1, true ).build());
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val ctrl = event.controller;
        val data = ctrl.customData;
        val dData = D(data);
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);
        var UsedVolume = dData.getLong("UsedVolume",0);
        val map = data.asMap();
        map["volume"] = volume - 50; 
        map["UsedVolume"] = UsedVolume + 50;
        event.controller.customData = data;
        }
    )
    .build();
}
