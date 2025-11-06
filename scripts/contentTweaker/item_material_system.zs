#loader contenttweaker
#priority 7

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.PartType;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.PartDataPiece;

val zsTab as CreativeTab = VanillaFactory.createCreativeTab("atomicfurnace_material_system", <item:contenttweaker:duty_lengthen_bolts_tc4_titanium_alloy>);
zsTab.register();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[粉]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val dust as PartType = MaterialSystem.createPartType("dust", function(materialPart){
    var materialName as string = materialPart.getMaterial().getName();
    var dust as Item = VanillaFactory.createItem("dust_" ~ materialName.toLowerCase());
    dust.creativeTab = <creativetab:atomicfurnace_material_system>;
    dust.register();
});
//用新的类型创建 Part-部件
val dustPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Dust").setPartType(dust).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[粒]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val grain as PartType = MaterialSystem.createPartType("grain", function(materialPart){
    var materialName as string = materialPart.getMaterial().getName();
    var grain as Item = VanillaFactory.createItem("grain_" ~ materialName.toLowerCase());
    grain.creativeTab = <creativetab:atomicfurnace_material_system>;
    grain.register();
});
//用新的类型创建 Part-部件
val grainPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Grain").setPartType(grain).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[板]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val plate as PartType = MaterialSystem.createPartType("plate", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var plate as Item = VanillaFactory.createItem("plate_" ~ materialName.toLowerCase());
    plate.creativeTab = <creativetab:atomicfurnace_material_system>;
    plate.register();
});
//用新的类型创建 Part-部件
val platePart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Plate").setPartType(plate).build();

# ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[致密板]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val denseplate as PartType = MaterialSystem.createPartType("dense_plate", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var denseplate as Item = VanillaFactory.createItem("dense_plate_" ~ materialName.toLowerCase());
    denseplate.creativeTab = <creativetab:atomicfurnace_material_system>;
    denseplate.register();
});
//用新的类型创建 Part-部件
val denseplatePart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Dense_plate").setPartType(denseplate).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[外壳]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val housing as PartType = MaterialSystem.createPartType("housing", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var housing as Item = VanillaFactory.createItem("housing_" ~ materialName.toLowerCase());
    housing.creativeTab = <creativetab:atomicfurnace_material_system>;
    housing.register();
});
//用新的类型创建 Part-部件
val housingPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Housing").setPartType(housing).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[齿轮]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val cogs as PartType = MaterialSystem.createPartType("cogs", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var cogs as Item = VanillaFactory.createItem("cogs_" ~ materialName.toLowerCase());
    cogs.creativeTab = <creativetab:atomicfurnace_material_system>;
    cogs.register();
});
//用新的类型创建 Part-部件
val cogsPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Cogs").setPartType(cogs).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[精密齿轮]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val precisioncogs as PartType = MaterialSystem.createPartType("precision_cogs", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var precisioncogs as Item = VanillaFactory.createItem("precision_cogs_" ~ materialName.toLowerCase());
    precisioncogs.creativeTab = <creativetab:atomicfurnace_material_system>;
    precisioncogs.register();
});
//用新的类型创建 Part-部件
val precisioncogsPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Precision_cogs").setPartType(precisioncogs).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[棒]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val club as PartType = MaterialSystem.createPartType("club", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var club as Item = VanillaFactory.createItem("club_" ~ materialName.toLowerCase());
    club.creativeTab = <creativetab:atomicfurnace_material_system>;
    club.register();
});
//用新的类型创建 Part-部件
val clubPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Club").setPartType(club).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[棒料]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val barstock as PartType = MaterialSystem.createPartType("bar_stock", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var barstock as Item = VanillaFactory.createItem("bar_stock_" ~ materialName.toLowerCase());
    barstock.creativeTab = <creativetab:atomicfurnace_material_system>;
    barstock.register();
});
//用新的类型创建 Part-部件
val barstockPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Bar_stock").setPartType(barstock).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[粗棒料]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val coarsezbarstock as PartType = MaterialSystem.createPartType("coarse_zbar_stock", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var coarsezbarstock as Item = VanillaFactory.createItem("coarse_zbar_stock_" ~ materialName.toLowerCase());
    coarsezbarstock.creativeTab = <creativetab:atomicfurnace_material_system>;
    coarsezbarstock.register();
});
//用新的类型创建 Part-部件
val coarsezbarstockPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Coarse_Zbar_Stock").setPartType(coarsezbarstock).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[管]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val tube as PartType = MaterialSystem.createPartType("tube", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var tube as Item = VanillaFactory.createItem("tube_" ~ materialName.toLowerCase());
    tube.creativeTab = <creativetab:atomicfurnace_material_system>;
    tube.register();
});
//用新的类型创建 Part-部件
val tubePart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Tube").setPartType(tube).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[重型螺栓]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val dutybolts as PartType = MaterialSystem.createPartType("duty_bolts", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var dutybolts as Item = VanillaFactory.createItem("duty_bolts_" ~ materialName.toLowerCase());
    dutybolts.creativeTab = <creativetab:atomicfurnace_material_system>;
    dutybolts.register();
});
//用新的类型创建 Part-部件
val dutyboltsPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Duty_Bolts").setPartType(dutybolts).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[重型加长螺栓]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val dutylengthenbolts as PartType = MaterialSystem.createPartType("duty_lengthen_bolts", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var dutylengthenbolts as Item = VanillaFactory.createItem("duty_lengthen_bolts_" ~ materialName.toLowerCase());
    dutylengthenbolts.creativeTab = <creativetab:atomicfurnace_material_system>;
    dutylengthenbolts.register();
});
//用新的类型创建 Part-部件
val dutylengthenboltsPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Duty_Lengthen_Bolts").setPartType(dutylengthenbolts).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[精密螺丝]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val precisionbolts as PartType = MaterialSystem.createPartType("precision_bolts", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var precisionbolts as Item = VanillaFactory.createItem("precision_bolts_" ~ materialName.toLowerCase());
    precisionbolts.creativeTab = <creativetab:atomicfurnace_material_system>;
    precisionbolts.register();
});
//用新的类型创建 Part-部件
val precisionboltsPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Precision_Bolts").setPartType(precisionbolts).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[精密加长螺丝]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val precisionlengthenbolts as PartType = MaterialSystem.createPartType("precision_lengthen_bolts", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var precisionlengthenbolts as Item = VanillaFactory.createItem("precision_lengthen_bolts_" ~ materialName.toLowerCase());
    precisionlengthenbolts.creativeTab = <creativetab:atomicfurnace_material_system>;
    precisionlengthenbolts.register();
});
//用新的类型创建 Part-部件
val precisionlengthenboltsPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Precision_Lengthen_Bolts").setPartType(precisionbolts).build();

/* 
# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[反应器单元]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val reactorunit as PartType = MaterialSystem.createPartType("reactor_unit", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var reactorunit as Item = VanillaFactory.createItem("reactor_unit_" ~ materialName.toLowerCase());
    reactorunit.creativeTab = <creativetab:atomicfurnace_material_system>;
    reactorunit.register();
});
//用新的类型创建 Part-部件
val reactorunitPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Reactor_Unit").setPartType(precisionbolts).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[强化反应器单元]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val strengthenedreactorsunit as PartType = MaterialSystem.createPartType("strengthened_reactors_unit", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var strengthenedreactorsunit as Item = VanillaFactory.createItem("strengthened_reactors_unit_" ~ materialName.toLowerCase());
    strengthenedreactorsunit.creativeTab = <creativetab:atomicfurnace_material_system>;
    strengthenedreactorsunit.register();
});
//用新的类型创建 Part-部件
val strengthenedreactorsunitPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Strengthened_Reactors_Unit").setPartType(precisionbolts).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[铱合金反应单元]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val iridiumalloyunit as PartType = MaterialSystem.createPartType("iridium_alloy_unit", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var iridiumalloyunit as Item = VanillaFactory.createItem("iridium_alloy_unit_" ~ materialName.toLowerCase());
    iridiumalloyunit.creativeTab = <creativetab:atomicfurnace_material_system>;
    iridiumalloyunit.register();
});
//用新的类型创建 Part-部件
val iridiumalloyunitPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Iridium_Alloy_Unit").setPartType(iridiumalloyunit).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[强化铱合金反应单元]

//val 变量名 as PartType = MaterialSystem.createPartType("类型ID", function(materialPart){
val strengthenediridiumalloyunit as PartType = MaterialSystem.createPartType("strengthened_iridium_alloy_unit", function(materialPart){
    val materialName as string = materialPart.getMaterial().getName();
    var strengthenediridiumalloyunit as Item = VanillaFactory.createItem("strengthened_iridium_alloy_unit_" ~ materialName.toLowerCase());
    strengthenediridiumalloyunit.creativeTab = <creativetab:atomicfurnace_material_system>;
    strengthenediridiumalloyunit.register();
});
//用新的类型创建 Part-部件
val strengthenediridiumalloyunitPart = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Strengthened_Iridium_Alloy_Unit").setPartType(strengthenediridiumalloyunit).build();

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[注册材料]
*/

val stainlesssteel = MaterialSystem.getMaterialBuilder().setName("stainless_steel").setColor(0xffffff).build();
val tungsten = MaterialSystem.getMaterialBuilder().setName("tungsten").setColor(0xffffff).build();
val cocrwalloys = MaterialSystem.getMaterialBuilder().setName("cocrw_alloys").setColor(0xffffff).build();
val tzmalloys = MaterialSystem.getMaterialBuilder().setName("tzm_alloys").setColor(0xffffff).build();

val osmium = MaterialSystem.getMaterialBuilder().setName("osmium").setColor(0xffffff).build();
val iridiumosmiumalloy = MaterialSystem.getMaterialBuilder().setName("iridium_osmium_alloy").setColor(0xffffff).build();
val denseiridiumosmiumalloy = MaterialSystem.getMaterialBuilder().setName("dense_iridium_osmium_alloy").setColor(0xffffff).build();
val iridium = MaterialSystem.getMaterialBuilder().setName("iridium").setColor(0xffffff).build();
val superiridiumalloy = MaterialSystem.getMaterialBuilder().setName("super_iridium_alloy").setColor(0xffffff).build();
val tc4titaniumalloy = MaterialSystem.getMaterialBuilder().setName("tc4_titanium_alloy").setColor(0xffffff).build();
val niobiumtitaniumalloy = MaterialSystem.getMaterialBuilder().setName("niobium_titanium_alloy").setColor(0xffffff).build();
val dragonvegetarian = MaterialSystem.getMaterialBuilder().setName("dragon_vegetarian").setColor(0xffffff).build();
val awakeneddragon = MaterialSystem.getMaterialBuilder().setName("awakened_dragon").setColor(0xffffff).build();
val chaosmetal = MaterialSystem.getMaterialBuilder().setName("chaos_metal").setColor(0xffffff).build();
val crystalmatrix = MaterialSystem.getMaterialBuilder().setName("crystal_matrix").setColor(0xffffff).build();
val stellaralloy = MaterialSystem.getMaterialBuilder().setName("stellar_alloy").setColor(0xffffff).build();

val densestellarmaterials = MaterialSystem.getMaterialBuilder().setName("dense_stellar_materials").setColor(0xffffff).build();
val stellarmaterials = MaterialSystem.getMaterialBuilder().setName("stellar_materials").setColor(0xffffff).build();
val criticaldtfuel = MaterialSystem.getMaterialBuilder().setName("critical_dt_fuel").setColor(0xffffff).build();
val dtfuel = MaterialSystem.getMaterialBuilder().setName("dt_fuel").setColor(0xffffff).build();


# 粉---------------dust
# 板---------------plate-----------------------plate
# 致密板-----------dense_plate-----------------denseplate
# 外壳-------------housing---------------------housing
# 齿轮-------------cogs------------------------cogs
# 精密齿轮----------precision_cogs-------------precisioncogs
# 棒---------------club------------------------club
# 棒料-------------bar_stock-------------------barstock
# 粗棒料-----------coarse_zbar_stock-----------coarsezbarstock
# 管--------------tube-------------------------tube
# 重型螺栓---------duty_bolts------------------dutybolts
# 重型加长螺栓-----duty_lengthen_bolts----------dutylengthenbolts
# 精密螺丝---------precision_bolts--------------precisionbolts
# 精密加长螺丝-----precision_lengthen_bolts-----precisionengthenbolts

# 反应器单元---------------reactor_unit-----------------------reactorunit
# 强化反应器单元-----------strengthened_reactors_unit---------strengthenedreactorsunit
# 铱合金反应单元-----------iridium_alloy_unit-----------------iridiumalloyunit
# 强化铱合金反应单元-------strengthened_iridium_alloy_unit-----strengthenediridiumalloyunit

# /////////////////////////////////////

# 钨钢---------------tungsten-----------------------tungsten
# 不锈钢-------------stainless_steel----------------stainlesssteel
# 钴铬钨合金---------cocrw_alloys-------------------cocrwalloys
# TZM合金------------tzm_alloys---------------------tzmalloys

# 锇-----------------osmium-------------------------osmium
# 铱锇合金-----------iridium_osmium_alloy-----------iridiumosmiumalloy
# 超级致密铱锇合金----dense_iridium_osmium_alloy----denseiridiumosmiumalloy
# 铱-----------------iridium------------------------iridium
# 超级致密铱合金------super_iridium_alloy-----------superiridiumalloy
# TC4-钛合金---------tc4_titanium_alloy-------------tc4titaniumalloy
# 铌钛合金-----------niobium_titanium_alloy---------niobiumtitaniumalloy
# 龙素---------------dragon_vegetarian--------------dragonvegetarian
# 觉醒龙-------------awakened_dragon----------------awakeneddragon
# 混沌金属-----------chaos_metal--------------------chaosmetal
# 水晶矩阵-----------crystal_matrix-----------------crystalmatrix
# 恒星合金-----------stellar_alloy------------------stellaralloy

# 致密恒星物质-----------dense_stellar_materials-------------densestellarmaterials
# 恒星物质---------------stellar_materials-------------------stellarmaterials
# 临界D-T燃料------------critical_dt_fuel--------------------criticaldtfuel
# D-T燃料----------------dt_fuel----------------------------dtfuel


# 材料变量名.registerParts(部件ID string[] / 部件变量名 IPart[]);
stainlesssteel.registerParts(["dust","grain","plate","dense_plate","housing","cogs","precision_cogs","club","bar_stock","tube"] as string[]);
tungsten.registerParts(["dust","grain","plate","dense_plate","housing","cogs","precision_cogs","club","bar_stock","tube"] as string[]);
tzmalloys.registerParts(["plate","dense_plate","housing","cogs","precision_cogs","club","bar_stock","tube"] as string[]);
cocrwalloys.registerParts(["plate","dense_plate","housing","cogs","precision_cogs","club","bar_stock"] as string[]);


osmium.registerParts(["plate","dense_plate","housing","cogs","club","bar_stock"] as string[]);
iridiumosmiumalloy.registerParts(["dust","plate","dense_plate","housing","cogs","precision_cogs","club","bar_stock"] as string[]);
denseiridiumosmiumalloy.registerParts(["dust","plate","housing","cogs","precision_cogs","club","bar_stock"] as string[]);
iridium.registerParts(["housing","cogs","precision_cogs"] as string[]);
superiridiumalloy.registerParts(["housing","cogs","precision_cogs","club","bar_stock"] as string[]);
tc4titaniumalloy.registerParts(["dust","grain","plate","dense_plate","housing","cogs","precision_cogs","club","bar_stock","tube"] as string[]);
niobiumtitaniumalloy.registerParts(["housing"] as string[]);
dragonvegetarian.registerParts(["dust","plate","dense_plate","housing","cogs","precision_cogs","club"] as string[]);
awakeneddragon.registerParts(["dust","plate","dense_plate","housing","cogs","precision_cogs","club","bar_stock"] as string[]);
crystalmatrix.registerParts(["plate","dense_plate","housing"] as string[]);
stellaralloy.registerParts(["dust","plate","dense_plate","housing","cogs","precision_cogs","club","bar_stock"] as string[]);

# 粒-grain 粉-dust 板-plate 致密板-dense_plate 外壳-housing
# 齿轮-cogs 精密齿轮-precision_cogs
# 棒-club 棒料-bar_stock 粗棒料-coarse_zbar_stock 管-tube
# 重型螺栓-duty_bolts 重型长螺栓-duty_lengthen_bolts
# 精密螺丝-precision_bolts 精密长螺丝-precision_lengthen_bolts


# 反应器单元---------------reactor_unit 强化反应器单元-----------strengthened_reactors_unit
# 铱合金反应单元-----------iridium_alloy_unit 强化铱合金反应单元-------strengthened_iridium_alloy_unit


# 粒-grain 粉-dust 板-plate 致密板-denseplate 外壳-housing
# 齿轮-cogs 精密齿轮-precisioncogs
# 棒-club 棒料-barstock 粗棒料-coarsezbarstock 管-tube
# 重型螺栓-dutybolts 重型加长螺栓-dutylengthenbolts
# 精密螺丝-precisionbolts 精密长螺丝-precisionlengthenbolts

# 反应器单元-reactorunit 强化反应器单元-strengthenedreactorsunit
# 铱合金反应单元-iridiumalloyunit 强化铱合金反应单元-strengthenediridiumalloyunit


# 材料变量名.registerParts(部件ID string[] / 部件变量名 IPart[]);
# osmium.registerParts([] as string[]);

# 部件变量名.registerToMaterials(材料变量名 Material[]);
# denseplate.registerToMaterials([] as Material[]);