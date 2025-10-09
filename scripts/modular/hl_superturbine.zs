import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.MachineUpgradeBuilder;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.MachineStructureFormedEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import crafttweaker.util.Math;

MachineModifier.setMaxParallelism("STI", 2147483647);
MachineModifier.setMaxThreads("STI",0);

RecipeBuilder.newBuilder("assemblyplant_sit","assemblyplant",600)
	.addEnergyPerTickInput(800000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<mets:te:4>*2,
		<mekanismgenerators:generator:7>*8
	])
	.addItemOutput(<modularmachinery:sti_factory_controller>*1)
	.build();

RecipeBuilder.newBuilder("STI_iz","STI",1)
    .setParallelized(false)
    .addInputs([
        <mekanismgenerators:turbineblade>*16
    ])
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var zs = dData.getFloat("rotorfactor",0);
        if (zs > 0) {
            event.setFailed("转子装配完毕");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var zs = dData.getFloat("rotorfactor",0);
        val map = data.asMap();
        map["rotorfactor"] = zs + 1;
        event.controller.customData = data;
    })
    .addRecipeTooltip("装配转子")
    .addRecipeTooltip("不同的转子系数不同")
    .build();

RecipeBuilder.newBuilder("STI_rl","STI",1)
    .setParallelized(false)
    .addInputs([
        <liquid:cryotheum>*2000
    ])
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var h = dData.getFloat("heat",0);
        if (h > 266) {
            event.setFailed("无法继续冷却");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var h = dData.getFloat("heat",0);
        val map = data.asMap();
        map["heat"] = h + 10;
        event.controller.customData = data;
    })
    .addRecipeTooltip("降低线圈温度")
    .build();

RecipeBuilder.newBuilder("STI_i","STI",200)
    .setParallelized(false)
    .addInputs([
        <liquid:steam>*1600000
    ])
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var h = dData.getFloat("heat",0);
        var zs = dData.getFloat("rotorfactor",0);
        if ((h > 236)||(zs < 0)){
            event.setFailed("线圈温度达标,启用超导模式");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var rs = dData.getLong("rotatespeed",0);
        var zs = dData.getFloat("rotorfactor",0);
        val map = data.asMap();
        map["rotatespeed"] = rs+16+(16*zs);
        map["rotatespeed"] = rs - rs*0.5;
        event.controller.customData = data;
    })
    .addRecipeTooltip("增加涡轮的转速")
    .addRecipeTooltip("每次运行配方损失10%的转速")
    .build();

RecipeBuilder.newBuilder("STI_ci","STI",200)
    .setParallelized(false)
    .addInputs([
        <liquid:steam>*1600000
    ])
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var zs = dData.getFloat("rotorfactor",0);
        var h = dData.getFloat("heat",0);
        if ((h < 236) || (zs < 0)){
            event.setFailed("线圈温度过高,启用常规模式");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var rs = dData.getLong("rotatespeed",0);
        var h = dData.getFloat("heat",0);
        var zs = dData.getFloat("rotorfactor",0);
        val map = data.asMap();
        map["rotatespeed"] = rs+24+(24*zs);
        map["heat"] = h +(-2);
        event.controller.customData = data;
    })
    .addRecipeTooltip("增加涡轮的转速")
    .addRecipeTooltip("超导模式下涡轮转速增加50%")
    .addRecipeTooltip("超导模式下涡轮转速不会损失")
    .build();
    

RecipeBuilder.newBuilder("STI_eo","STI",20)
.addPreCheckHandler(function(event as RecipeCheckEvent){
    val data = event.controller.customData;
    var dData = D(data);
    var bx = dData.getFloat("bx",0);
    var h = dData.getFloat("heat",0);
    var rs = dData.getFloat("rotatespeed",0);
    val map = data.asMap();
    map["bx"] = Math.floor(rs/10);
    if (rs < 100){
        event.setFailed("转速过低");
    }
    event.activeRecipe.maxParallelism = bx;
    event.controller.customData = data;
    })
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var h = dData.getFloat("heat",0);
        var bx = dData.getFloat("bx",0);
        val map = data.asMap();
        map["heat"] = h +(0);
        event.controller.customData = data;
    })
    .addRecipeTooltip("每10r/t转速提供1并行。")
    .addEnergyPerTickOutput(400000)
    .build();

MachineModifier.addCoreThread("STI",FactoryRecipeThread.createCoreThread("涡轮转子装配模块").addRecipe("STI_iz"));
MachineModifier.addCoreThread("STI",FactoryRecipeThread.createCoreThread("涡轮线圈冷却模块").addRecipe("STI_rl"));
MachineModifier.addCoreThread("STI",FactoryRecipeThread.createCoreThread("涡轮-常规模式").addRecipe("STI_i"));
MachineModifier.addCoreThread("STI",FactoryRecipeThread.createCoreThread("涡轮-超导模式").addRecipe("STI_ci"));
MachineModifier.addCoreThread("STI",FactoryRecipeThread.createCoreThread("涡轮能量转换模块").addRecipe("STI_eo"));

MMEvents.onControllerGUIRender("STI",function(event as ControllerGUIRenderEvent){
    val ctrl = event.controller;
    val data = ctrl.customData;
    val dData = D(data);
    val rs= dData.getFloat("rotatespeed",0);
    val heat= dData.getFloat("heat",0);
    val bx = dData.getFloat("bx",0);
    var info as string[] = [];
    info += "————————涡轮参数————————";
    info +=    "转子转速:" + rs +"r/min";
    info +=    "当前线圈温度:"+ (296+(-heat)) +"K";
    info += "————————产出监控————————";
    info += "   产出速率:"+ (bx*400000) +"RF/s";
    event.extraInfo = info;
    });