#loader contenttweaker
#priority 10

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




val zsTab as CreativeTab = VanillaFactory.createCreativeTab("atomicfurnace_block", <item:contenttweaker:steam_turbine_housing_iridium_alloy>);
zsTab.register();

function registerUniversal(name as string,fullBlock as bool,lightOpacity as int,translucent as bool,lightValue as int,hardness as int,resistance as int,toolclass as string,toollevel as int,soundtype as SoundType,gravity as bool) {
    val block as Block = VanillaFactory.createBlock(name, <blockmaterial:iron>);//默认方块 
    block.fullBlock = fullBlock;
    block.setLightOpacity(lightOpacity);
    block.translucent = translucent;
    block.setLightValue(lightValue);
    block.setBlockHardness(hardness);
    block.setBlockResistance(resistance);
    block.setToolClass(toolclass);
    block.setToolLevel(toollevel);
    block.setBlockSoundType(soundtype);
    block.creativeTab = <creativetab:atomicfurnace_block>;
    block.gravity = gravity;
    block.register();
}


//registerItem("方块ID", 是否完整, 透光度, 是否透光, 亮度等级, 挖掘时间, 防爆强度, "挖掘工具", <soundtype:方块声音>, 是否自然下落);

# 屏障1
registerUniversal("barrier1", false, 0, true, 0, 8614, 3600000.8, "pickaxe", 3, <soundtype:glass>, false);

//铂铱硅块
registerUniversal("pllb", true, 255, false, 0.1, 7.5, 100, "pickaxe", 3, <soundtype:metal>, false);

# 碳纤维结构块
registerUniversal("carbon_fiber_building_block", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铱合金结构块
registerUniversal("iridium_alloy_fiber_building_block", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 超级铱合金结构块
registerUniversal("super_iridiumalloy_building_block", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 耐酸铝结构块
registerUniversal("acid_resistant_aluminum_building_block", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 龙素结构块
registerUniversal("ryonsu_building_block", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 觉醒龙结构块
registerUniversal("arousal_building_block", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 简并态中子结构块
registerUniversal("degenerate_neutron_force_field_block", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铱合金机械外壳
registerUniversal("iridium_alloy_mechanical_housing", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 碳纤维结构框架
registerUniversal("carbon_fiber_housing", false, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:stone>, false);
# 铱合金结构框架
registerUniversal("iridium_alloy_fiber_housing", false, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:stone>, false);
# 超级铱合金结构框架
registerUniversal("super_iridiumalloy_housing", false, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:stone>, false);
# 耐酸铝结构框架
registerUniversal("acid_resistant_aluminum_fiber_housing", false, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:stone>, false);
# 龙素结构框架
registerUniversal("ryonsu_fiber_housing", false, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:stone>, false);
# 觉醒龙结构框架
registerUniversal("arousal_fiber_housing", false, 128, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:stone>, false);
# 中子素结构块
registerUniversal("neutron_building_block", true, 255, false, 0, 7.5, 1200, "pickaxe", 3, <soundtype:metal>, false);
# 中子素结构框架
registerUniversal("neutron_fiber_housing", false, 128, true, 0, 7.5, 1200, "pickaxe", 3, <soundtype:metal>, false);

# 玄钢线圈盘
registerUniversal("dark_steel_wire_reel", false, 0, true, 0, 7.5, 600, "pickaxe", 3, <soundtype:metal>, false);
# 中子线圈盘
registerUniversal("neutron_coil_discs", false, 0, true, 0, 7.5, 1200, "pickaxe", 3, <soundtype:metal>, false);

//registerItem("方块ID", 是否完整, 透光度, 是否透光, 亮度等级, 挖掘时间, 防爆强度, "挖掘工具", <soundtype:方块声音>);
# 钨矿石
registerUniversal("wolfram_ore", true, 255, false, 0, 7.5, 6, "pickaxe", 3, <soundtype:stone>, false);
# 锌矿石
registerUniversal("zinc_ore", true, 255, false, 0, 7.5, 3, "pickaxe", 2, <soundtype:stone>, false);
# 钒钛磁铁矿
registerUniversal("vanadium_titanomagnetite", true, 255, false, 0, 7.5, 3, "pickaxe", 1, <soundtype:stone>, false);
# 铬铁矿
registerUniversal("chromite_massive_isometric", true, 255, false, 0, 7.5, 5, "pickaxe", 1, <soundtype:stone>, false);
# 辉钼矿
registerUniversal("molybdenite_ore", true, 255, false, 0, 7.5, 6, "pickaxe", 6, <soundtype:stone>, false);

# 氧化锆陶瓷粉块
registerUniversal("zirconia_ceramic_powder_block", true, 255, false, 0, 7.5, 0, "pickaxe", 0, <soundtype:sand>, true);
# 不锈钢粉块
registerUniversal("stainless_steel_flour_cubes", true, 255, false, 0, 7.5, 0, "pickaxe", 0, <soundtype:sand>, true);
# TC4-钛合金粉块
registerUniversal("tc4_titanium_alloy_dust_flour_cubes", true, 255, false, 0, 7.5, 0, "pickaxe", 0, <soundtype:sand>, true);

# 钨钢块
registerUniversal("tungsten_alloy_block", true, 255, false, 0, 7.5, 120, "pickaxe", 3, <soundtype:anvil>, true);
# 不锈钢块
registerUniversal("stainless_steel_block", true, 255, false, 0, 7.5, 60, "pickaxe", 3, <soundtype:anvil>, true);
# TC4-钛合金块
registerUniversal("tc4_titanium_alloy_block", true, 255, false, 0, 7.5, 240, "pickaxe", 3, <soundtype:anvil>, true);
# 致密铱合金块
registerUniversal("super_iridiumalloy_block", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铱锇合金块
registerUniversal("iridium_osmium_alloy_block", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 致密铱锇合金块
registerUniversal("dense_iridium_osmium_alloy_block", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 青铜机壳
registerUniversal("steam_turbine_housing_bronze", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 钢质机壳
registerUniversal("steam_turbine_housing_steel", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 钛合金机壳
registerUniversal("steam_turbine_housing_titanium_alloy", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 铱合金机壳
registerUniversal("steam_turbine_housing_iridium_alloy", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# 不锈钢机壳
registerUniversal("stainless_steel_housing", true, 255, false, 0, 7.5, 56, "pickaxe", 3, <soundtype:metal>, false);
# TC4-钛合金机壳
registerUniversal("tc4_titanium_alloy_housing", true, 255, false, 0, 7.5, 220, "pickaxe", 3, <soundtype:metal>, false);
# 钴铬钨合金机壳
registerUniversal("cocrw_alloys_housing", true, 255, false, 0, 7.5, 56, "pickaxe", 3, <soundtype:anvil>, false);
# TZM合金机壳
registerUniversal("tzm_alloy_housings", true, 255, false, 0, 7.5, 56, "pickaxe", 3, <soundtype:anvil>, false);
# 碳纤维机壳
registerUniversal("carbon_fiber_chassis", true, 255, false, 0, 7.5, 56, "pickaxe", 3, <soundtype:metal>, false);
# 重型致密铱合金机壳
registerUniversal("heavy_duty_dense_iridium_alloy_chassis", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);

//registerItem("方块ID", 是否完整, 透光度, 是否透光, 亮度等级, 挖掘时间, 防爆强度, "挖掘工具", <soundtype:方块声音>);

# 233333333
//registerUniversal("233333333", true, 255, false, 0, 7.5, 16, "pickaxe", 3, <soundtype:stone>, false);

# 高岭土
registerUniversal("kaolin_dirt_block_a", true, 255, false, 0, 7.5, 0, "shovel", 3, <soundtype:ground>, false);
# 白瓷土
registerUniversal("porcelain_kaolin_dirt_block_b", true, 255, false, 0, 7.5, 0, "shovel", 3, <soundtype:ground>, false);
# 白高岭土
registerUniversal("white_kaolin_dirt_block_c", true, 255, false, 0, 7.5, 0, "shovel", 3, <soundtype:ground>, true);
# 白陶土粉块
registerUniversal("montmorillonite_k_10_block", true, 255, false, 0, 7.5, 0, "shovel", 3, <soundtype:sand>, true);
# 白色瓷砖块
registerUniversal("white_tiles_block", true, 255, false, 0, 7.5, 0, "pickaxe", 3, <soundtype:glass>, false);
# 白色瓷砖-无边框
registerUniversal("white_tiles_bezel_less", true, 255, false, 0, 7.5, 2, "pickaxe", 3, <soundtype:glass>, false);
# 平滑白色瓷砖
registerUniversal("white_smooth_tiles", true, 255, false, 0, 7.5, 2, "pickaxe", 3, <soundtype:glass>, false);
# 平滑白色瓷砖-无边框
registerUniversal("white_smooth_tiles_bezel_less", true, 255, false, 0, 7.5, 2, "pickaxe", 3, <soundtype:glass>, false);

# 氧化锆瓷砖
registerUniversal("zirconia_ceramic_tiles_block", true, 255, false, 0, 7.5, 8, "pickaxe", 3, <soundtype:glass>, false);
# 氧化锆瓷砖-无边框
registerUniversal("zirconia_ceramic_tiles_block_bezel_less", true, 255, false, 0, 7.5, 8, "pickaxe", 3, <soundtype:glass>, false);
# 平滑氧化锆瓷砖
registerUniversal("zirconia_ceramic_smooth_tiles_block", true, 255, false, 0, 7.5, 8, "pickaxe", 3, <soundtype:glass>, false);
# 平滑氧化锆瓷砖-无边框
registerUniversal("zirconia_ceramic_smooth_tiles_block_bezel_less", true, 255, false, 0, 7.5, 8, "pickaxe", 3, <soundtype:glass>, false);

# /////////////////////////////////////////////////////////////[中子星能源核心材料]/////////////////////////////////////////////////////////////

# 简并态空间存储器
registerUniversal("degenerate_spatial_memory", true, 255, true, 0, 7.5, 255, "pickaxe", 3, <soundtype:metal>, false);
# 简并态中子反射框架
registerUniversal("parallel_neutron_reflection_frame", true, 255, true, 0, 7.5, 255, "pickaxe", 3, <soundtype:metal>, false);
# 简并态中子力场框架
registerUniversal("degenerate_neutron_force_field_framework", true, 255, true, 0, 7.5, 255, "pickaxe", 3, <soundtype:metal>, false);

# //////////////////////////////////////////////////////////////////[EC-test]///////////////////////////////////////////////////////////////////
//createDirectionalBlock("块ID", "旋转方式", 是否完整， 遮光度:0~255, 是否透光， 亮度等级, 挖掘时间, 防爆强度, "挖掘工具", <soundtype:方块声音>);

# 合成存储系统机壳
registerUniversal("ec_modular_synthetic_memory_housing", false, 20, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);
# EC系统ME端口
registerUniversal("me_port_ec_system", false, 20, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:metal>, false);





val whiteglass as Block = VanillaFactory.createBlock("white_glass", <blockmaterial:ice>);//氧化锆陶瓷玻璃
whiteglass.setBlockLayer("TRANSLUCENT");
whiteglass.slipperiness = 0.3;//设置方块滑度，冰为0.98
whiteglass.setLightOpacity(3);
whiteglass.setLightValue(0);
whiteglass.setBlockHardness(7.5);
whiteglass.setBlockResistance(15);
whiteglass.setToolClass("pickaxe");
whiteglass.setToolLevel(3);
whiteglass.setBlockSoundType(<soundtype:glass>);
whiteglass.creativeTab = <creativetab:atomicfurnace_block>;
whiteglass.register();






/*==========普通方块
val 2333333333 as Block = VanillaFactory.createBlock("2333_33333", <blockmaterial:iron>);//
2333333333.fullBlock = true;
2333333333.setLightOpacity(255);
2333333333.translucent = true;
2333333333.setLightValue(0);
2333333333.setBlockHardness(7.5);
2333333333.setBlockResistance(100.0);
2333333333.setToolClass("pickaxe");
2333333333.setToolLevel(3);
2333333333.setBlockSoundType(<soundtype:metal>, false);
2333333333.creativeTab = <creativetab:atomicfurnace_block>;
2333333333.register();
*/

/*==========四向旋转方块
val 2333333333 as Block = VanillaFactory.createDirectionalBlock("2333_33333", <blockmaterial:iron>, "HORIZONTAL");//
2333333333.fullBlock = true;
2333333333.setLightOpacity(255);
2333333333.translucent = true;
2333333333.setLightValue(0);
2333333333.setBlockHardness(7.5);
2333333333.setBlockResistance(100.0);
2333333333.setToolClass("pickaxe");
2333333333.setToolLevel(3);
2333333333.setBlockSoundType(<soundtype:metal>, false);
2333333333.creativeTab = <creativetab:atomicfurnace_block>;
2333333333.register();
*/

/*==========全向旋转方块
val 2333333333 as Block = VanillaFactory.createDirectionalBlock("2333_33333", <blockmaterial:iron>, "ALL");//
2333333333.fullBlock = true;
2333333333.setLightOpacity(255);
2333333333.translucent = true;
2333333333.setLightValue(0);
2333333333.setBlockHardness(7.5);
2333333333.setBlockResistance(100.0);
2333333333.setToolClass("pickaxe");
2333333333.setToolLevel(3);
2333333333.setBlockSoundType(<soundtype:metal>, false);
2333333333.creativeTab = <creativetab:atomicfurnace_block>;
2333333333.register();
*/

//可能是半砖
//2333333333.axisAlignedBB = AxisAlignedBB.create(0.0,0.0,0.0,1.0,0.5,1.0);



