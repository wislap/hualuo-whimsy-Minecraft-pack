#priority 6

import mods.zenutils.StaticString;


/* 
# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[粉]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:dust_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:dust_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.dust"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[粒]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:grain_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:grain_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.grain"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[板]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:plate_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:plate_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.plate"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[致密板]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:dense_plate_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:dense_plate_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.dense_plate"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[外壳]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:housing_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:housing_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.housing"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[齿轮]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:cogs_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:cogs_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.cogs"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[精密齿轮]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:precision_cogs_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:precision_cogs_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.precision_cogs"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[棒]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:club_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:club_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.club"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[棒料]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:bar_stock_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:bar_stock_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.bar_stock"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[粗棒料]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:coarse_zbar_stock_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:coarse_zbar_stock_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.coarse_zbar_stock"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[管]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:tube_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:tube_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.tube"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[重型螺栓]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:duty_bolts_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:duty_bolts_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.duty_bolts"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[重型加长螺栓]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:duty_lengthen_bolts_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:duty_lengthen_bolts_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.duty_lengthen_bolts"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[精密螺丝]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:precision_bolts_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:precision_bolts_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.precision_bolts"), [game.localize("base.material." ~ materialName)]);
}

# /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////[精密加长螺丝]

for item in itemUtils.getItemsByRegexRegistryName("^contenttweaker:precision_lengthen_bolts_.*") {
    val materialName as string = item.definition.id.substring("contenttweaker:precision_lengthen_bolts_".length);
    item.displayName = StaticString.format(game.localize("contenttweaker.part.precision_lengthen_bolts"), [game.localize("base.material." ~ materialName)]);
}

*/

# 粉---------------dust
# 粒---------------grain-----------------------grain
# 板---------------plate-----------------------plate
# 致密板-----------dense_plate-----------------denseplate
# 外壳-------------housing---------------------housing
# 齿轮-------------cogs------------------------cogs
# 精密齿轮----------precision_cogs-------------precisioncogs
# 棒---------------club------------------------club
# 棒料-------------bar_stock-------------------barstock
# 粗棒料-----------coarse_zbar_stock-----------coarsezbarstock
# 重型螺栓---------duty_bolts------------------dutybolts
# 重型加长螺栓-----duty_lengthen_bolts----------dutylengthenbolts
# 精密螺丝---------precision_bolts--------------precisionbolts
# 精密加长螺丝-----precision_lengthen_bolts-----precisionengthenbolts

