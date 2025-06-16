#priority 1000
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

#print("233");
#for ench in oreDict.entries{
#
#    var oreName = ench.name;
#    if (oreName.startsWith("ore")) {
#        print(oreName);
#    }
#    
#}
MachineModifier.setParallelizable("oreintegrateprocessing", false); 
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
MachineModifier.setMaxThreads("oreintegrateprocessing", 0);
MachineModifier.addCoreThread("oreintegrateprocessing",FactoryRecipeThread.createCoreThread("萃取剂泵A").addRecipe("ExtractantProcessingA"));
MachineModifier.addCoreThread("oreintegrateprocessing",FactoryRecipeThread.createCoreThread("萃取剂回收器A").addRecipe("UsedExtractantProcessingA"));
MachineModifier.setMaxThreads("oreintegrateprocessing", 130);
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

RecipeBuilder.newBuilder("oreintegrateprocessing", "oreintegrateprocessing",8)
    .addEnergyPerTickInput(3200)
    .addItemInput(<ore:oreGold>)
    .addItemOutput(<thermalfoundation:material:1> * 2)
    .addItemOutput(<thermalfoundation:material:66>).setChance(0.25)
    .addRecipeTooltip("此反应每次消耗50mb任意等级萃取剂")
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var type = dData.getLong("type",0);
        var volume = dData.getLong("volume",0);
        if(type == 0){
            event.setFailed("没有萃取剂");
        }
        else if(volume < 50){
            event.setFailed("萃取剂体积不足");
        }
        if (type == 1){
            RecipeModifierBuilder.create("modularmachinery:item", "output", 1.5, 1, false).build();
            RecipeModifierBuilder.create("modularmachinery:item", "output", 2, 1, true).build();
        }
        if (type == 2){
            RecipeModifierBuilder.create("modularmachinery:item", "output", 2, 1, false).build();
            RecipeModifierBuilder.create("modularmachinery:item", "output", 4, 1, true).build();
        }
        if (type == 2){
            RecipeModifierBuilder.create("modularmachinery:item", "output", 2.5, 1, false).build();
            RecipeModifierBuilder.create("modularmachinery:item", "output", 6, 1, true).build();
        }
    )
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
