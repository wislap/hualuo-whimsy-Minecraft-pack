#使用已经过作者同意
#感谢 WI_8614_ice 提供模型~
#loader contenttweaker
#priority 4

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val zsTab as CreativeTab = VanillaFactory.createCreativeTab("atomicfurnace_equipment", <item:contenttweaker:computing_unit_i_02>);
zsTab.register();

function regItem(name as string, glowing as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:atomicfurnace_equipment>;
    item.register();
}

//设备-----------------------------------------------------------------------------------


//烧录器
regItem("burner", false);
# 单片机
regItem("microcontroller", false);

//水晶矩阵力场发生器
regItem("crystal_matrix_stance_generator", false);
//简并态中子力场矩阵发生器
regItem("degenerate_neutron_force_field_matrix_generator", false);

//混沌力场发生器
regItem("chaos_stance_generator", true);
# 神龙力场发生器
regItem("shenlong_stand_generator", true);
# 飞龙力场发生器
regItem("wyvern_stand_generator", false);
# 龙素力场发生器
regItem("dragon_stand_generator", false);

//机械臂_四爪夹模块MKI
regItem("robotic_arm_four_jaw_module_mki", false);
# 机械臂_二爪夹模块MKI
regItem("robotic_arm_fixture_module_mki", false);
# 机械臂_激光模块MKI
regItem("robotic_arm_laser_module_mki", false);
# 机械臂_四爪夹模块MKII
regItem("robotic_arm_four_jaw_module_mkii", false);
# 机械臂_二爪夹模块MKII
regItem("robotic_arm_fixture_module_mkii", false);
# 机械臂_激光模块MKII
regItem("robotic_arm_laser_module_mkii", false);
# 机械臂_四爪夹模块MKIII
regItem("robotic_arm_four_jaw_module_mkiii", false);
# 机械臂_二爪夹模块MKIII
regItem("robotic_arm_fixture_module_mkiii", false);
# 机械臂_激光模块MKIII
regItem("robotic_arm_laser_module_mkiii", false);
# 4025风扇
regItem("4025_fan", false);

//无线烙铁
regItem("wireless_soldering_iron", false);
# 无线热风枪
regItem("wireless_heat_gun", false);
# 无线C_I电池(空)
regItem("wireless_ci_battery_empty", false);
# 无线C_I电池
regItem("wireless_ci_battery", false);

//轴流泵MKI
regItem("axial_flow_pump_mki", false);
# 轴流泵MKII
regItem("axial_flow_pump_mkii", false);
# 轴流泵MKIII
regItem("axial_flow_pump_mkiii", false);
# 伺服活塞MKI
regItem("servo_pistons_mki", false);
# 伺服活塞MKII
regItem("servo_pistons_mkii", false);
# 伺服活塞MKIII
regItem("servo_pistons_mkiii", false);
# 伺服电机MKI
regItem("servo_motors_mki", false);
# 伺服电机MKII
regItem("servo_motors_mkii", false);
# 伺服电机MKIII
regItem("servo_motors_mkiii", false);
# 伺服电机MKIV
regItem("servo_motors_mkiv", false);
# 伺服电机MKV
regItem("servo_motors_mkv", false);

//轴流泵轴MKI
regItem("axial_flow_pump_shaft_mki", false);
# 轴流泵轴MKII
regItem("axial_flow_pump_shaft_mkii", false);
# 轴流泵轴MKIII
regItem("axial_flow_pump_shaft_mkiii", false);
# 二级轴流泵组
regItem("axial_flow_pump_sets_lv2", false);
# 四级轴流泵组
regItem("axial_flow_pump_sets_lv4", false);
# 六级轴流泵组
regItem("axial_flow_pump_sets_lv6", false);

//小型激光模块
regItem("small_laser_module", false);

//多方块结构自动构建仪
regItem("multiblock_structure_automatic_builder", false);

//传送带MKI
regItem("conveyor_belt_mki", false);
# 传送带MKII
regItem("conveyor_belt_mkii", false);
# 传送带MKIII
regItem("conveyor_belt_mkiii", false);
# 传送带MKIV
regItem("conveyor_belt_mkiv", false);
# 传送带MKV
regItem("conveyor_belt_mkv", false);

# [PMI-SYA]§dY1微型终端屏幕
regItem("pmi_sya_terminal_screen", false);

//进阶电解核心
# regItem("advanced_electrolysis_core", false); MEK占有
# 气体吸附分离模块
regItem("gas_adsorption_fractionation_module", false);
# 高频熔融成型模块
regItem("high_frequency_fusion_molding_module", false);







/*
//2333
regItem("2333", false);
# 2333
regItem("2333", false);
*/

