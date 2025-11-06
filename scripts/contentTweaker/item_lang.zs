//使用已经过原作者允许
//作者：WI_8614_ice
#loader contenttweaker
#priority 5

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

function regItem(name as string,glowing as bool= false)as any {
val item as Item=VanillaFactory.createItem(name);
item.creativeTab=<creativetab:misc>;
item.glowing = glowing;
item.register();
}
# ========================================================================================================================

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
# 镶边简并态中子力场反射板
regItem("degenerate_neutron_force_field_reflectors", false);
# 巨型镶边简并态中子力场反射板
regItem("mega_degenerate_neutron_force_field_reflectors", false);


# 简并态中子重型齿轮
regItem("cogs_degenerate_neutron", false);
# 简并态中子精密齿轮
regItem("precision_cogs_degenerate_neutron", false);
# 简并态中子棒
regItem("club_degenerate_neutron", false);
# 简并态中子重型螺栓
regItem("duty_bolts_degenerate_neutron", false);
# 简并态中子重型长螺栓
regItem("duty_lengthen_bolts_degenerate_neutron", false);
# 简并态中子螺栓
regItem("precision_bolts_degenerate_neutron", false);
# 简并态中子长螺栓
regItem("precision_lengthen_bolts_degenerate_neutron", false);
