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
import mods.modularmachinery.MachineStructureFormedEvent;
import native.java.math.BigInteger;

import crafttweaker.util.Math;
import mods.jei.JEI;

import mods.modularmachinery.MachineUpgradeHelper;
import mods.modularmachinery.MachineUpgradeBuilder;

val minSpeed = 0.01 as float;
val maxSpeed = 2147483647 as float;
val bx = 1 as int;

MachineModifier.setMaxThreads("impetuscore",0);

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

RecipeBuilder.newBuilder("impetuscore_storage","impetuscore",1)
    .addInputs([<thaumicaugmentation:material:3>*1])
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var maxydstorage = dData.getInt("maxydstorage",0);
        val map = data.asMap();
        map["maxydstorage"] = maxydstorage + 1000;
        event.controller.customData = data;
    })
    .addRecipeTooltip("加装元动单元")
    .build();

RecipeBuilder.newBuilder("impetuscore_input","impetuscore",1)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var ydstorage = dData.getInt("ydstorage",0);
        var maxydstorage = dData.getInt("maxydstorage",0);
        if 
            (ydstorage) >= (maxydstorage)||(maxydstorage) > (100000){
            event.setFailed("元动能已满");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var ydstorage = dData.getInt("ydstorage",0);
        var bx = dData.getInt("bx",0);
        var maxydstorage = dData.getInt("maxydstorage",0);
        val map = data.asMap();
        map["bx"] = maxydstorage/100;
        map["ydstorage"] = ydstorage + bx;
        event.activeRecipe.maxParallelism = bx;
        event.controller.customData = data;
    })
    .addImpetusInput(bx)
    .addRecipeTooltip("存入元动能")
    .build();

RecipeBuilder.newBuilder("impetuscore_output","impetuscore",1)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var bx = dData.getInt("bx",0);
        var ydstorage = dData.getInt("ydstorage",0);
        var maxydstorage = dData.getInt("maxydstorage",0);
        if
            ((ydstorage) < (bx)||(maxydstorage) > (100000)) {
            event.setFailed("元动能不足");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var ydstorage = dData.getInt("ydstorage",0);
        var speed = dData.getInt("speed",0);
        var bx = dData.getInt("bx",0);
        var maxydstorage = dData.getInt("maxydstorage",0);
        val map = data.asMap();
        map["bx"] = maxydstorage/100;
        map["ydstorage"] = ydstorage - maxydstorage/100;
        event.activeRecipe.maxParallelism = bx;
        event.controller.customData = data;
    })
    .addImpetusInput(bx)
    .addRecipeTooltip("输出元动能")
    .build();

RecipeBuilder.newBuilder("impetuscore_highinput","impetuscore",1)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var ydstorage = dData.getInt("ydstorage",0);
        var maxydstorage = dData.getInt("maxydstorage",0);
        if (ydstorage) >= (maxydstorage)||(maxydstorage) < 100000{
            event.setFailed("元动能上限不足或元动能已满");
            return;
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var ydstorage = dData.getInt("ydstorage",0);
        var speed = dData.getInt("speed",0);
        var bx = dData.getInt("bx",0);
        var maxydstorage = dData.getInt("maxydstorage",0);
        val map = data.asMap();
        map["bx"] = 1000;
        map["ydstorage"] = ydstorage + 1000;
        event.activeRecipe.maxParallelism = bx;
        event.controller.customData = data;
    })
    .addImpetusInput(bx)
    .addRecipeTooltip("存入元动能")
    .build();

RecipeBuilder.newBuilder("impetuscore_highoutput","impetuscore",1)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var bx = dData.getInt("bx",0);
        var ydstorage = dData.getInt("ydstorage",0);
        var maxydstorage = dData.getInt("maxydstorage",0);
        if ((ydstorage) < (bx))||(maxydstorage) < 100000{
            event.setFailed("元动能上限不足或元动能不足");
            return;
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var ydstorage = dData.getInt("ydstorage",0);
        var speed = dData.getInt("speed",0);
        var bx = dData.getInt("bx",0);
        var maxydstorage = dData.getInt("maxydstorage",0);
        val map = data.asMap();
        map["bx"] = 1000;
        map["ydstorage"] = ydstorage + 1000;
        event.activeRecipe.maxParallelism = bx;
        event.controller.customData = data;
    })
    .addImpetusInput(bx)
    .addRecipeTooltip("输出元动能")
    .build();

MachineModifier.addCoreThread("impetuscore",FactoryRecipeThread.createCoreThread("输入模块").addRecipe("impetuscore_input"));
MachineModifier.addCoreThread("impetuscore",FactoryRecipeThread.createCoreThread("输出模块").addRecipe("impetuscore_output"));
MachineModifier.addCoreThread("impetuscore",FactoryRecipeThread.createCoreThread("高能输入模块").addRecipe("impetuscore_highinput"));
MachineModifier.addCoreThread("impetuscore",FactoryRecipeThread.createCoreThread("高能输出模块").addRecipe("impetuscore_highoutput"));
MachineModifier.addCoreThread("impetuscore",FactoryRecipeThread.createCoreThread("核心装配模块").addRecipe("impetuscore_storage"));

#控制器UI
MMEvents.onControllerGUIRender("impetuscore",function(event as ControllerGUIRenderEvent){
    val ctrl = event.controller;
    val data = ctrl.customData;
    val dData = D(data);
    var maxydstorage= dData.getInt("maxydstorage",0);
    val speed= dData.getInt("speed",0);
    val ydstorage= dData.getInt("ydstorage",0);
    val bx= dData.getInt("bx",0);
    val map = data.asMap();
    var info as string[] = [];
    info += "————————核心参数————————";
    info +=  "元动能存储上限:" + maxydstorage;
    info +=    "元动能存储量:" + ydstorage;
    info += "————————io参数—————————";
    info += "   交互速度："+(bx)+"元动能/t";
    event.extraInfo = info;
});