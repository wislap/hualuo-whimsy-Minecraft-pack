#loader contenttweaker
#priority 11

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.IBlockAction;
import mods.contenttweaker.IBlockColorSupplier;
import mods.contenttweaker.IBlockFaceSupplier;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlockPattern;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockStateMatcher;
import crafttweaker.block.IMaterial;
import crafttweaker.block.IMobilityFlag;
import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.IItemColorSupplier;
import mods.contenttweaker.PushReaction;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.SoundType;

val zsTab as CreativeTab = VanillaFactory.createCreativeTab("atomicfurnace_revolve_block", <item:contenttweaker:coil_12_energetic_alloys_coil>);
zsTab.register();

function createDirectionalBlock(name1 as string,revolve1 as string,fullBlock1 as bool,lightOpacity1 as int,translucent1 as bool,lightValue1 as int,hardness1 as int,resistance1 as int,toolclass1 as string,toollevel1 as int,soundtype1 as SoundType,planeRotatable as bool) {
    val block as Block = VanillaFactory.createDirectionalBlock(name1, <blockmaterial:iron>, revolve1, planeRotatable);//旋转方块
    block.fullBlock = fullBlock1;
    block.setLightOpacity(lightOpacity1);
    block.translucent = translucent1;
    block.setLightValue(lightValue1);
    block.setBlockHardness(hardness1);
    block.setBlockResistance(resistance1);
    block.setToolClass(toolclass1);
    block.setToolLevel(toollevel1);
    block.setBlockSoundType(soundtype1);
    block.creativeTab = <creativetab:atomicfurnace_revolve_block>;
    block.register();
}

//registerItem("方块ID", "旋转方式", 是否完整， 遮光度:0~255, 是否透光， 亮度等级, 挖掘时间, 防爆强度, "挖掘工具", <soundtype:方块声音>);

//铜线圈
createDirectionalBlock("coil_01_copper_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
//T2-紫铜线圈
createDirectionalBlock("coil_01_02_t2_copper_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 金线圈
createDirectionalBlock("coil_02_gold_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 钢线圈
createDirectionalBlock("coil_03_iron_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铱线圈
createDirectionalBlock("coil_04_iridium_coil", "ALL", true, 255, false, 0, 7.5, 200, "pickaxe", 3, <soundtype:metal>, false);
# 银线圈
createDirectionalBlock("coil_05_01_silver_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 琥珀金线圈
createDirectionalBlock("coil_05_02_electrum_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 青铜线圈
createDirectionalBlock("coil_05_03_bronze_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 信素线圈
createDirectionalBlock("coil_05_04_cherominee_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 末影线圈
createDirectionalBlock("coil_05_05_ender_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 镍线圈
createDirectionalBlock("coil_06_nickel_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铝线圈
createDirectionalBlock("coil_07_aluminum_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铅线圈
createDirectionalBlock("coil_08_lead_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铂线圈
createDirectionalBlock("coil_09_platinum_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 磁钢线圈
createDirectionalBlock("coil_10_01_magnet_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 魂钢线圈
createDirectionalBlock("coil_10_02_soulsteel_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 充能铁线圈
createDirectionalBlock("coil_11_energized_iron_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 充能合金线圈
createDirectionalBlock("coil_12_energetic_alloys_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 脉冲合金线圈
createDirectionalBlock("coil_13_pulse_alloys_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 末影钢线圈
createDirectionalBlock("coil_14_ender_steel_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 充能银线圈
createDirectionalBlock("coil_15_charged_silver_coil", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 生动合金线圈
createDirectionalBlock("coil_16_vivid_alloys_coil", "ALL", true, 255, false, 0, 7.5, 60, "pickaxe", 3, <soundtype:metal>, false);
# 晶化合金线圈
createDirectionalBlock("coil_17_crystallized_alloys_coil", "ALL", true, 255, false, 0, 7.5, 76, "pickaxe", 3, <soundtype:metal>, false);
# 旋律合金线圈
createDirectionalBlock("coil_18_melody_alloys_coil", "ALL", true, 255, false, 0, 7.5, 1000, "pickaxe", 3, <soundtype:metal>, false);
# 恒星合金线圈
createDirectionalBlock("coil_19_fixed_star_alloys_coil", "ALL", true, 255, false, 0, 7.5, 1200, "pickaxe", 3, <soundtype:metal>, false);
# 锇线圈
createDirectionalBlock("coil_20_osmium_coil", "ALL", true, 255, false, 0, 7.5, 200, "pickaxe", 16, <soundtype:metal>, false);
# 铱锇合金线圈
createDirectionalBlock("coil_21_iridium_osmium_alloy_coil", "ALL", true, 255, false, 0, 7.5, 380, "pickaxe", 3, <soundtype:metal>, false);
# 无尽线圈
createDirectionalBlock("coil_100_infinite_coil", "ALL", true, 255, false, 0, 7.5, 3600000, "pickaxe", 3, <soundtype:metal>, false);
# 时空线圈
createDirectionalBlock("coil_101_space_time_coil", "ALL", true, 255, false, 0, 7.5, 3600000.8, "pickaxe", 3, <soundtype:metal>, false);
# 时空凝结块
createDirectionalBlock("space_time_condensation_block", "ALL", true, 255, false, 0, 7.5, 3600000.8, "pickaxe", 3, <soundtype:metal>, false);
# 飞龙线圈
createDirectionalBlock("coil_22_fl_coil", "ALL", true, 255, false, 0, 7.5, 60, "pickaxe", 3, <soundtype:metal>, false);
# 神龙线圈
createDirectionalBlock("coil_23_sl_coil", "ALL", true, 255, false, 0, 7.5, 76, "pickaxe", 3, <soundtype:metal>, false);
# 等离子体约束线圈-超导合金
createDirectionalBlock("fusion_reactor_coils_pulse_alloys", "ALL", true, 255, true, 0, 7.5, 25, "pickaxe", 3, <soundtype:metal>, false);

# C1型离子激光器
createDirectionalBlock("las_cio_large_lasers", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# B1型离子激光器
createDirectionalBlock("las_bio_large_lasers", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# A1型离子激光器
createDirectionalBlock("las_aio_large_lasers", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# S1型离子激光器
createDirectionalBlock("las_sio_large_lasers", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# Z1型离子激光器
createDirectionalBlock("las_zio_large_lasers", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# Y1型离子激光器
createDirectionalBlock("las_yio_large_lasers", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);

# 中子空间约束场
createDirectionalBlock("neutron_space_force_field_constraint_framework_longitudinal", "ALL", true, 255, false, 0, 7.5, 2400, "pickaxe", 3, <soundtype:metal>, false);
# 中子空间力场控制柱
createDirectionalBlock("neutron_space_force_field_control_columns_longitudinal", "ALL", true, 255, false, 0, 7.5, 2400, "pickaxe", 3, <soundtype:metal>, false);
# 中子空间力场连接块
createDirectionalBlock("neutron_space_force_field_control_bus", "ALL", true, 255, false, 0, 7.5, 2400, "pickaxe", 3, <soundtype:metal>, false);

# 铜-轮盘线圈组
createDirectionalBlock("roulette_coil_set_copper", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 银-轮盘线圈组
createDirectionalBlock("roulette_coil_set_silver", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铱合金-轮盘线圈组
createDirectionalBlock("roulette_coil_set_iridium", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 超级铱合金-轮盘线圈组
createDirectionalBlock("roulette_coil_set_super_iridium", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 脉冲合金-轮盘线圈组
createDirectionalBlock("roulette_coil_set_pulse_alloys", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 恒星合金-轮盘线圈组
createDirectionalBlock("roulette_coil_set_fixed_star_alloys", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 汽轮机转子轴承
createDirectionalBlock("steam_turbine_rotor_bearings", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 高压工质定向喷射器
createDirectionalBlock("high_pressure_working_fluid_directional_injector", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);

# 晶圆蚀刻气体储罐组
createDirectionalBlock("wafer_etching_gas_storage_tank_bank", "HORIZONTAL", false, 50, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 晶圆蚀刻气体储罐组-空
createDirectionalBlock("wafer_etching_gas_storage_tank_bank0", "HORIZONTAL", false, 50, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 汽轮机主轴-精钢
createDirectionalBlock("steam_turbine_spindle_stainless_steel", "ALL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# 汽轮机铱锇合金主轴
createDirectionalBlock("steam_turbine_spindle_iridium_osmium_alloy", "ALL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# 汽轮机玄钢主轴
createDirectionalBlock("steam_turbine_spindle_xuangang", "ALL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# 汽轮机钨钢主轴
createDirectionalBlock("steam_turbine_spindle_tungsten", "ALL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# 汽轮机钨钢主轴
createDirectionalBlock("steam_turbine_spindle_super_iridium", "ALL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);

# 中子素工程块
createDirectionalBlock("neutron_engineering_block", "ALL", true, 255, false, 0, 7.5, 1200, "pickaxe", 3, <soundtype:metal>, true);
# 碳纤维工程块
createDirectionalBlock("carbon_fiber_engineering_block", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, true);
# 铱合金工程块
createDirectionalBlock("iridium_alloy_engineering_block", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, true);
# 超级铱合金工程块
createDirectionalBlock("super_iridiumalloy_engineering_block", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, true);
# 耐酸铝工程块
createDirectionalBlock("acid_resistant_aluminum_engineering_block", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, true);
# 龙素工程块
createDirectionalBlock("ryonsu_engineering_block", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, true);
# 觉醒龙工程块
createDirectionalBlock("arousal_engineering_block", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, true);

# 寰宇力场控制块
createDirectionalBlock("universalforcefieldcontrolblock", "HORIZONTAL", true, 0, true, 0, 7.5, 1024, "pickaxe", 3, <soundtype:metal>, false);
# 中子力场控制块
createDirectionalBlock("neutronforcefieldcontrolblock", "HORIZONTAL", true, 0, true, 0, 7.5, 1024, "pickaxe", 3, <soundtype:metal>, false);
# 简并态中子力场控制块
createDirectionalBlock("degenerate_neutrons_forcefieldcontrolblock", "HORIZONTAL", true, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 水晶矩阵力场控制块
createDirectionalBlock("crystalmatrixforcefieldcontrolblock", "HORIZONTAL", true, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 混沌力场控制块
createDirectionalBlock("chaosforcefieldcontrolblock", "HORIZONTAL", true, 0, true, 0, 7.5, 1024, "pickaxe", 3, <soundtype:metal>, false);
# 神龙力场控制块
createDirectionalBlock("shenlongforcefieldcontrolblock", "HORIZONTAL", true, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 飞龙力场控制块
createDirectionalBlock("wyvernforcefieldcontrolblock", "HORIZONTAL", true, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);

# 铜质结构散热器
createDirectionalBlock("bronze_structural_radiators", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 钢质结构散热器
createDirectionalBlock("steel_structural_radiators", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 不锈钢结构散热器
createDirectionalBlock("stainless_steel_structural_radiators", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 钛制结构散热器
createDirectionalBlock("titanium_alloy_structural_radiators", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铱合金结构散热器
createDirectionalBlock("iridium_alloy_structural_radiators", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 钴铬钨结构散热器
createDirectionalBlock("cocrw_alloys_structural_radiators", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# TZM合金结构散热器
createDirectionalBlock("tzm_alloys_structural_radiators", "ALL", true, 25, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);

# 铜质板翅式换热器
createDirectionalBlock("bronze_plate_fin_heat_exchanger", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);

# 白色瓷砖块
createDirectionalBlock("white_tiles_brick", "ALL", true, 255, false, 0, 7.5, 2, "pickaxe", 3, <soundtype:glass>, true);
# 竖纹白色瓷砖
createDirectionalBlock("white_vertical_tiles", "ALL", true, 255, false, 0, 7.5, 2, "pickaxe", 3, <soundtype:glass>, false);
# 錾制白色瓷砖
createDirectionalBlock("white_chiseled_tiles", "ALL", true, 255, false, 0, 7.5, 2, "pickaxe", 3, <soundtype:glass>, true);

# 氧化锆陶瓷砖块
createDirectionalBlock("zirconia_ceramic_tiles_brick", "ALL", true, 255, false, 0, 7.5, 3, "pickaxe", 3, <soundtype:glass>, true);
# 竖纹氧化锆瓷砖
createDirectionalBlock("zirconia_ceramic_vertical_tiles_block", "ALL", true, 255, false, 0, 7.5, 8, "pickaxe", 3, <soundtype:glass>, false);
# 錾制氧化锆瓷砖
createDirectionalBlock("zirconia_ceramic_chiseled_tiles_block", "ALL", true, 255, false, 0, 7.5, 8, "pickaxe", 3, <soundtype:glass>, true);

# /////////////////////////////////////////////////////////////[中子星能源核心材料]/////////////////////////////////////////////////////////////

# 简并态空间存储器-横向
# createDirectionalBlock("degenerate_spatial_memory", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 简并态中子反射框架-横向
# createDirectionalBlock("parallel_neutron_reflection_frame", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);

# 简并态中子反射块
createDirectionalBlock("degenerate_neutron_reflection_blocks", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);

# 简并态中子力场框架-横向
# createDirectionalBlock("degenerate_neutron_force_field_framework", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
/*
# 简并态中子力场模块
createDirectionalBlock("degenerate_neutron_force_field_module", "ALL", true, 255, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
eateDirectionalBlock("l9_ec_synthetic_storage_control_controller_run", "HORIZONTAL", false, 20, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);\
*/
/* 
# 钢质板翅式换热器
createDirectionalBlock("steel_plate_fin_heat_exchange", "ALL", true, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 不锈钢板翅式换热器
createDirectionalBlock("stainless_steel_plate_fin_heat_exchange", "ALL", true, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 钛制板翅式换热器
createDirectionalBlock("titanium_alloy_plate_fin_heat_exchange", "ALL", true, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铱合金板翅式换热器
createDirectionalBlock("iridium_alloy_plate_fin_heat_exchange", "ALL", true, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# TC4-钛合金板翅式换热器
createDirectionalBlock("tc4_titanium_alloy_plate_fin_heat_exchange", "ALL", true, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
*/


# 233333333333333333
//createDirectionalBlock("233333333333333333", "ALL", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);


//registerItem("方块ID", "旋转方式", 是否完整， 遮光度:0~255, 是否透光， 亮度等级, 挖掘时间, 防爆强度, "挖掘工具", <soundtype:方块声音>);

/* 
val heavydutygeneratormodule as Block = VanillaFactory.createDirectionalBlock("heavy_duty_generator_module", <blockmaterial:iron>, "ALL");//重型发电机模块
heavydutygeneratormodule.axisAlignedBB = AxisAlignedBB.create(-1.0,-1.0,-1.0,2.0,2.0,2.0);
    heavydutygeneratormodule.fullBlock = true;
    heavydutygeneratormodule.setLightOpacity(255);
    heavydutygeneratormodule.translucent = false;
    heavydutygeneratormodule.setLightValue(0);
    heavydutygeneratormodule.setBlockHardness(7.5);
    heavydutygeneratormodule.setBlockResistance(16);
    heavydutygeneratormodule.setToolClass("pickaxe");
    heavydutygeneratormodule.setToolLevel(3);
    heavydutygeneratormodule.setBlockSoundType(<soundtype:anvil>);
    heavydutygeneratormodule.creativeTab = <creativetab:atomicfurnace_revolve_block>;
heavydutygeneratormodule.register();
*/

//2333333333.axisAlignedBB = AxisAlignedBB.create(0.0,0.0,0.0,1.0,0.5,1.0);

