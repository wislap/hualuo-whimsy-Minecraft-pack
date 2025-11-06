#loader contenttweaker
#priority 3

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val zsTab as CreativeTab = VanillaFactory.createCreativeTab("atomicfurnace_container", <item:contenttweaker:chip_box>);
zsTab.register();

function regItem(name as string, glowing as bool) {
    var item as Item = VanillaFactory.createItem(name);
    item.creativeTab = <creativetab:atomicfurnace_container>;
    item.register();
}

//容器-----------------------------------------------------------------------------------


//晶圆托盘
regItem("wafer_tray", false);
# 方型盖
regItem("wafer_cover", false);
# 晶圆盒
regItem("crystal_box", false);
# 圆形盖
regItem("chip_cover", false);
# 晶片托盘
regItem("chip_tray", false);
# 晶片盒
regItem("chip_box", false);

//存储矩阵元件壳
regItem("storage_matrix_shells", false);

//线盘
regItem("reels", false);

//塑罐
regItem("plastic_can", false);
# 塑盖
regItem("plastic_cover", false);
# 塑瓶
regItem("plastic_bottles", false);

//氧化锆陶瓷模具-棒料
regItem("zirconia_mold_bar_stock", false);
# 氧化锆陶瓷模具-粗棒料
regItem("zirconia_mold_coarse_zbar_stock_neutron", false);
# 陶瓷模具-棒料
regItem("tiles_mold_bar_stock", false);
# 陶瓷模具-粗棒料
regItem("tiles_mold_coarse_zbar_stock_neutron", false);


//快插石英管
regItem("quick_insert_quartz_tube", false);
# 自封快插
regItem("self_sealing_snap_in", false);
# 石英管
regItem("quartz_tube", false);
# 反应器单元
regItem("reactor_unit", false);
# 强化反应器单元
regItem("strengthened_reactors_unit", false);
# 铱合金单元
regItem("iridium_alloy_unit", false);
# 强化铱合金单元
regItem("strengthened_iridium_alloy_unit", false);
# 大型铱合金单元
regItem("large_fuel_units", false);

//进阶存储外壳
regItem("advanced_storage_housing", false);
# 流体存储外壳
regItem("fluid_storage_housing", false);
# 进阶流体存储外壳
regItem("advanced_fluid_storage_housing", false);
# 气体存储外壳
regItem("gas_storage_housing", false);
# 进阶气体存储外壳
regItem("advanced_gas_storage_housing", false);




