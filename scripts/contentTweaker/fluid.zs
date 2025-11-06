#loader contenttweaker
#priority 8

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

function createFluid(name as string,color as string,density as int,vaporize as bool,temperature as int,luminosity as int,viscosity as int,stilllocation as string,gaseous as bool) {
    var fluid = VanillaFactory.createFluid(name, Color.fromHex("" + color).getIntColor());
    fluid.colorize = true;
    fluid.density = density;
    fluid.vaporize = vaporize;
    fluid.temperature = temperature;
    fluid.luminosity = luminosity;
    fluid.stillLocation = "base:fluids/" + stilllocation;
    fluid.flowingLocation = "base:fluids/liquid_flow";
    fluid.viscosity = viscosity;
    fluid.gaseous = gaseous;
    fluid.register();
}

//℃ +/- 273.15 = K

//createFluid("流体ID", 颜色,    行进速度, 地狱是否蒸发,  温度,         流明值,       流体粘性,   源头材质路径,    是否向上流动, "流体材料") 
//createFluid("name",  "color", density,  vaporize,    temperature,  luminosity,  viscosity, "stilllocation", gaseous,      gaseous) 

//共晶钾钠冷却液
createFluid("graphene_coolant_nak", "00eaff", 1500, false, 299, 0, 3000, "liquid", false);
//热共晶钾钠冷却液
createFluid("graphene_coolant_nak_hot", "ff5a00", 1500, false, 403, 5, 3000, "liquid", false);
//过热共晶钾钠冷却液
createFluid("graphene_coolant_nak_superheating", "ff2400", 1500, false, 403, 5, 3000, "liquid", false);

//液态能量
createFluid("liquid_energy", "e90000", 6000, true, 435, 5, 3000, "liquid", false);
//致密液态能量
createFluid("dense_liquid_energy", "ad0000", 6000, false, 570, 10, 6000, "liquid", false);

//乳化切削液
createFluid("emulsified_cutting_fluids", "ffffff", 200, true, 435, 5, 1200, "liquid", false);
//乳化切削废液
createFluid("emulsified_cutting_waste_fluids", "a9a9a9", 400, true, 570, 10, 2400, "liquid", false);
//切削油
createFluid("cutting_oil", "ffe360", 300, false, 435, 5, 1300, "liquid", false);
//切削废油
createFluid("cutting_waste_oil", "6e5622", 600, false, 570, 10, 2600, "liquid", false);

//浓稠的粗制药水
createFluid("thick_crude_potion", "5367e2", 600, false, 570, 10, 2600, "liquid", false);


var space_time_fluids = VanillaFactory.createFluid("space_time_fluids", Color.fromHex("000000").getIntColor());//时空流体
space_time_fluids.flowingLocation = "contenttweaker:fluids/space_time_fluids";
space_time_fluids.stillLocation = "contenttweaker:fluids/space_time_fluids";
space_time_fluids.temperature = 1500;
space_time_fluids.luminosity = 1;
space_time_fluids.density = 10000;
space_time_fluids.colorize = false;
space_time_fluids.viscosity = 1;
space_time_fluids.register();



//------------------------------------------------------===[资源]===--------------------------------------------------------

//createFluid("流体ID", 颜色,    行进速度, 地狱是否蒸发,  温度,         流明值,       流体粘性,   源头材质路径,    是否向上流动) 
//createFluid("name",  "color", density,  vaporize,    temperature,  luminosity,  viscosity, "stilllocation", gaseous) 

//液化天然气
createFluid("natural_gas","ffffff", 3000, false, 303,0,100, "liquid", false);

//轻质原油
createFluid("light_crude","241903", 2500, false, 303,0,2500, "liquid", false);
# 重质原油
createFluid("heavy_sut_residue_oil","000000", 8000, false, 303,0,8000, "molten", false);
# 液化石油气
createFluid("gas_oill","0f0f0e", 10, false, 303,0,1500, "liquid", true);
# 汽油
createFluid("c6h14","0f0f0e", 1900, false, 303,0,1500, "liquid", false);
# 煤油
createFluid("kerosene","0f0f0e", 2500, false, 303,0,500, "liquid", false);
# 瓦斯油
createFluid("gas_oil","0f0f0e", 10, false, 303,0,250, "liquid", false);
# 渣油
createFluid("residuum","000000", 10000, false, 303,0,6000, "liquid", false);



# 环烷烃
createFluid("naphthenes","0f0f0e", 3000, false, 303,0,100, "liquid", false);
# 苯
createFluid("benzene","ffffff", 3000, false, 303,0,100, "liquid", false);
# 二甲苯
createFluid("oxylene","ffffff", 3000, false, 303,0,100, "liquid", false);

//===--------------------------------[核化工]----------------------------------===
# 钍-氟锂铍熔融燃料盐
createFluid("fuel_tbu_fluoride_flibe","b1fbaa", 3000, false, 303,0,100, "liquid", false);

//===--------------------------------[熔融金属]----------------------------------===
# 熔融不锈钢
createFluid("melted_stainless_steel","f67213", 3000, false, 1803,10,100, "molten", false);



//===--------------------------------[冷媒系列]----------------------------------===
# R12冷媒
createFluid("r12_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);
# R22冷媒
createFluid("r22_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);
# R125冷媒
createFluid("r125_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);
# R134a冷媒
createFluid("r134_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);
# R1234ze冷媒
createFluid("r1234ze_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);
# R407c冷媒
createFluid("r407_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);
# R410a冷媒
createFluid("r410_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);
# R290冷媒
createFluid("r290_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);
# R32冷媒
createFluid("r32_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);

# HOF-1234yf冷媒
createFluid("hof_1234yf_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);
# HOF-1233zd冷媒
createFluid("hof_1233zd_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);
# HOF-1234ze冷媒
createFluid("hof_1234ze_refrigerant","ffffff", 3000, true, 233,0,1, "liquid", true);

//----------------------------------------------------===[三氟化氮]===--------------------------------------------------------

//createFluid("流体ID", 颜色,    行进速度, 地狱是否蒸发,  温度,         流明值,       流体粘性,   源头材质路径,    是否向上流动) 
//createFluid("name",  "color", density,  vaporize,    temperature,  luminosity,  viscosity, "stilllocation", gaseous) 

//氟化氢
createFluid("hydrogen_fluoride","ffffff", 3000, false, 303,0,100, "liquid", false);
# 氨-氟化氢熔融盐
createFluid("nh3_xhf_moltensalt","fff5a6", 3000, false, 303,0,200, "liquid", false);
# 三氟化氮
createFluid("nitrogen_trifluoride","ffffff", 100, false, 303,0,100, "liquid", true);

//----------------------------------------------------===[六氟化钨]===--------------------------------------------------------

//createFluid("流体ID", 颜色,    行进速度, 地狱是否蒸发,  温度,         流明值,       流体粘性,   源头材质路径,    是否向上流动) 
//createFluid("name",  "color", density,  vaporize,    temperature,  luminosity,  viscosity, "stilllocation", gaseous) 

//二氯化钨
createFluid("tungsten_dichloride","d5b01e", 3000, false, 303,0,1500, "liquid", false);
# 三氯化钨
createFluid("tungsten_trichloride","915418", 3000, false, 303,0,1500, "liquid", false);
# 四氯化钨
createFluid("tungsten_tetrachloride","1f1104", 3000, false, 303,0,1500, "liquid", false);
# 五氯化钨
createFluid("tungsten_pentachloride","1f1104", 3000, false, 303,0,1500, "liquid", false);
# 六氯化钨
createFluid("tungsten_hexachloride","3d1fad", 3000, false, 303,0,1500, "liquid", false);
# 钨溶液
createFluid("tungsten_solution","cedf5c", 3000, false, 303,0,1500, "liquid", false);

//----------------------------------------------------===[六氟丁二烯]===--------------------------------------------------------

//createFluid("流体ID", 颜色,    行进速度, 地狱是否蒸发,  温度,         流明值,       流体粘性,   源头材质路径,    是否向上流动) 
//createFluid("name",  "color", density,  vaporize,    temperature,  luminosity,  viscosity, "stilllocation", gaseous) 

# 四氯乙烯
createFluid("tetrachloroethylene","ffffff", 3000, false, 303,0,100, "liquid", false);
# 三氯乙烯
createFluid("trichloroethylene","ffffff", 3000, false, 303,0,100, "liquid", false);
# 四氟二碘乙烷
createFluid("tetrafluorodiiodoethane","ea50da", 3000, false, 303,0,100, "liquid", true);
# 四氟二溴乙烷
createFluid("tetrafluorodibromoethane","ffffff", 3000, false, 303,0,100, "liquid", true);
# 八氟二碘丁烷
createFluid("octafluorodiiodobutane","ffffff", 3000, false, 303,0,100, "liquid", true);
# 八氟二溴丁烷
createFluid("dibromooctafluorobutane","ffffff", 3000, false, 303,0,100, "liquid", true);
# 三氟乙烯基溴化锌
createFluid("zinc_trifluorovinyl_bromide","fbcdff", 3000, false, 303,0,100, "liquid", false);
# 三氟乙烯基氯化锌
createFluid("trifluorovinyl_zinc_fluoride","ffffff", 3000, false, 303,0,100, "liquid", false);

//----------------------------------------------------------------------------------------------------------------

//createFluid("流体ID", 颜色,    行进速度, 地狱是否蒸发,  温度,         流明值,       流体粘性,   源头材质路径,    是否向上流动) 
//createFluid("name",  "color", density,  vaporize,    temperature,  luminosity,  viscosity, "stilllocation", gaseous) 

//硅烷
createFluid("silanes","ffffff", 3000, false, 11,0,100, "liquid", true);
# 一氧化二氮
createFluid("Nitrous_A1_Oxide","8fbdf4", 3000, false, 303,0,100, "liquid", false);
# 磷烷
createFluid("phosphine","ffffff", 3000, false, 303,0,100, "liquid", true);
# 三氟化氯
createFluid("chlorine_trifluoride","e2ed67", 3000, false, 303,0,100, "liquid", false);
# 液化氪
createFluid("krypton","ffffff", 3000, false, 303,0,100, "liquid", true);
# 液化氙
createFluid("xenon","ffffff", 3000, false, 303,0,100, "liquid", true);
# 液化氖
createFluid("neon","ffffff", 3000, false, 303,0,100, "liquid", true);
# 液化氩
createFluid("argon","ffffff", 3000, false, 303,0,100, "liquid", true);
# 液化氨
createFluid("ammonia","ffffff", 3000, false, 303,0,100, "liquid", true);
# 液氮
createFluid("nitrogen","ffffff", 3000, false, 303,0,100, "liquid", true);

//----------------------------------------------------===[光刻混合气]===--------------------------------------------------------

//createFluid("流体ID", 颜色,    行进速度, 地狱是否蒸发,  温度,         流明值,       流体粘性,   源头材质路径,    是否向上流动) 
//createFluid("name",  "color", density,  vaporize,    temperature,  luminosity,  viscosity, "stilllocation", gaseous) 

//氩/氖/氙混合气
createFluid("ar_ne_xe_5n","c2f3e8", 3000, false, 303,0,100, "liquid", false);
# 氪/氖混合气
createFluid("kr_ne_5n","c2f3cd", 3000, false, 303,0,100, "liquid", false);
# 氟/氪/氖混合气
createFluid("f2_kr_ne_5n","cef3c2", 3000, false, 303,0,100, "liquid", false);
# 氟/氩/氖混合气
createFluid("f2_ar_ne_5n","d2d7d", 3000, false, 303,0,100, "liquid", false);

//----------------------------------------------------===[化学品杂项]===--------------------------------------------------------

//createFluid("流体ID", 颜色,    行进速度, 地狱是否蒸发,  温度,         流明值,       流体粘性,   源头材质路径,    是否向上流动) 
//createFluid("name",  "color", density,  vaporize,    temperature,  luminosity,  viscosity, "stilllocation", gaseous) 

//盐酸
createFluid("direct_method_handle_accessor","f2e8a3", 3000, false, 303,0,100, "liquid", false);
# 四氯化硅
createFluid("silicon_tetrachloride","8fbdf4", 3000, false, 303,0,100, "liquid", false);
# 四氟硼酸
createFluid("tetrafluororonic_acid","857c1b", 3000, false, 303,0,100, "liquid", false);
# 液化空气
createFluid("pressurized_air","ffffff", 3000, false, 303,0,100, "liquid", false);
# 液化末地空气
createFluid("pressurized_air_ender","dea2ed", 3000, false, 303,0,100, "liquid", false);
# 液化地狱空气
createFluid("pressurized_air_hell","dc6c11", 3000, false, 303,0,100, "liquid", false);
# 液化龙息
createFluid("pressurized_dragon_breath","ad18d2", 3000, false, 303,0,100, "liquid", false);



/*
//23333333333
createFluid("23333333333","ffffff",303,0,100, "liquid", false);
# 23333333333
createFluid("23333333333","ffffff",303,0,100, "liquid", false);
*/