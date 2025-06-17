#reloadable
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
val maxheat = 1200 as long;
val minheat = 200 as long;
val heatingPower = 5 as long;
val coolingPower = 5 as long;
# 智能数据接口数据类型定义
MachineModifier.addSmartInterfaceType("ChemicalReactorMk1",
    SmartInterfaceType.create("targetheat", 298)
        .setHeaderInfo("目标温度 单位K 默认298K(室温)")
        .setJeiTooltip("温度范围:200K~1200", 2)
        .setNotEqualMessage("温度不在范围内")
);

/**
 * 将智能数据接口的数据写入到 customData 中,方便客户端和配方读取。
 */
function writeSmartInterfaceDataToCustomData(event as MachineTickEvent, minheat as float, maxheat as float) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    var dData= D(data);
    val map = data.asMap();
    val nullable = ctrl.getSmartInterfaceData("targetheat");
    var targetheat = isNull(nullable) ? 1 as float : nullable.value;
    //检查数据正确性
    if (targetheat < minheat || targetheat > maxheat) {
        nullable.value = 298;
    }

    
    map["targetheat"] = targetheat;
    ctrl.customData = data;
    #ctrl.addPermanentModifier("receive", RecipeModifierBuilder.create("modularmachinery:energy", "input", speed, 1, false).build());
    #ctrl.addPermanentModifier("extract", RecipeModifierBuilder.create("modularmachinery:energy", "output", speed, 1, false).build());
}

# 写入智能数据接口信息
MMEvents.onMachinePostTick("ChemicalReactorMk1", function(event as MachineTickEvent) {
    writeSmartInterfaceDataToCustomData(event, minheat, maxheat);
});

RecipeBuilder.newBuilder("heater","ChemicalReactorMk1",1)
    .addEnergyPerTickInput(2000)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var heat = dData.getLong("heat",0);
        var maxTargetHeat = dData.getLong("targetheat",0);
        if(heat + heatingPower) > (maxTargetHeat - 10){
            event.setFailed("无法继续加热");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat",0);
        map["heat"] = heat + heatingPower;
        event.controller.customData = data;
    })
    .setThreadName("内置加热器")
    .build();

RecipeBuilder.newBuilder("cooler","ChemicalReactorMk1",1)
    .addEnergyPerTickInput(2000)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var heat = dData.getLong("heat",0);
        var maxTargetHeat = dData.getLong("targetheat",0);
        if((heat - coolingPower) < maxTargetHeat + 10){
            event.setFailed("无法继续冷却");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat",0);
        map["heat"] = heat - heatingPower;
        event.controller.customData = data;
    })
    .setThreadName("内置冷却器")
    .build();

MMEvents.onControllerGUIRender("ChemicalReactorMk1",function(event as ControllerGUIRenderEvent){
    val ctrl = event.controller;
    val data = ctrl.customData;
    val dData = D(data);
    val heat= dData.getLong("heat",0);
    var maxTargetHeat = dData.getLong("targetheat",0);
    var info as string[] = [];
    //定义空的一个字符串数组，并逐渐添加，这样的格式可以让之后的查看更加轻松
    info += "————————————核心参数————————————";
    info += "加热器功率:"+heatingPower+"K/T  冷却器功率:"+coolingPower+"K/T";
    info += "————————————温度监控————————————";
    info += "当前温度:"+heat+"      目标温度:"+maxTargetHeat;
    event.extraInfo = info;
    //将添加的gui信息显示上去，没有这一步则不会显示
});

MachineModifier.addCoreThread("ChemicalReactorMk1",FactoryRecipeThread.createCoreThread("内置加热器").addRecipe("heater"));
MachineModifier.addCoreThread("ChemicalReactorMk1",FactoryRecipeThread.createCoreThread("内置冷却器").addRecipe("cooler"));

MMEvents.onStructureFormed("ChemicalReactorMk1", function(event as MachineStructureFormedEvent) {
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat",0);     
        map["heat"] = 298; // 初始化温度为298K
        event.controller.customData = data;
});

RecipeBuilder.newBuilder("sulfuricacid", "ChemicalReactorMk1",20)
    .addEnergyPerTickInput(800)
    .addItemInput(<ore:dustSulfur>)
    .addItemInput(<thermalexpansion:augment:448>).setChance(0).setParallelizeUnaffected(true)
    .addGasInput("oxygen", 50)
    .addFluidInput(<liquid:water> * 100)
    .addGasOutput("sulfuricacid", 100)
    .addCatalystInput(<draconicevolution:draconic_core>,["使硫酸产量翻倍"],[RecipeModifierBuilder.create("modularmachinery:gas","output",2,1,false).build()]).setChance(0)
    .addRecipeTooltip("此反应每次产生20K,反应温度在600~800K之间")
    .addCheckHandler(function(event as RecipeCheckEvent) {
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat", 0);
        if (heat < 600 || heat > 800) {
            event.setFailed("温度不在目标范围内");
            }
        }
    )
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat",0);
        map["heat"] = heat + 20;
        event.controller.customData = data;
})
    .build();

RecipeBuilder.newBuilder("extractanta", "ChemicalReactorMk1",40)
    .addEnergyPerTickInput(800)
    .addGasInput("sulfuricacid", 1000)
    .addFluidInput(<liquid:ic2coolant> * 1000)
    .addFluidOutput(<liquid:extractanta> * 4000)
    .addCatalystInput(<enderio:item_alloy_endergy_ball:2>,["使流体产量翻倍，有80%概率消耗"],[RecipeModifierBuilder.create("modularmachinery:fluid","output",2,1,false).build()]).setChance(0.8)
    .addRecipeTooltip("此反应每次产生吸收20K,反应温度在250~350K之间")
    .addCheckHandler(function(event as RecipeCheckEvent) {
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat", 0);
        if (heat < 250 || heat > 350) {
            event.setFailed("温度不在目标范围内");
            }
        }
    )
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat",0);
        map["heat"] = heat - 20;
        event.controller.customData = data;
})
    .build();

RecipeBuilder.newBuilder("extractantb", "ChemicalReactorMk1",40)
    .addEnergyPerTickInput(3200)
    .addFluidInput(<liquid:extractanta> * 2000)
    .addFluidInput(<liquid:cryotheum> * 1000)
    .addFluidOutput(<liquid:extractantb> * 4000)
    .addCatalystInput(<enderio:item_alloy_endergy_ball:2>,["使流体产量翻倍，有80%概率消耗"],[RecipeModifierBuilder.create("modularmachinery:fluid","output",2,1,false).build()]).setChance(0.8)
    .addRecipeTooltip("此反应每次产生吸收40K,反应温度在250~350K之间")
    .addCheckHandler(function(event as RecipeCheckEvent) {
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat", 0);
        if (heat < 250 || heat > 350) {
            event.setFailed("温度不在目标范围内");
            }
        }
    )
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat",0);
        map["heat"] = heat - 40;
        event.controller.customData = data;
})
    .build();

RecipeBuilder.newBuilder("extractantc", "ChemicalReactorMk1",40)
    .addEnergyPerTickInput(3200)
    .addFluidInput(<liquid:extractantb> * 2000)
    .addFluidInput(<liquid:redstone_nak> * 250)
    .addFluidOutput(<liquid:extractantc> * 4000)
    .addCatalystInput(<enderio:item_alloy_endergy_ball:2>,["使流体产量翻倍，有80%概率消耗"],[RecipeModifierBuilder.create("modularmachinery:fluid","output",2,1,false).build()]).setChance(0.8)
    .addRecipeTooltip("此反应每次产生吸收60K,反应温度在250~350K之间")
    .addCheckHandler(function(event as RecipeCheckEvent) {
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat", 0);
        if (heat < 250 || heat > 350) {
            event.setFailed("温度不在目标范围内");
            }
        }
    )
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var heat = dData.getLong("heat",0);
        map["heat"] = heat - 60; 
        event.controller.customData = data;
})
    .build();