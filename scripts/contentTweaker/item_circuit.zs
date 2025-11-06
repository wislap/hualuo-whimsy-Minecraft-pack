#loader contenttweaker
#priority 2

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val zsTab as CreativeTab = VanillaFactory.createCreativeTab("atomicfurnace_circuit", <item:contenttweaker:iridium_cpu>);
zsTab.register();

function regItem(name as string, glowing as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:atomicfurnace_circuit>;
    item.register();
}

//电路-----------------------------------------------------------------------------------

//覆铜板
regItem("copper_clad_laminate", false);
# 厚铜箔
regItem("thick_copper_foil", false);
# FR4玻纤玻璃布
regItem("fr4_fiberglass_cloth", false);

//陶瓷铱合金高频板
regItem("ceramic_iridium_alloy_high_frequency_plate", false);
# 铱合金片
regItem("iridium_alloy_sheets", false);


//覆铜板RF48A_00绿色油墨
regItem("copper_clad_laminate_green_ink_rf48a_00", false);
# 覆铜板ec_03橙色油墨
regItem("copper_clad_laminate_orange_ink_ec_03", false);
# 覆铜板ec_02蓝色油墨
regItem("copper_clad_laminate_skyblue_ink_ec_02", false);
# 覆铜板ec_01棕色油墨
regItem("copper_clad_laminate_brown_ink_ec_01", false);
# 覆铜板0_IV_03橙色油墨
regItem("copper_clad_laminate_orange_0_ink_iv_03", false);
# 覆铜板0_IV_02蓝色油墨
regItem("copper_clad_laminate_skyblue_ink_0_iv_02", false);
# 覆铜板0_IV_01棕色油墨
regItem("copper_clad_laminate_brown_ink_0_iv_01", false);
# 覆铜板0_III_a3橙色油墨
regItem("copper_clad_laminate_orange_ink_0_iii_a3", false);
# 覆铜板0_III_a2蓝色油墨
regItem("copper_clad_laminate_skyblue_ink_0_iii_a2", false);
# 覆铜板0_III_a1棕色油墨
regItem("copper_clad_laminate_brown_ink_0_iii_a1", false);
# 覆铜板0_III_b3橙色油墨
regItem("copper_clad_laminate_orange_ink_0_iii_b3", false);
# 覆铜板0_III_b2蓝色油墨
regItem("copper_clad_laminate_skyblue_ink_0_iii_b2", false);
# 覆铜板0_III_b1棕色油墨
regItem("copper_clad_laminate_brown_ink_0_iii_b1", false);
# 覆铜板0_II_03橙色油墨
regItem("copper_clad_laminate_orange_ink_0_ii_03", false);
# 覆铜板0_II_02蓝色油墨
regItem("copper_clad_laminate_skyblue_ink_0_ii_02", false);
# 覆铜板0_II_01棕色油墨
regItem("copper_clad_laminate_brown_ink_0_ii_01", false);


//覆铜板RF48A_00
regItem("copper_clad_laminate_rf48a_00", false);
# 档点网板RF48A_00
regItem("steel_mesh_rf48a_00", false);
# 覆铜板ec_00
regItem("copper_clad_laminate_ec_00", false);
# 档点网板ec_00
regItem("steel_mesh_ec_00", false);
# 覆铜板0_IV_00
regItem("copper_clad_laminate_0_iv_00", false);
# 档点网板0_IV_00
regItem("steel_mesh_0_iv_00", false);
# 覆铜板0_III_a
regItem("copper_clad_laminate_0_iii_a", false);
# 档点网板0_III_a
regItem("steel_mesh_0_iii_a", false);
# 覆铜板0_III_b
regItem("copper_clad_laminate_0_iii_b", false);
# 档点网板0_III_b
regItem("steel_meshv_0_iii_b", false);
# 覆铜板0_II_00
regItem("copper_clad_laminate_0_ii_00", false);
# 档点网板0_II_00
regItem("steel_mesh_0_ii_00", false);
# 覆铜板a_I_01橙色油墨
regItem("copper_clad_laminate_orange_ink_a_i_01", false);
# 覆铜板a_I_02橙色油墨
regItem("copper_clad_laminate_orange_ink_a_i_02", false);
# 覆铜板a_I_03橙色油墨
regItem("copper_clad_laminate_orange_ink_a_i_03", false);
# 覆铜板a_I_04橙色油墨
regItem("copper_clad_laminate_orange_ink_a_i_04", false);
# 覆铜板b_I_01蓝色油墨
regItem("copper_clad_laminate_skyblue_ink_b_i_01", false);
# 覆铜板b_I_02蓝色油墨
regItem("copper_clad_laminate_skyblue_ink_b_i_02", false);
# 覆铜板b_I_03蓝色油墨
regItem("copper_clad_laminate_skyblue_ink_b_i_03", false);
# 覆铜板b_I_04蓝色油墨
regItem("copper_clad_laminate_skyblue_ink_b_i_04", false);
# 覆铜板c_I_01棕色油墨
regItem("copper_clad_laminate_brown_ink_c_i_01", false);
# 覆铜板c_I_02棕色油墨
regItem("copper_clad_laminate_brown_ink_c_i_02", false);
# 覆铜板c_I_03棕色油墨
regItem("copper_clad_laminate_brown_ink_c_i_03", false);
# 覆铜板c_I_04棕色油墨
regItem("copper_clad_laminate_brown_ink_c_i_04", false);
# 覆铜板0_I_01
regItem("copper_clad_laminate_0_i_01", false);
# 覆铜板0_I_02
regItem("copper_clad_laminate_0_i_02", false);
# 覆铜板0_I_03
regItem("copper_clad_laminate_0_i_03", false);
# 覆铜板0_I_04
regItem("copper_clad_laminate_0_i_04", false);
# 档点网板0_I_01
regItem("steel_mesh_0_i_01", false);
# 档点网板0_I_02
regItem("steel_mesh_0_i_02", false);
# 档点网板0_I_03
regItem("steel_mesh_0_i_03", false);
# 档点网板0_I_04
regItem("steel_mesh_0_i_04", false);


//碳纤维压片
regItem("carbonfiber_sheet", false);
# 铱压片
regItem("iridium_tablet", false);
# 富阳光合金压片
regItem("enrichedsunshinealloy_tablet", false);

//碳纤维PCB基板
regItem("carbonfiberpcb_board", false);
# 铱PCB基板
regItem("iridium_board", false);
# 富集阳光合金PCB基板
regItem("enrichedsunshinealloypcb_substrate", false);

//碳纤维PCB板沉金
regItem("carbonfiberpcb_sinkgold", false);
# 铱PCB基板沉金
regItem("iridium_sinkgold", false);
# 富集阳光合金PCB板沉金
regItem("richsunshinealloypcb_sinkgold", false);

//碳纤维PCB板镀石墨烯
regItem("carbonfiberpcbboard_grapheneplated", false);
# 铱PCB基板镀铂
regItem("iridium_plated", false);
# 富集阳光合金PCB板镀光合物质
regItem("richsunshinealloypcb_photosyntheticmaterialplating", false);

//碳纤维PCB
regItem("carbonfiber_pcb", false);
# 铱PCB
regItem("iridium_pcb", false);
# 富集阳光合金PCB
regItem("richsunshinealloy_pcb", false);

//碳纤维处理器
regItem("carbonfiber_cpu", false);
# 铱处理器
regItem("iridium_cpu", false);
# 富集阳光合金处理器
regItem("richsunshinealloypcb_cpu", false);

//碳纤维集成电路MKI
regItem("carbonfiber_integratedcircuitmki", false);
# 碳纤维集成电路MKII
regItem("carbonfiber_integratedcircuitmkii", false);
# 碳纤维集成电路MKII
regItem("carbonfiber_integratedcircuitmkiii", false);
# 碳纤维集成电路MKIV
regItem("carbonfiber_integratedcircuitmkiv", false);

//铱电路板MKI
regItem("circuit_i_mki", false);
# 铱电路板MKII
regItem("circuit_i_mkii", false);
# 铱电路板MKII
regItem("circuit_i_mkiii", false);
# 铱电路板MKIV
regItem("circuit_i_mkiv", false);

//富集阳光合金集成电路MKI
regItem("enrichedsunshinealloyintegratedcircuit_mki", false);
# 富集阳光合金集成电路MKII
regItem("enrichedsunshinealloyintegratedcircuit_mkii", false);
# 富集阳光合金集成电路MKIII
regItem("enrichedsunshinealloyintegratedcircuit_mkiii", false);
# 富集阳光合金集成电路MKIV
regItem("enrichedsunshinealloyintegratedcircuit_mkiv", false);

//量子计算矩阵块(1x)
regItem("quantum_computing_matrix_blocks_1x", false);
# 量子计算矩阵块(2x)
regItem("quantum_computing_matrix_blocks_2x", false);
# 寰宇计算矩阵块(1x)
regItem("infinity_computation_matrix_blocks_1x", false);
# 寰宇计算矩阵块(2x)
regItem("infinity_computation_matrix_blocks_2x", false);
# 寰宇计算矩阵块(4x)
regItem("infinity_computation_matrix_blocks_4x", false);
# 寰宇空间计算矩阵块(4x)
regItem("infinity_space_computation_matrix_blocks_4x", false);

//沉金主板C_I_01
regItem("sinking_gold_motherboard_c_i_01", false);
# 沉金主板C_I_02
regItem("sinking_gold_motherboard_c_i_02", false);
# 沉金主板C_I_03
regItem("sinking_gold_motherboard_c_i_03", false);
# 沉金主板C_I_04
regItem("sinking_gold_motherboard_c_i_04", false);
# 主板C_I_01
regItem("motherboard_c_i_01", false);
# 主板C_I_02
regItem("motherboard_c_i_02", false);
# 主板C_I_03
regItem("motherboard_c_i_03", false);
# 主板C_I_04
regItem("motherboard_c_i_04", false);
# 沉金主板B_I_01
regItem("sinking_gold_motherboard_b_i_01", false);
# 沉金主板B_I_02
regItem("sinking_gold_motherboard_b_i_02", false);
# 沉金主板B_I_03
regItem("sinking_gold_motherboard_b_i_03", false);
# 沉金主板B_I_04
regItem("sinking_gold_motherboard_b_i_04", false);
# 主板B_I_01
regItem("motherboard_b_i_01", false);
# 主板B_I_02
regItem("motherboard_b_i_02", false);
# 主板B_I_03
regItem("motherboard_b_i_03", false);
# 主板B_I_04
regItem("motherboard_b_i_04", false);
# 沉金主板A_I_01
regItem("sinking_gold_motherboard_a_i_01", false);
# 沉金主板A_I_02
regItem("sinking_gold_motherboard_a_i_02", false);
# 沉金主板A_I_03
regItem("sinking_gold_motherboard_a_i_03", false);
# 沉金主板A_I_04
regItem("sinking_gold_motherboard_a_i_04", false);
# 主板A_I_01
regItem("motherboard_a_i_01", false);
# 主板A_I_02
regItem("motherboard_a_i_02", false);
# 主板A_I_03
regItem("motherboard_a_i_03", false);
# 主板A_I_04
regItem("motherboard_a_i_04", false);

//沉金主板C_II_01
regItem("sinking_gold_motherboard_c_ii_01", false);
# 主板C_II_02
regItem("motherboard_c_ii_02", false);
# 主板C_II_03
regItem("motherboard_c_ii_03", false);
# 主板C_II_04
regItem("motherboard_c_ii_04", false);
# 沉金主板B_II_01
regItem("sinking_gold_motherboard_b_ii_01", false);
# 主板B_II_02
regItem("motherboard_b_ii_02", false);
# 主板B_II_03
regItem("motherboard_b_ii_03", false);
# 主板B_II_04
regItem("motherboard_b_ii_04", false);
# 沉金主板A_II_01
regItem("sinking_gold_motherboard_a_ii_01", false);
# 主板A_II_02
regItem("motherboard_a_ii_02", false);
# 主板A_II_03
regItem("motherboard_a_ii_03", false);
# 主板A_II_04
regItem("motherboard_a_ii_04", false);

//沉金主板C_III_A1
regItem("sinking_gold_motherboard_c_iii_a1", false);
# 主板C_III_A2
regItem("motherboard_c_iii_a2", false);
# 主板C_III_A3
regItem("motherboard_c_iii_a3", false);
# 沉金主板B_III_A1
regItem("sinking_gold_motherboard_b_iii_a1", false);
# 主板B_III_A2
regItem("motherboard_b_iii_a2", false);
# 主板B_III_A3
regItem("motherboard_b_iii_a3", false);
# 沉金主板A_III_A1
regItem("sinking_gold_motherboard_a_iii_a1", false);
# 主板A_III_A2
regItem("motherboard_a_iii_a2", false);
# 主板A_III_A3
regItem("motherboard_a_iii_a3", false);

//沉金主板C_III_B1
regItem("sinking_gold_motherboard_c_iii_b1", false);
# 主板C_III_B2
regItem("motherboard_c_iii_b2", false);
# 沉金主板B_III_B1
regItem("sinking_gold_motherboard_b_iii_b1", false);
# 主板B_III_B
regItem("motherboard_b_iii_b2", false);
# 沉金主板A_III_B1
regItem("sinking_gold_motherboard_a_iii_b1", false);
# 主板A_III_B12
regItem("motherboard_a_iii_b2", false);

//沉金主板C_IV_B1
regItem("sinking_gold_motherboard_c_iv_b1", false);
# 主板C_IV_B2
regItem("motherboard_c_iv_b2", false);
# 沉金主板B_IV_B1
regItem("sinking_gold_motherboard_b_iv_b1", false);
# 主板B_IV_B2
regItem("motherboard_b_iv_b2", false);
# 沉金主板A_IV_B1
regItem("sinking_gold_motherboard_a_iv_b1", false);
# 主板A_IV_B2
regItem("motherboard_a_iv_b2", false);

//RF48A_A1
regItem("rf48a_a1", false);
# RF48A_A2
regItem("rf48a_a2", false);

// 矩阵数据总线X4
regItem("matrix_data_bus_x4", false);
# 矩阵数据总线X6
regItem("matrix_data_bus_x6", false);
# 矩阵数据总线X9
regItem("matrix_data_bus_x9", false);
# 矩阵结构总线
regItem("matrix_structure_bus", false);
# 矩阵元件总线
regItem("matrix_element_bus", false);
# 石英纤维总线
regItem("quartz_fiber_bus", false);

//A1-BGA型x4数据总线连接器
regItem("a1_bga_x4_block_coral", false);
# S3-BGA型-总线连接器
regItem("s3_bga_bus_coral", false);
# R0-BGA型-恒星数据总线
regItem("r0_stellar_data_bus", false);
# R1-BGA型-数据总线
regItem("r1_data_bus", false);

// 64M-存储矩阵组件
regItem("64m_matrix_storage_components", false);
# 128M-存储矩阵组件
regItem("128m_matrix_storage_components", false);
# 256M-存储矩阵组件
regItem("256m_matrix_storage_components", false);

// 64M-流体存储矩阵组件
regItem("64m_fluid_matrix_storage_components", false);
# 128M-流体存储矩阵组件
regItem("128m_fluid_matrix_storage_components", false);
# 256M-流体存储矩阵组件
regItem("256m_fluid_matrix_storage_components", false);

// [AFP-data00]档点网板
regItem("steel_mesh_afp_data_00", false);
# 矩阵数据卡-HfG高频板
regItem("matrix_data_card_hfg_data01", false);
# 矩阵数据卡-5605-XGC油墨
regItem("matrix_data_card_hfg_data02", false);
# 矩阵数据卡-脉冲合金镀层
regItem("matrix_data_card_hfg_data03", false);
# §b矩阵数据卡§f-已贴装元器件！
regItem("matrix_data_card_hfg_data04", false);




