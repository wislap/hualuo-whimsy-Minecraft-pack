import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import moretweaker.galacticraft.Compressor;

RecipeBuilder.newBuilder("getherringexplosionscomperessor_t1","getherringexplosionscomperessor",160)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<minecraft:gunpowder>*4,
        <ore:ingotAluminum>*4,
        <ore:ingotSteel>*4,
        <ore:ingotBronze>*4
	])
	.addItemOutput(<galacticraftcore:heavy_plating>*2)
	.build();

RecipeBuilder.newBuilder("getherringexplosionscomperessor_t2","getherringexplosionscomperessor",160)
	.addEnergyPerTickInput(15000)
	.addItemInputs([
		<minecraft:gunpowder>*4,
        <ore:ingotMeteoricIron>*1,
        <galacticraftcore:heavy_plating>*1
	])
	.addItemOutput(<galacticraftplanets:item_basic_mars:3>*1)
	.build();

RecipeBuilder.newBuilder("getherringexplosionscomperessor_t3","getherringexplosionscomperessor",160)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<minecraft:gunpowder>*4,
        <ore:ingotDesh>*1,
        <galacticraftplanets:item_basic_mars:3>*1
	])
	.addItemOutput(<galacticraftplanets:item_basic_asteroids:5>*1)
	.build();

RecipeBuilder.newBuilder("getherringexplosionscomperessor_t4","getherringexplosionscomperessor",160)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<minecraft:tnt>*4,
        <ore:ingotCarbon>*2,
        <ore:ingotMercury>*8,
        <galacticraftplanets:item_basic_asteroids:5>*1
	])
	.addItemOutput(<extraplanets:tier4_items:3>*1)
	.build();

RecipeBuilder.newBuilder("getherringexplosionscomperessor_t5","getherringexplosionscomperessor",160)
	.addEnergyPerTickInput(60000)
	.addItemInputs([
		<minecraft:tnt>*4,
        <ore:ingotPalladium>*10,
        <extraplanets:tier4_items:3>*1
	])
	.addItemOutput(<extraplanets:tier5_items:3>*1)
	.build();

RecipeBuilder.newBuilder("getherringexplosionscomperessor_t6","getherringexplosionscomperessor",160)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<minecraft:tnt>*4,
        <ore:ingotMagnesium>*10,
        <extraplanets:tier5_items:3>*1
	])
	.addItemOutput(<extraplanets:tier6_items:3>*1)
	.build();

RecipeBuilder.newBuilder("getherringexplosionscomperessor_t7","getherringexplosionscomperessor",160)
	.addEnergyPerTickInput(120000)
	.addItemInputs([
		<minecraft:tnt>*4,
        <ore:ingotCrystal>*10,
        <extraplanets:tier6_items:3>*1
	])
	.addItemOutput(<extraplanets:tier7_items:3>*1)
	.build();

RecipeBuilder.newBuilder("getherringexplosionscomperessor_t8","getherringexplosionscomperessor",160)
	.addEnergyPerTickInput(140000)
	.addItemInputs([
		<mekanism:obsidiantnt>*4,
        <ore:ingotZinc>*7,
        <extraplanets:tier7_items:3>*1
	])
	.addItemOutput(<extraplanets:tier8_items:3>*1)
	.build();

RecipeBuilder.newBuilder("getherringexplosionscomperessor_t9","getherringexplosionscomperessor",160)
	.addEnergyPerTickInput(200000)
	.addItemInputs([
		<mekanism:obsidiantnt>*4,
        <ore:ingotTungsten>*10,
        <extraplanets:tier8_items:3>*1
	])
	.addItemOutput(<extraplanets:tier9_items:3>*1)
	.build();

RecipeBuilder.newBuilder("getherringexplosionscomperessor_t10","getherringexplosionscomperessor",160)
	.addEnergyPerTickInput(24000)
	.addItemInputs([
		<mekanism:obsidiantnt>*4,
        <ore:ingotDarkIron>*10,
        <extraplanets:tier9_items:3>*1
	])
	.addItemOutput(<extraplanets:tier10_items:3>*1)
	.build();

