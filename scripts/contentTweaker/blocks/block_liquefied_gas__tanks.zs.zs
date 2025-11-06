#loader contenttweaker
#priority 12

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
    block.axisAlignedBB = AxisAlignedBB.create(0.0,0.0,0.0,1.0,1.6,1.0);
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

function registerUniversal(name1 as string,revolve1 as string,fullBlock1 as bool,lightOpacity1 as int,translucent1 as bool,lightValue1 as int,hardness1 as int,resistance1 as int,toolclass1 as string,toollevel1 as int,soundtype1 as SoundType,planeRotatable as bool) {
    val block as Block = VanillaFactory.createDirectionalBlock(name1, <blockmaterial:iron>, revolve1, planeRotatable);//液化气储罐系列
    block.axisAlignedBB = AxisAlignedBB.create(0.1,0.0,0.1,0.9,1.6,0.9);
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


# /////////////////////////////////////////////////////////////[液化气体储罐系列]/////////////////////////////////////////////////////////////

# 箱装液化冷媒储罐
createDirectionalBlock("box_of_refrigerant", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:cloth>, false);
# 箱装R12液化冷媒储罐
createDirectionalBlock("box_of_r12_refrigerant", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:cloth>, false);
# 箱装R22液化冷媒储罐
createDirectionalBlock("box_of_r22_refrigerant", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:cloth>, false);
# 箱装R134a液化冷媒储罐
createDirectionalBlock("box_of_r134a_refrigerant", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:cloth>, false);
# 箱装R1234ze液化冷媒储罐
createDirectionalBlock("box_of_r1234ze_refrigerant", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:cloth>, false);
# 箱装R125液化冷媒储罐
createDirectionalBlock("box_of_r125_refrigerant", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:cloth>, false);
# 箱装R407c冷液化媒储罐
createDirectionalBlock("box_of_r407c_refrigerant", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:cloth>, false);
# 箱装R410a液化冷媒储罐
createDirectionalBlock("box_of_r410a_refrigerant", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:cloth>, false);
# 箱装R290液化冷媒储罐
createDirectionalBlock("box_of_r290_refrigerant", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:cloth>, false);
# 箱装R32液化冷媒储罐
createDirectionalBlock("box_of_r32_refrigerant", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:cloth>, false);

# 液化冷媒储罐
registerUniversal("liquefied_refrigerant_storage_tank", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# R12液化冷媒储罐
registerUniversal("r12_liquefied_refrigerant_storage_tank", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# R22液化冷媒储罐
registerUniversal("r22_liquefied_refrigerant_storage_tank", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# R134a液化冷媒储罐
registerUniversal("r134a_liquefied_refrigerant_storage_tank", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# R1234ze液化冷媒储罐
registerUniversal("r1234ze_liquefied_refrigerant_storage_tank", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# R125液化冷媒储罐
registerUniversal("r125_liquefied_refrigerant_storage_tank", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# R407c冷液化媒储罐
registerUniversal("r407c_liquefied_refrigerant_storage_tank", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# R410a液化冷媒储罐
registerUniversal("r410a_liquefied_refrigerant_storage_tank", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# R290液化冷媒储罐
registerUniversal("r290_liquefied_refrigerant_storage_tank", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);
# R32液化冷媒储罐
registerUniversal("r32_liquefied_refrigerant_storage_tank", "HORIZONTAL", false, 0, true, 0, 7.5, 16, "pickaxe", 3, <soundtype:anvil>, false);

