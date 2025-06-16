import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

RecipeBuilder.newBuilder("mixsmelter_crdx","mixsmelter",600)
	.addEnergyPerTickInput(0)
	.addItemInputs([
		<ore:blockBlaze>*16
	])
	.addItemOutput(<twilightforest:fiery_blood>*4)
	.build();

RecipeBuilder.newBuilder("mixsmelter_gy","mixsmelter",200)
	.addEnergyPerTickInput(0)
	.addItemInputs([
		<ore:ingotManasteel>*1,
		<ore:treeLeaves>*16
	])
	.addItemOutput(<twilightforest:steeleaf_ingot>*4)
	.build();

RecipeBuilder.newBuilder("mixsmelter_qsjs","mixsmelter",300)
	.addEnergyPerTickInput(0)
	.addItemInputs([
		<twilightforest:fiery_blood>*2,
		<ore:ingotIronwood>*4
	])
	.addItemOutput(<twilightforest:knightmetal_ingot>*2)
	.build();

RecipeBuilder.newBuilder("mixsmelter_tsd","mixsmelter",400)
	.addEnergyPerTickInput(0)
	.addItemInputs([
		<tconstruct:ingots>*1,
		<twilightforest:steeleaf_ingot>*2
	])
	.addItemOutput(<twilightforest:ironwood_ingot>*1)
	.build();
