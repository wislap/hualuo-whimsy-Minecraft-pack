import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;


import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.FactoryRecipeStartEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.IMachineController;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.FactoryRecipeTickEvent;
import native.java.math.BigInteger;

import crafttweaker.util.Math;
import mods.jei.JEI;

import mods.modularmachinery.MachineUpgradeHelper;
import mods.modularmachinery.MachineUpgradeBuilder;

val minSpeed = 0.01 as float;
val maxSpeed = 2147483647;
val defaultTransferSpeed = 4000;

RecipeBuilder.newBuilder("impetus_core", "baseplant", 720)
    .addEnergyPerTickInput(40960)
    .addInputs([
        <thaumicaugmentation:material:3> *32,
        <ore:plateVoid>*4,
        <ore:circuitAdvanced>*4,
        <avaritia:block_resource:2>*1,
    ])
    .addOutputs(<modularmachinery:impetuscore_factory_controller>)
    .build();

MachineModifier.setMaxThreads("impetuscore", 0);

MachineModifier.addSmartInterfaceType("impetuscore",
    SmartInterfaceType.create("speed", 1)
        .setHeaderInfo("元动能输入输出速度设置")
        .setValueInfo("速度：§a%.2f 倍")
        .setFooterInfo(
            "例：1 倍即为 " + formatNumber((defaultTransferSpeed as float * 1) as long) + "元动能,10 倍即为 " + formatNumber(defaultTransferSpeed * 10) + "元动能"
        )
);

val inputThreadName = "元动输入矩阵";
val inputThread = FactoryRecipeThread.createCoreThread(inputThreadName);
MachineModifier.addCoreThread("impetuscore", inputThread);

val outputThreadName = "元动输出矩阵";
val outputThread = FactoryRecipeThread.createCoreThread(outputThreadName);
MachineModifier.addCoreThread("impetuscore", outputThread);

MMEvents.onMachinePostTick("impetuscore", function(event as MachineTickEvent) {
    writeSmartInterfaceDataToCustomData(event, minSpeed, maxSpeed);
});

RecipeBuilder.newBuilder("impetusout", "impetuscore", 1, 1, true)
    .addImpetusOutput(defaultTransferSpeed)
    .setParallelized(false)
    .addPreCheckHandler(function(event as RecipeCheckEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val map = data.asMap();
        val dData = D(data);
        val speed = dData.getFloat("speed");
        val energy = dData.getString("impetusstoredcore");
        if (!canExtract(map, speed, defaultTransferSpeed)) {
            event.setFailed("元动能不足！");
            return;
        }
        ctrl.addPermanentModifier("impetusout", RecipeModifierBuilder.create("modularmachinery:impetus", "output", speed, 1, false).build());
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
        val ctrl = event.controller;
        val thread = event.factoryRecipeThread;
        val data = ctrl.customData;
        val map = data.asMap();
        val speed = isNull(map["speed"]) ? 1 as float : map["speed"].asFloat();
        extractimpetus(ctrl, data, map, speed, defaultTransferSpeed);
    })
    .addSmartInterfaceDataInput("speed", minSpeed, maxSpeed)
    .setThreadName(outputThreadName)
.build();

RecipeBuilder.newBuilder("impetusin", "impetuscore", 1, 2, true)
    .addImpetusInput(defaultTransferSpeed)
    .addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val dData = D(data);
        val speed = dData.getFloat("speed");
        ctrl.addPermanentModifier("impetusin", RecipeModifierBuilder.create("modularmachinery:impetus", "input", speed, 1, false).build());
    })
    .addPreCheckHandler(function(event as RecipeCheckEvent) {
        val ctrl = event.controller;
        val data = ctrl.customData;
        val dData = D(data);
        val speed = dData.getFloat("speed");
        ctrl.addPermanentModifier("impetusin", RecipeModifierBuilder.create("modularmachinery:impetus", "input", speed, 1, false).build());
    })
    .addFactoryPostTickHandler(function(event as FactoryRecipeTickEvent) {
        val ctrl = event.controller;
        val thread = event.factoryRecipeThread;
        val data = ctrl.customData;
        val map = data.asMap();
        val speed = isNull(map["speed"]) ? 1 as float : map["speed"].asFloat();
        receive(ctrl, data, map, speed, defaultTransferSpeed);
    })
    .setParallelized(false)
    .addSmartInterfaceDataInput("speed", minSpeed, maxSpeed)
    .setThreadName(inputThreadName)
.build();

function writeSmartInterfaceDataToCustomData(event as MachineTickEvent, minSpeed as float, maxSpeed as float) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    val map = data.asMap();
    val nullable = ctrl.getSmartInterfaceData("speed");
    var speed = isNull(nullable) ? 1 as float : nullable.value;

    if (speed < minSpeed) {
        nullable.value = 1;
    }

    map["speed"] = speed;
    ctrl.customData = data;
    ctrl.addPermanentModifier("impetusin", RecipeModifierBuilder.create("modularmachinery:impetus", "input", speed, 1, false).build());
    ctrl.addPermanentModifier("impetusout", RecipeModifierBuilder.create("modularmachinery:impetus", "output", speed, 1, false).build());
}
#提取元动能
function canExtract(map as IData[string], speed as float, defaultTransferAmount as long) as bool {
    val impetusstoredcore = isNull(map["impetusstoredcore"]) ? "0" : map["impetusstoredcore"].asString();
    val sz as string = "" + ((speed * defaultTransferAmount) as long);

    if (BigInteger(impetusstoredcore).compareTo(BigInteger(sz)) < 0) {
        return false;
    }
    return true;
}

#元动能存储
function receive(ctrl as IMachineController, data as IData, map as IData[string], speed as float, defaultTransferSpeed as long) {
    val impetusstoredcore = isNull(map["impetusstoredcore"]) ? "0" : map["impetusstoredcore"].asString();
    val sz as string = "" + ((speed * defaultTransferSpeed) as long);

    map["impetusstoredcore"] = BigInteger(impetusstoredcore).add(BigInteger(sz)).toString();
    ctrl.customData = data;
}

#输出仓输出
function extractimpetus(ctrl as IMachineController, data as IData, map as IData[string], speed as float, defaultTransferSpeed as long) {
    val impetusstoredcore = isNull(map["impetusstoredcore"]) ? "0" : map["impetusstoredcore"].asString();
    val sz as string = "" + ((speed * defaultTransferSpeed) as long);

    map["impetusstoredcore"] = BigInteger(impetusstoredcore).subtract(BigInteger(sz)).toString();
    ctrl.customData = data;
}
#格式化数据
function formatNumber(value as string) as string {
    var big as long = Big(BigInteger(value).abs()).asLong();
    var zf = "";
    if (value.startsWith("-")){
        zf += "-";
    }
    if (big < 1000) {
        return zf + value;
    } else if (big < 1000000) {
        return zf + (big / 1000) + "K";
    } else if (big < 1000000000) {
        return zf + ((big / 1000) as float / 1000) + "M";
    } else if (big < 1000000000000) {
        return zf + ((big / 1000000) as float / 1000) + "G";
    } else {
        val cfs = value.length() - 1;
        val cft = (1.00f * BigInteger(value.substring(0,3)).intValue()) / 100;

        return zf + cft + " * 10 ^ " + cfs;
    } 
}

#计算交互速度
function change(data as IData) as string{
    val dData = D(data);
    val oldtime = dData.getString("oldtime",0);
    val newtime = dData.getString("newtime",0);
    val newbig = BigInteger(newtime);
    val oldbig = BigInteger(oldtime);
    val changel = Big(newbig.subtract(oldbig)).asLong() / 1200;
    return formatNumber(changel);
}

#控制器UI
MMEvents.onControllerGUIRender("impetuscore",function(event as ControllerGUIRenderEvent){
    val ctrl = event.controller;
    val data = ctrl.customData;
    val dData = D(data);
    val speed= dData.getFloat("speed",0);
    val impetusstoredcore= dData.getString("impetusstoredcore",0);
    var info as string[] = [];
    info += "————————核心参数————————";
    info +=    "元动能存储量:" + impetusstoredcore;
    info += "————————io参数—————————";
    info += "   交互速度："+((speed * defaultTransferSpeed) as long)+"元动能/t";
    event.extraInfo = info;
});