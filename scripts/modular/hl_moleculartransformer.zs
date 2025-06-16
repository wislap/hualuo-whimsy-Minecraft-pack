import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

RecipeBuilder.newBuilder("moleculartransformer_po","moleculartransformer",1)
	.addEnergyPerTickInput(400000000)
	.addItemInputs([
		<moretcon:ingotgallium>*1
	])
	.addItemOutput(<mekanism:poloniumpellet>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_ga","moleculartransformer",1)
	.addEnergyPerTickInput(400000000)
	.addItemInputs([
		<ore:ingotLead>*1
	])
	.addItemOutput(<moretcon:ingotgallium>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_ir","moleculartransformer",1)
	.addEnergyPerTickInput(800000000)
	.addItemInputs([
		<minecraft:iron_ingot>*1
	])
	.addItemOutput(<ic2:misc_resource:1>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_pu","moleculartransformer",1)
	.addEnergyPerTickInput(400000000)
	.addItemInputs([
		<ore:ingotTitanium>*1
	])
	.addItemOutput(<mekanism:plutoniumpellet>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_shd","moleculartransformer",1)
	.addEnergyPerTickInput(80000000)
	.addItemInputs([
		<ore:ingotManasteel>*1
	])
	.addItemOutput(<abyssalcraft:cingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_jzd","moleculartransformer",1)
	.addEnergyPerTickInput(80000000)
	.addItemInputs([
		<ore:ingotElvenElementium>*1
	])
	.addItemOutput(<abyssalcraft:dreadiumingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_ysd","moleculartransformer",1)
	.addEnergyPerTickInput(80000000)
	.addItemInputs([
		<ore:ingotTerrasteel>*1
	])
	.addItemOutput(<abyssalcraft:abyingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_yssd","moleculartransformer",1)
	.addEnergyPerTickInput(100000000)
	.addItemInputs([
		<ore:gaiaIngot>*1
	])
	.addItemOutput(<abyssalcraft:ethaxiumingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_ns","moleculartransformer",1)
	.addEnergyPerTickInput(400000000)
	.addItemInputs([
		<minecraft:skull:1>*1
	])
	.addItemOutput(<minecraft:nether_star>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_syg","moleculartransformer",1)
	.addEnergyPerTickInput(100000000)
	.addItemInputs([
		<ore:ingotOrichalcos>*1
	])
	.addItemOutput(<iceandfire:dragonsteel_fire_ingot>*1)
	.addItemOutput(<iceandfire:dragonsteel_ice_ingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_gad","moleculartransformer",1)
	.addEnergyPerTickInput(100000000)
	.addItemInputs([
		<ore:ingotThaumium>*1,
		<ore:ingotDraconiumAwakened>*1
	])
	.addItemOutput(<extrabotany:material:5>*1)
	.addItemOutput(<extrabotany:material:8>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_yzwz","moleculartransformer",1)
	.addEnergyPerTickInput(1000000000)
	.addItemInputs([
		<ore:ingotUltimate>*1,
		<ore:ingotUUMatter>*1,
		<ore:ingotDraconicMetal>*1,
		<ore:gemRedDiamond>*1,
		<ore:ingotDarkIron>*1
	])
	.addItemOutput(<mekanism:cosmicmatter>*4)
	.build();
	
RecipeBuilder.newBuilder("moleculartransformer_fwz","moleculartransformer",1)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<mekanism:cosmicmatter>*1
	])
	.addItemOutput(<mekanism:antimatterpellet>*1)
	.build();
