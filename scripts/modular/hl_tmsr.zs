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
import mods.jei.JEI;


val maxheat = 1500 as float;
val minheat = 0 as float;
val maxcapacity = 1 as float;
val maxctrltion = 1 as float;
val minctrltion = 0 as float;


MachineModifier.setMaxParallelism("TMSR", 200);
MachineModifier.setMaxThreads("TMSR",0);

RecipeBuilder.newBuilder("assemblyplant_tmsr","assemblyplant",600)
	.addEnergyPerTickInput(400000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<nuclearcraft:fission_controller_new_fixed>*2,
		<ic2:te:22>*2,
	])
	.addItemOutput(<modularmachinery:tmsr_factory_controller>*1)
	.build();

recipes.addShaped(<modularmachinery:tmsr_factory_controller>, 
[[null,null,null],
[null,<modularmachinery:tmsr-dev_factory_controller>,null],
[null,null,null]]);

MachineModifier.addSmartInterfaceType("TMSR",
    SmartInterfaceType.create("ctrltion", 0)
        .setHeaderInfo("目标反应率 默认 100%")
        .setNotEqualMessage("数值不在范围内")
);

function writeSmartInterfaceDataToCustomData(event as MachineTickEvent, minctrltion as float, maxctrltion as float) {
    val ctrl = event.controller;
    val data = ctrl.customData;
    var dData= D(data);
    val map = data.asMap();
    val nullable = ctrl.getSmartInterfaceData("ctrltion");
    var ctrltion = isNull(nullable) ? 1 as float : nullable.value;
    if (ctrltion < minctrltion || ctrltion > maxctrltion) {
        nullable.value = 1;
    }
    map["ctrltion"] = ctrltion;
    ctrl.customData = data;
}

MMEvents.onMachinePostTick("TMSR", function(event as MachineTickEvent) {
    writeSmartInterfaceDataToCustomData(event, minctrltion, maxctrltion);
});

MMEvents.onStructureFormed("TMSR", function(event as MachineStructureFormedEvent) {
        val data = event.controller.customData;
        var dData = D(data);
        val map = data.asMap();
        var h = dData.getFloat("heat",0);
        var c = dData.getFloat("ctrltion",0);
        map["heat"] = 300.0;//初始化温度为300K
        map["neutronflux"] = (5*c);//中子通量初始化
        event.controller.customData = data;
});

RecipeBuilder.newBuilder("TMSR_input_th","TMSR",200)
    .setParallelized(false)
    .addInputs([
        <liquid:fuel_tbu_fluoride_flibe>*2304
    ])
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var Thc = dData.getFloat("Thconcentration",0);
        var Uc = dData.getFloat("Uconcentration",0);
        if (Thc+Uc) + 0.05 > (maxcapacity){
            event.setFailed("无法继续加入");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var Thconcentration = dData.getFloat("Thconcentration",0);
        val map = data.asMap();
        map["Thconcentration"] = Thconcentration + 0.005;
        event.controller.customData = data;
    })
    .addRecipeTooltip("向反应堆添加0.5%的钍-232燃料")
    .build();

    RecipeBuilder.newBuilder("TMSR_input_u","TMSR",200)
    .setParallelized(false)
    .addInputs([
        <ore:ingotUranium233>*16
    ])
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var Thc = dData.getFloat("Thconcentration",0);
        var Uc = dData.getFloat("Uconcentration",0);
        if (Thc+Uc) + 0.05 > (maxcapacity){
            event.setFailed("无法继续加入");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var Uconcentration = dData.getFloat("Uconcentration",0);
        val map = data.asMap();
        map["Uconcentration"] = Uconcentration + 0.005;
        event.controller.customData = data;
    })
    .addRecipeTooltip("向反应堆添加0.5%的铀-233燃料")
    .build();
    

RecipeBuilder.newBuilder("TMSR_run", "TMSR",2000)
    .setParallelized(false)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var Thc = dData.getFloat("Thconcentration",0);
        var Uc = dData.getFloat("Uconcentration",0);
        if ((Thc <= 0) || (Uc <= 0))  {
            event.setFailed("燃料不足");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var c = dData.getFloat("ctrltion",0);
        var Thc = dData.getFloat("Thconcentration",0);
        var Uc = dData.getFloat("Uconcentration",0);
        var h = dData.getFloat("heat",0);
        var n = dData.getFloat("neutronflux",0);//中子通量
        var ca = dData.getFloat("capacity",0);
        var thck = dData.getFloat("thck",0);//钍燃料比例
        var uck = dData.getFloat("uck",0);//铀燃料比例
        var hck = dData.getFloat("hck",0);//温度系数
        val map = data.asMap();
        map["thck"] = Math.log(n/(Thc+Uc));
        map["uck"] = Math.log((n/Thc+Uc)*Uc);
        map["hck"] = Math.log(300/((h+(-296))+2.7));
        map["neutronflux"] =(0.0144*thck)*Thc+(0.0036*uck)*c*hck+(5*c);//(钍基础系数x钍燃料比例)*钍燃料浓度+(铀基础系数x铀燃料比例)*铀燃料浓度*反应速率*温度系数*(5*反应速率)
        map["Thconcentration"] =Thc-(n*((Thc)/(Thc+Uc))*0.0144);//钍燃料浓度-(中子通量((钍燃料浓度)/(钍燃料浓度+铀燃料浓度))*中子通量系数)
        map["Uconcentration"] =Uc+(n*((Thc)/(Thc+Uc))*0.0144);//铀燃料浓度-(中子通量((铀燃料浓度)/(钍燃料浓度+铀燃料浓度))*中子通量系数)
        map["heat"] =h+(n*0.95*(h+300)/296);//温度计算公式
        event.controller.customData = data;
    })
    .addRecipeTooltip("钍会按一定比例转化为铀，并产出热量")
    .addRecipeTooltip("反应相关参数请参考控制器JEI描述")
    .build();

RecipeBuilder.newBuilder("TMSR_ccrun", "TMSR",2000)
    .setParallelized(false)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData= D(data);
        var Thc = dData.getFloat("Thconcentration",0);
        var Uc = dData.getFloat("Uconcentration",0);
        if (Uc <= 0.005)  {
            event.setFailed("铀不足");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var Uc = dData.getFloat("Uconcentration",0);
        var n = dData.getFloat("neutronflux",0);
        var Thc = dData.getFloat("Thconcentration",0);
        var cc = dData.getFloat("scrapsconcentration",0);
        val map = data.asMap();
        map["Uconcentration"] =Uc-(n*((Uc)/(Thc+Uc))*0.0036);//铀燃料衰变
        map["scrapsconcentration"] =cc+(n*((Uc)/(Thc+Uc))*0.0036);
        event.controller.customData = data;
    })
    .addRecipeTooltip("铀会根据一定比例衰变为核废料")
    .addRecipeTooltip("反应相关参数请参考控制器JEI描述")
    .build();



RecipeBuilder.newBuilder("TMSR_J","TMSR",1)
	.addInput(<liquid:water>*100000)
.addPreCheckHandler(function(event as RecipeCheckEvent){
    val data = event.controller.customData;
    var dData = D(data);
    var bx = 1;
    var h = dData.getFloat("heat",0);
    val map = data.asMap();
    map["bx"] = Math.floor(h/10);
    map["bx"] = bx;
    if (h < 500){
        event.setFailed("温度过低");
    }
    event.activeRecipe.maxParallelism = bx +(-30);
    event.controller.customData = data;
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
    val data = event.controller.customData;
    var dData = D(data);
    var h = dData.getFloat("heat",0);
    val map = data.asMap();
    map["heat"] = h*0.9;//每次损失10%的温度
})
.addOutput(<liquid:carbon_dioxide>*100000)
.addRecipeTooltip("每10K提供1并行。")
.addRecipeTooltip("反应相关参数请参考控制器JEI描述")
.build();

RecipeBuilder.newBuilder("TMSR_u_out","TMSR",600)
    .setParallelized(false)
    .addPreCheckHandler(function(event as RecipeCheckEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var Uc = dData.getFloat("Uc",0);
        if (Uc < 0.305){
            event.setFailed("铀浓度过低，无法开始提取,或无法继续提取");
        }
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
        val data = event.controller.customData;
        var dData = D(data);
        var Uc = dData.getFloat("Uconcentration",0);
        val map = data.asMap();
        map["Uconcentration"] = Uc-(0.005);
        event.controller.customData = data;
    })
    .addOutput(<liquid:uranium_233>*2304)
    .addRecipeTooltip("每次工作提取0.5%的铀")
    .addRecipeTooltip("此配方可提取反应堆铀至30.5%，请控制铀浓度")
    .build();

RecipeBuilder.newBuilder("TMSR_cc_out","TMSR",200)
.setParallelized(false)
.addPreCheckHandler(function(event as RecipeCheckEvent){
    val data = event.controller.customData;
    var dData = D(data);
    var cc = dData.getFloat("scrapsconcentration",0);
    val map = data.asMap();
    if (cc <0.1){
        event.setFailed("废料过少");
    }
})
.addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
    val data = event.controller.customData;
    var dData = D(data);
    var cc = dData.getFloat("scrapsconcentration",0);
    val map = data.asMap();
    map["scrapsconcentration"] = cc-(0.05);
    event.controller.customData = data;
})
.addRecipeTooltip("废料输出")
.addOutput(<nuclearcraft:plutonium:2>*16)
.addOutput(<nuclearcraft:americium:2>*8)
.addOutput(<nuclearcraft:plutonium:6>*16)
.addOutput(<nuclearcraft:neptunium:6>*24)
.build();

MachineModifier.addCoreThread("TMSR",FactoryRecipeThread.createCoreThread("燃料反应").addRecipe("TMSR_run"));
MachineModifier.addCoreThread("TMSR",FactoryRecipeThread.createCoreThread("燃料衰变").addRecipe("TMSR_ccrun"));
MachineModifier.addCoreThread("TMSR",FactoryRecipeThread.createCoreThread("燃料注入-钍").addRecipe("TMSR_input_th"));
MachineModifier.addCoreThread("TMSR",FactoryRecipeThread.createCoreThread("燃料注入-铀").addRecipe("TMSR_input_u"));
MachineModifier.addCoreThread("TMSR",FactoryRecipeThread.createCoreThread("热交换模块").addRecipe("TMSR_J"));
MachineModifier.addCoreThread("TMSR",FactoryRecipeThread.createCoreThread("铀提取").addRecipe("TMSR_u_out"));
MachineModifier.addCoreThread("TMSR",FactoryRecipeThread.createCoreThread("废料输出").addRecipe("TMSR_cc_out"));

MMEvents.onControllerGUIRender("TMSR",function(event as ControllerGUIRenderEvent){
    val ctrl = event.controller;
    val data = ctrl.customData;
    val dData = D(data);
    val Thconcentration= dData.getFloat("Thconcentration",0);
    val Uconcentration= dData.getFloat("Uconcentration",0);
    val scrapsconcentration= dData.getFloat("scrapsconcentration",0);
    val neutronflux=dData.getFloat("neutronflux",0);
    val heat= dData.getFloat("heat",0);
    val ctrltion = dData.getFloat("ctrltion",0);
    var info as string[] = [];
    info += "————————堆芯参数————————";
    info +=    "钍-232浓度:" + Thconcentration*100 +"%";
    info +=    "铀-233浓度:" + Uconcentration*100 +"%";
    info +=    "核废料浓度:" + scrapsconcentration*100 +"%";
    info +=    "当前温度:"+heat+"K";
    info +=    "反应速率:"+ctrltion*100+"%";
    info += "————————产出监控————————";
    info += "   产出速率:"+ (Math.floor(heat/10)+(-30))*100000 +"mb/t";//修改此项需修改198,210,220行
    event.extraInfo = info;
    });

JEI.addDescription(<modularmachinery:tmsr_factory_controller>,"
钍基熔盐反应堆反应系数等介绍：发热量与燃料消耗速度取决于中子通量,
中子通量计算公式为:{钍燃料系数xln[中子通量/(钍浓度+铀浓度)]x钍浓度+铀燃料系数xln[(中子通量/钍浓度+铀浓度)x铀浓度]}x反应速率xln(300/(当前热量-300)+2.7)+5x反应速率,
产热公式:中子通量x0.95x(当前热量+300)/300,
钍燃料转化公式:钍浓度-(中子通量x((钍浓度)/(钍浓度+铀浓度))*钍燃料系数),
铀燃料转化公式:铀浓度-(中子通量x((钍浓度)/(钍浓度+铀浓度))*钍燃料系数),
衰变速率公式:废料浓度+(中子通量*((铀浓度)/(钍浓度+铀浓度))*铀燃料系数)");