#loader contenttweaker
#priority 5

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val zsTab as CreativeTab = VanillaFactory.createCreativeTab("atomicfurnace_material", <item:contenttweaker:chip_14nm>);
zsTab.register();

function regItem(name as string, glowing as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:atomicfurnace_material>;
    item.glowing = glowing;
    item.register();
}

# 材料-----------------------------------------------------------------------------------


# ========================================================================================================================

# 快插石英管(锡膏)
regItem("quick_insert_quartz_tube_solder_paste", false);
# 快插石英管(光刻胶MKI)
regItem("quick_insert_quartz_tube_photoresist_mki", false);
# 快插石英管(光刻胶MKII)
regItem("quick_insert_quartz_tube_photoresist_mkii", false);
# 快插石英管(光刻胶MKIII)
regItem("quick_insert_quartz_tube_photoresist_mkiii", false);
# 快插石英管(棕色油墨)
regItem("quick_insert_quartz_tube_brown_ink", false);
# 快插石英管(浅蓝色油墨)
regItem("quick_insert_quartz_tube_skyblue_ink", false);
# 快插石英管(橙色油墨)
regItem("quick_insert_quartz_tube_orange_ink", false);
# 快插石英管(绿色油墨)
regItem("quick_insert_quartz_tube_green_ink", false);
# 快插石英管-5605-XGC油墨
regItem("quick_insert_quartz_tube_5605_xgc", false);
# 红色电致发光涂料-石英管装
regItem("red_electroluminescent_qt_packaging", false);
# 绿色电致发光涂料-石英管装
regItem("green_electroluminescent_qt_packaging", false);
# 蓝色电致发光涂料-石英管装
regItem("blue_electroluminescent_qt_packaging", false);
# 涡轮叶片热障涂层-石英管装
regItem("quick_insert_quartz_tube_tbc", false);

# ========================================================================================================================

# 塑罐(锡膏)
regItem("plastic_can_solder_paste", false);
# 塑罐(光刻胶MKI)
regItem("plastic_can_photoresist_mki", false);
# 塑罐(光刻胶MKII)
regItem("plastic_can_photoresist_mkii", false);
# 塑罐(光刻胶MKIII)
regItem("plastic_can_photoresist_mkiii", false);
# 塑罐(棕色油墨)
regItem("plastic_can_brown_ink", false);
# 塑罐(浅蓝色油墨)
regItem("plastic_can_skyblue_ink", false);
# 塑罐(橙色油墨)
regItem("plastic_can_orange_ink", false);
# 塑罐(绿色油墨)
regItem("plastic_can_green_ink", false);
# 塑罐-5605-XGC油墨
regItem("plastic_can_5605_xgc", false);
# 红色电致发光涂料-罐装
regItem("red_electroluminescent_canned", false);
# 绿色电致发光涂料-罐装
regItem("green_electroluminescent_canned", false);
# 蓝色电致发光涂料-罐装
regItem("blue_electroluminescent_canned", false);
# 涡轮叶片热障涂层-罐装
regItem("plastic_can_tbc", false);

# ========================================================================================================================

# a晶圆未蚀刻
regItem("wafer_a", false);
# b晶圆未蚀刻
regItem("wafer_b", false);
# c晶圆未蚀刻
regItem("wafer_c", false);
# 晶圆7nm
regItem("wafer_7nm", false);
# 晶圆14nm
regItem("wafer_14nm", false);
# 晶圆22nm
regItem("wafer_22nm", false);
# 晶片7nm
regItem("chip_7nm", false);
# 晶片14nm
regItem("chip_14nm", false);
# 晶片22nm
regItem("chip_22nm", false);
# 7nm晶片转接板
regItem("bgapad_7nm", false);
# 14nm晶片转接板
regItem("bgapad_14nm", false);
# 22nm晶片转接板
regItem("bgapad_22nm", false);

# 掩模版C_I
regItem("mask_ci", false);
# 掩模版B_I
regItem("mask_bi", false);
# 掩模版A_I
regItem("mask_ai", false);

# 锡丝
regItem("tin_wire", false);

# ---cpu塑料托盘------------------------
regItem("cpu_plastic_tray", false);
# afp_1500W
regItem("afp_1500w", false);
# afp_1700W
regItem("afp_1700w", false);
# afp_1900W
regItem("afp_1900w", false);

# ---塑料托盘---------------------------
regItem("i060504_plastic_tray", false);
# 2*3*12塑料托盘
regItem("i020312_plastic_tray", false);
# 6*2*8塑料托盘
regItem("i060208_plastic_tray", false);
# 6*3*6塑料托盘
regItem("i060306_plastic_tray", false);
# 4*4*6塑料托盘
regItem("i040406_plastic_tray", false);

# 电液转化膜
regItem("electrohydraulic_conversion_film", false);
# 电液转化膜粗胚
regItem("electrohydraulic_conversion_film_rough_embryo", false);

# PCIE插槽
regItem("pcie", false);
# DIMM插槽
regItem("dimm", false);
# 烙铁头
regItem("soldering_tip", false);

# 抓夹模块
regItem("four_jaw_module", false);
# 夹具模块
regItem("fixture_module", false);
# 机械臂万用模块关节
regItem("robotic_universal_module_joints", false);
# 机械臂关节V1
regItem("robotic_arm_joints_v1", false);
# 机械臂关节V2
regItem("robotic_arm_joints_v2", false);
# 机械臂关节V3
regItem("robotic_arm_joints_v3", false);
# 械机械臂控制器V1
regItem("robotic_controller_v1", false);
# 械机械臂控制器V2
regItem("robotic_controller_v2", false);
# 械机械臂控制器V3
regItem("robotic_controller_v3", false);
# 伺服电机控制器V1
regItem("servo_motor_controller_v1", false);
# 伺服电机控制器V2
regItem("servo_motor_controller_v2", false);
# 伺服电机控制器V3
regItem("servo_motor_controller_v3", false);
# 伺服活塞控制器
regItem("piston_controller", false);



# 青铜叶片
regItem("bronze_blades", false);
# 精钢叶片
regItem("stainless_steel_blades", false);
# 铱叶片
regItem("iridium_blades", false);

# =================================================[汽轮机材料]=============================================================

# 汽轮机静叶轮-精钢
regItem("steam_turbine_static_impeller_stainless_steel", false);
# 汽轮机静叶轮-钛合金
regItem("steam_turbine_static_impeller_titanium_alloy", false);
# 汽轮机静叶轮-钛合金(热障涂层)
regItem("steam_turbine_static_impeller_titanium_alloy_tbc", false);
# 汽轮机静叶轮-钨钢
regItem("steam_turbine_static_impeller_tungsten", false);
# 汽轮机静叶轮-钨钢(热障涂层)
regItem("steam_turbine_static_impeller_tungsten_tbc", false);
# 汽轮机静叶轮-致密铱合金
regItem("steam_turbine_static_impeller_super_iridium_alloy", false);
# 汽轮机静叶轮-致密铱合金(热障涂层)
regItem("steam_turbine_static_impeller_super_iridium_alloy_tbc", false);

# ==================================================[动叶轮]=============================================================

# 汽轮机动叶轮-精钢
regItem("steam_turbine_moving_impeller_stainless_steel", false);
# 汽轮机动叶轮-钛合金(热障涂层)
regItem("steam_turbine_moving_impeller_titanium_alloy_tbc", false);
# 汽轮机动叶轮-钨钢(热障涂层)
regItem("steam_turbine_moving_impeller_tungsten_tbc", false);
# 汽轮机动叶轮-致密铱合金(热障涂层)
regItem("steam_turbine_moving_impeller_super_iridium_alloy_tbc", false);

# ========================================================================================================================

# 汽轮机叶片-精钢
regItem("steam_turbine_blades_stainless_steel", false);
# 汽轮机叶片-钛合金
regItem("steam_turbine_blades_titanium_alloy", false);
# 汽轮机叶片-钛合金-热障涂层
regItem("steam_turbine_blades_titanium_alloy_tbc", false);
# 汽轮机叶片-钨钢
regItem("steam_turbine_blades_tungsten", false);
# 汽轮机叶片-钨钢-热障涂层
regItem("steam_turbine_blades_tungsten_tbc", false);
# 汽轮机叶片-致密铱合金
regItem("steam_turbine_blades_super_iridium_alloy", false);
# 汽轮机叶片-致密铱合金-热障涂层
regItem("steam_turbine_blades_super_iridium_alloy_tbc", false);
# 汽轮机叶片卡环
regItem("steam_turbine_blade_snap_ring", false);

# ========================================================================================================================

# 橡胶皮带
regItem("composite_rubber_belt", false);
# 碳化硅复合橡胶皮带
regItem("silicon_carbide_composite_rubber_belt", false);


# 碳化硅复合橡胶
regItem("qwqsiliconcarbidecompositerubber", false);
# 粘性碳化硅复合树脂
regItem("viscous_silicon_carbide_composite_resin", false);


# 高纯碳化硅锭
regItem("hp_silicon_carbide_ingots", false);
# 高纯铂铱硅合金晶体
regItem("hp_platinumiridiumsiliconalloy_crystal", false);
# 高纯富阳光合金硅锭
regItem("hp_silicon_ris_alloys_silicon_ingots", false);


# 碳化硅-硅锭
regItem("carbide_ingots", false);
# 铂铱硅合金晶体
regItem("platinumiridiumsiliconalloy_crystal", false);
# 富阳光合金硅锭
regItem("ris_alloys_silicon_ingots", false);


# 重力之眼
regItem("eye_gravity", true);
# 强化重力之眼 
regItem("strengthens_eye_gravity", true);
# 终极重力之眼组件
regItem("ultimate_eye_gravity_component", true);

# ========================================================================================================================

# 铜导线
regItem("copper_wire", false);
# 金导线
regItem("gold_wire", false);
# 精钢导线
regItem("stainless_steel_wire", false);
# 铱导线
regItem("iridium_wires", false);
# 超级致密铱合金导线
regItem("super_iridium_alloy_wires", false);
# 镍导线
regItem("nickel_wire", false);
# 恒星合金导线
regItem("stellar_alloy_wire", false);
# 银导线
regItem("silver_wire", false);
# 琥珀金导线
regItem("electrum_wire", false);
# 青铜导线
regItem("bronze_wire", false);
# 信素导线
regItem("letters_wire", false);
# 末影导线
regItem("ender_wire", false);
# 铝导线
regItem("aluminium_wire", false);
# 铅导线
regItem("lead_wire", false);
# 磁钢导线
regItem("magnet_wire", false);
# 铂导线
regItem("platinum_wire", false);
# 魂钢导线
regItem("soul_steel_wire", false);
# 充能铁导线
regItem("charged_iron_wire", false);
# 充能合金导线
regItem("charged_alloys_wire", false);
# 脉冲合金导线
regItem("pulse_alloy_wire", false);
# 末影钢导线
regItem("ender_steel_wire", false);
# 充能银导线
regItem("charged_silver_wire", false);
# 生动合金导线
regItem("vivid_alloy_wire", false);
# 晶化合金导线
regItem("crystallization_alloy_wire", false);
# 旋律合金导线
regItem("melody_alloy_wire", false);
# 锇导线
regItem("osmium_wire", false);
# 铱锇合金导线
regItem("iridium_osmium_alloy_wire", false);
# 铌钛合金导线
regItem("niobium_titanium_alloy_wire", false);
# 超导玻纤导线
regItem("superconducting_glass_fibers_alloy_wire", false);
# 龙导线
regItem("dragon_wire", false);
# 神龙导线
regItem("shenlong_wire", false);
# 混沌导线
regItem("chaos_wire", true);
# 水晶矩阵导线
regItem("crystal_matrix_wire", false);
# 简并态中子矩阵纤维
regItem("degenerate_neutron_matrix_fibers", false);

# T2-紫铜导线
regItem("t2_copper_wire", false);
# T2紫铜板
regItem("t2_copper_part", false);
# T2紫铜外壳
regItem("t2_copper_housing", false);

# ========================================================================================================================

# 天堂陨落长弓弓弦
regItem("infinity_bowstring", false);

# ========================================================================================================================

# WI_8613_ice的材料包
regItem("wi_8613_ice_correspondence", false);
# WI_8612_ice的材料包
regItem("wi_8612_ice_correspondence", false);

# ========================================================================================================================

# 强化铱合金反应单元-致密恒星物质
regItem("strengthened_iridium_alloy_unit_dense_stellar_materials", false);
# 强化铱合金反应单元-恒星物质
regItem("iridium_alloy_unit_stellar_materials", false);
# 强化铱合金反应单元-临界D-T燃料
regItem("strengthened_iridium_alloy_unit_critical_dt_fuel", false);
# 铱合金反应单元-D-T燃料
regItem("iridium_alloy_unit_dense_dt_fuel", false);

# ========================================================================================================================

# 65536K ME存储组件
regItem("cell_part_65536K", false);
# 262144K ME存储组件
regItem("cell_part_262144K", false);
# 1048576K ME存储组件
regItem("cell_part_1048576K", false);

# 65536K ME流体存储组件
regItem("cell_part_fluid_65536K", false);
# 262144K ME流体存储组件
regItem("cell_part_fluid_262144K", false);
# 1048576K ME流体存储组件
regItem("cell_part_fluid_1048576K", false);

# 65536K ME气体存储组件
regItem("cell_part_gas_65536K", false);
# 262144K ME气体存储组件
regItem("cell_part_gas_262144K", false);
# 1048576K ME气体存储组件
regItem("cell_part_gas_1048576K", false);


# ========================================================================================================================[材料]

# 高岭土粉
regItem("kaolin_dirt", false);
# 白高岭土粉
regItem("white_kaolin_dirt", false);
# 白陶土粉
regItem("montmorillonite_k_10", false);
# 下界之星粉
regItem("nether_star_powder", true);
# 钨粉
regItem("wolfram_powder", false);
# 硅粉
regItem("silicon_phosphide", false);
# 锌粉
regItem("zinc_phosphide", false);
# 锆粉
regItem("zirconium_powder", false);
# 钒粉
regItem("vanadium_powder", false);
# 钽粉
regItem("tantalum_powder", false);
# 铬粉
regItem("chromium_powder", false);
# 钼粉
regItem("molybdenum_powder", false);
# 铼粉
regItem("rhenium_powder", false);
# 活体纳米金属粉
regItem("nano_living_metal_powder", false);
# 氘粉
regItem("d2_powder", false);
# 氘粉
regItem("t2_powder", false);
# D-T混合粉
regItem("dt_powder", false);
# 碳化硅粉
regItem("carbide_powder", false);
# 磷化铝粉
regItem("aluminium_phosphide", false);
# 溴化锌粉
regItem("zinc_bromide_powder", false);
# 氯化锌粉
regItem("zinc_chloride_powder", false);
# 溴化铜粉
regItem("copper_bromide_powder", false);
# 碘化铜粉
regItem("copper_iodide_powder", false);
# 四氯化钨晶体
regItem("wolfram_iv_chloride_crystal", false);
# 四氯化钨粉
regItem("wolfram_iv_chloride_powder", false);
# 二氯化钨粉
regItem("wolfram_ii_chloride_powder", false);
# 六氟化钨结晶粉
regItem("wolfram_hexachloride", false);
# 氧化锆陶瓷粉末
regItem("zirconia_ceramic_powder", false);
# 氧化锆粉
regItem("zirconia_powder", false);
# 铂铱硅合金粉
regItem("platinumiridiumsiliconalloy_powder", false);
# 富阳光合金硅粉
regItem("ris_alloy_silicon_powder", false);
# 红色电致发光粉
regItem("red_electroluminescent_powder", false);
# 绿色电致发光粉
regItem("green_electroluminescent_powder", false);
# 蓝色电致发光粉
regItem("blue_electroluminescent_powder", false);
# 简并态中子粉
regItem("degenerate_neutron_powder", false);
# 简并态中子矩阵粉末
regItem("degenerate_neutron_matrix_powder", false);

# 混沌晶体粉
regItem("dust_chaos_crystals", false);


# 钴铬钨混合粉
regItem("cocrw_alloys_powder", false);
# 钼锆钛混合粉
regItem("tzm_alloys_powder", false);

# ///////////////////////////////////[小堆粉]
# 小堆铼粉
regItem("rhenium_small_piles_powder", false);

# ///////////////////////////////////[粉碎矿石]
# 粉碎辉钼矿
regItem("crushing_molybdenite_ore", false);
# 纯净的粉碎辉钼矿
regItem("purified_crushing_molybdenite_ore", false);


# ///////////////////////////////////[资源]
# 石油焦
regItem("petroleum_coke", false);
# 沥青块
regItem("bitumen", false);
# 可燃冰
regItem("gas_hydrate", false);

# ========================================================================================================================

# 铂铱硅合金晶粒
regItem("platinumiridiumsiliconalloy_grain", false);

# 白瓷砖锭
regItem("white_tiles", false);
# 氧化锆陶瓷砖锭
regItem("zirconia_ceramic_tiles", false);
# 锌锭
regItem("zinc_ingot", false);
# 钨锭
regItem("wolfram_ingot", false);
# 不锈钢锭
regItem("stainless_steel_ingot", false);
# TC4-钛合金锭
regItem("tc4_titanium_alloy_ingot", false);
# 钨钢锭
regItem("tungsten_ingot", false);
# 铱锇合金锭
regItem("iridium_osmium_alloy_ingots", false);
# 超级铱锇合金锭
regItem("dense_iridium_osmium_alloy_ingots", false);
# 铂铱硅合金锭
regItem("platinumiridiumsiliconalloy_spindle", false);
# 钴铬钨合金锭
regItem("cocrw_alloys_ingot", false);
# TZM合金锭
regItem("tzm_alloys_ingot", false);

# 000000000000000
//regItem("000000000000000", false);

# 龙素棒料
regItem("bar_stock_dragon_vegetarian", false);

# §7混沌金属板
regItem("plate_chaos_metal", true);
# §7致密混沌金属板
regItem("dense_plate_chaos_metal", true);
# §7混沌金属外壳
regItem("housing_chaos_metal", true);
# §7重型混沌金属齿轮
regItem("cogs_chaos_metal", true);
# §7精密混沌金属齿轮
regItem("precision_cogs_chaos_metal", true);
# §7混沌金属棒
regItem("club_chaos_metal", true);
# §7混沌金属棒料
regItem("bar_stock_chaos_metal", true);

# 不锈钢粗棒料
regItem("coarse_zbar_stock_stainless_steel", false);
# 钨钢粗棒料
regItem("coarse_zbar_stock_tungsten", false);
# 钴铬钨合金粗棒料
regItem("coarse_zbar_stock_cocrw_alloys", false);
# TZM合金粗棒料
regItem("coarse_zbar_stock_tzm_alloys", false);
# 锇粗棒料
regItem("coarse_zbar_stock_osmium", false);
# 铱锇合金粗棒料
regItem("coarse_zbar_stock_iridium_osmium_alloy", false);
# 超级致密铱锇合金粗棒料
regItem("coarse_zbar_stock_dense_iridium_osmium_alloy", false);
# 致密铱合金粗棒料
regItem("coarse_zbar_stock_super_iridium_alloy", false);
# TC4-钛合金粗棒料
regItem("coarse_zbar_stock_tc4_titanium_alloy", false);
# 龙素粗棒料
regItem("coarse_zbar_stock_dragon_vegetarian", false);
# 觉醒龙粗棒料
regItem("coarse_zbar_stock_awakened_dragon", false);
# 混沌金属粗棒料
regItem("coarse_zbar_stock_chaos_metal", true);
# 恒星合金粗棒料
regItem("coarse_zbar_stock_stellar_alloy", false);

# 000000000000000
//regItem("000000000000000", false);



# 重型不锈钢螺栓
regItem("duty_bolts_stainless_steel", false);
# 重型钨钢螺栓
regItem("duty_bolts_tungsten", false);
# 钴铬钨合金螺栓
regItem("duty_bolts_cocrw_alloys", false);
# TZM合金螺栓
regItem("duty_bolts_tzm_alloys", false);
# 重型锇螺栓
regItem("duty_bolts_osmium", false);
# 重型超级致密铱锇合金螺栓
regItem("duty_bolts_dense_iridium_osmium_alloy", false);
# 重型铱锇合金螺栓
regItem("duty_bolts_iridium_osmium_alloy", false);
# 重型致密铱合金螺栓
regItem("duty_bolts_super_iridium_alloy", false);
# 重型TC4-钛合金螺栓
regItem("duty_bolts_tc4_titanium_alloy", false);
# 重型龙素螺栓
regItem("duty_bolts_dragon_vegetarian", false);
# 重型觉醒龙螺栓
regItem("duty_bolts_awakened_dragon", false);
# 重型混沌金属螺栓
regItem("duty_bolts_chaos_metal", true);
# 重型恒星合金螺栓
regItem("duty_bolts_stellar_alloy", false);

# 000000000000000
//regItem("000000000000000", false);



# 重型不锈钢长螺栓
regItem("duty_lengthen_bolts_stainless_steel", false);
# 重型钨钢长螺栓
regItem("duty_lengthen_bolts_tungsten", false);
# 钴铬钨合金长螺栓
regItem("duty_lengthen_bolts_cocrw_alloys", false);
# TZM合金长螺栓
regItem("duty_lengthen_bolts_tzm_alloys", false);
# 重型长螺栓-铱锇合金
regItem("duty_lengthen_bolts_iridium_osmium_alloy", false);
# 重型长螺栓-超级致密铱锇合金
regItem("duty_lengthen_bolts_dense_iridium_osmium_alloy", false);
# 重型长螺栓-致密铱合金
regItem("duty_lengthen_bolts_super_iridium_alloy", false);
# 重型 TC4-钛合金长螺栓
regItem("duty_lengthen_bolts_tc4_titanium_alloy", false);
# 重型龙素长螺栓
regItem("duty_lengthen_bolts_dragon_vegetarian", false);
# 重型觉醒龙长螺栓
regItem("duty_lengthen_bolts_awakened_dragon", false);
# 重型混沌金属长螺栓
regItem("duty_lengthen_bolts_chaos_metal", true);
# 重型恒星合金长螺栓
regItem("duty_lengthen_bolts_stellar_alloy", false);

# 000000000000000
//regItem("000000000000000", false);



# 精密不锈钢螺丝
regItem("precision_bolts_stainless_steel", false);
# 精密钨钢螺丝
regItem("precision_bolts_tungsten", false);
# 精密钴铬钨合金螺丝
regItem("precision_bolts_cocrw_alloys", false);
# 精密TZM合金螺丝
regItem("precision_bolts_tzm_alloys", false);
# 精密锇螺丝
regItem("precision_bolts_osmium", false);
# 精密铱锇合金螺丝
regItem("precision_bolts_iridium_osmium_alloy", false);
# 精密螺丝-超级致密铱锇合金
regItem("precision_bolts_dense_iridium_osmium_alloy", false);
# 精密螺丝-致密铱合金
regItem("precision_bolts_super_iridium_alloy", false);
# TC4-钛合金精密螺丝
regItem("precision_bolts_tc4_titanium_alloy", false);
# 精密龙素螺丝
regItem("precision_bolts_dragon_vegetarian", false);
# 觉醒龙精密螺丝
regItem("precision_bolts_awakened_dragon", false);
# 精密螺丝-混沌金属
regItem("precision_bolts_chaos_metal", true);
# 精密恒星合金螺丝
regItem("precision_bolts_stellar_alloy", false);

# 000000000000000
//regItem("000000000000000", false);



# 不锈钢精密长螺丝
regItem("precision_lengthen_bolts_stainless_steel", false);
# 钨钢精密长螺丝
regItem("precision_lengthen_bolts_tungsten", false);
# 钴铬钨合金精密长螺丝
regItem("precision_lengthen_bolts_cocrw_alloys", false);
# TZM合金精密长螺丝
regItem("precision_lengthen_bolts_tzm_alloys", false);
# 精密长螺丝-铱锇合金
regItem("precision_lengthen_bolts_iridium_osmium_alloy", false);
# 精密长螺丝-超级致密铱锇合金
regItem("precision_lengthen_bolts_dense_iridium_osmium_alloy", false);
# 精密长螺丝-致密铱合金
regItem("precision_lengthen_bolts_super_iridium_alloy", false);
# TC4-钛合金精密长螺丝
regItem("precision_lengthen_bolts_tc4_titanium_alloy", false);
# 精密龙素长螺丝
regItem("precision_lengthen_bolts_dragon_vegetarian", false);
# 精密觉醒龙长螺丝
regItem("precision_lengthen_bolts_awakened_dragon", false);
# 精密长螺丝-混沌金属
regItem("precision_lengthen_bolts_chaos_metal", true);
# 精密长螺丝-恒星合金
regItem("precision_lengthen_bolts_stellar_alloy", false);

# 000000000000000
//regItem("000000000000000", false);



# TZM合金法兰盘
regItem("tzm_alloys_flange", false);
# TZM合金法兰连接管
regItem("tzm_alloys_flanged_pipe_joints", false);

# 碳纤维外壳
regItem("housing_carbon_fiber", false);
# 重型致密铱合金外壳套件
regItem("heavy_duty_dense_iridium_alloy_housing_kit", false);

# //////////////////////////////////////////////////////////////////////////[简并态中子材料]

# §d纳米活体金属板
regItem("plate_nano_living_metal", false);
# §d致密纳米活体金属板
regItem("dense_plate_nano_living_metal", false);
# §d纳米活体金属外壳
regItem("housing_nano_living_metal", false);
# §d纳米活体金属重型齿轮
regItem("cogs_nano_living_metal", false);
# §d纳米活体金属精密齿轮
regItem("precision_cogs_nano_living_metal", false);
# §d纳米活体金属棒
regItem("club_nano_living_metal", false);
# §d纳米活体金属棒料
regItem("bar_stock_nano_living_metal", false);
# §d纳米活体金属粗棒料
regItem("coarse_zbar_stock_nano_living_metal", false);
# §d纳米活体金属管
regItem("tube_nano_living_metal", false);
# §d纳米活体金属重型螺栓
regItem("duty_bolts_nano_living_metal", false);
# §d纳米活体金属重型长螺栓
regItem("duty_lengthen_bolts_nano_living_metal", false);
# §d纳米活体金属精密螺丝
regItem("precision_bolts_nano_living_metal", false);
# §d纳米活体金属精密长螺丝
regItem("precision_lengthen_bolts_nano_living_metal", false);

# //////////////////////////////////////////////////////////////////////////[简并态中子材料]

# 简并态中子晶格
regItem("degenerate_neutron_lattice", false);
# 简并态中子矩阵晶格
regItem("degenerate_neutron_matrix_lattice", false);
# 简并态中子锭
regItem("degenerate_neutron_ingots", false);
# 简并态中子矩阵锭
regItem("degenerate_neutron_matrix_ingots", false);

# 小型简并态中子钉板
regItem("small_degenerate_neutron_plates", false);
# 小型简并态中子钉板组
regItem("small_degenerate_neutron_plates_group", false);
# 中型简并态中子钉板
regItem("medium_degenerate_neutron_plates", false);
# 大型简并态中子钉板
regItem("degenerate_neutron_large_plates", false);
# 巨型简并态中子钉板
regItem("mega_degenerate_neutron_large_plates", false);

# 简并态中子矩阵板
regItem("plate_degenerate_neutron_matrix", false);
# 致密简并态中子板
regItem("dense_plate_degenerate_neutron", false);
# 致密简并态中子矩阵板
regItem("dense_plate_degenerate_neutron_matrix", false);
# 简并态中子外壳
regItem("housing_degenerate_neutron", false);
# 简并态中子矩阵外壳
regItem("housing_degenerate_neutron_matrix", false);

# 镶边简并态中子防护板
regItem("degenerate_neutron_fenders", false);
# 巨型镶边简并态中子防护板
regItem("mega_degenerate_neutron_fenders", false);
# 镶边简并态中子复合防护板
regItem("degenerate_neutron_composite_protective_plates", false);
# 巨型镶边简并态中子复合防护板
regItem("mega_degenerate_neutron_composite_protective_plates", false);
# 镶边简并态中子力场反射板
regItem("degenerate_neutron_force_field_reflectors", false);
# 巨型镶边简并态中子力场反射板
regItem("mega_degenerate_neutron_force_field_reflectors", false);

# 简并态中子处理矩阵兼容层
regItem("degenerate_neutron_processing_matrix_compatibility_layer", false);
# 大型简并态中子处理矩阵兼容层
regItem("large_degenerate_neutron_processing_matrix_compatibility_layer", false);


# 简并态中子重型齿轮
regItem("cogs_degenerate_neutron", false);
# 简并态中子精密齿轮
regItem("precision_cogs_degenerate_neutron", false);
# 简并态中子棒
regItem("club_degenerate_neutron", false);
# 简并态中子棒料
regItem("bar_stock_degenerate_neutron", false);
# 简并态中子粗棒料
regItem("coarse_zbar_stock_degenerate_neutron", false);
# 简并态中子管
regItem("tube_degenerate_neutron", false);
# 简并态中子重型螺栓
regItem("duty_bolts_degenerate_neutron", false);
# 简并态中子重型长螺栓
regItem("duty_lengthen_bolts_degenerate_neutron", false);
# 简并态中子螺栓
regItem("precision_bolts_degenerate_neutron", false);
# 简并态中子长螺栓
regItem("precision_lengthen_bolts_degenerate_neutron", false);

/* 

# 简并态中子矩阵
regItem("2333", false);
# 简并态中子
regItem("2333", false);
# 简并态中子
regItem("2333", false);
# 简并态中子
regItem("2333", false);

*/


/*
# 2333
regItem("2333", false);
# 2333
regItem("2333", false);
*/