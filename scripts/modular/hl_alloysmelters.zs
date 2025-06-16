import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

RecipeBuilder.newBuilder("alloysmelters_sshj","alloysmelters",960)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<ore:ingotGravitonium>*4,
		<ore:gemEnderal>*1,
		<ore:blockIrradium>*8,
		<ore:blockIron>*8,
		<ore:blockCobalt>*8,
		<ore:obsidian>*16
	])
	.addItemOutput(<moretcon:ingottrichromadentium>*1)
	.build();

RecipeBuilder.newBuilder("alloysmelters_atny","alloysmelters",960)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<ore:ingotGravitonium>*4,
		<ore:gemErythynite>*1,
		<ore:ingotGallium>*2,
		<ore:blockGold>*8,
		<ore:blockRunesteel>*4,
		<ore:blockFusionite>*1
	])
	.addItemOutput(<moretcon:ingotatronium>*1)
	.build();

RecipeBuilder.newBuilder("alloysmeltes_tyg","alloysmelters",960)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<ore:ingotGravitonium>*4,
		<ore:gemIgniglomerate>*1,
		<ore:alloyBasic>*16,
		<ore:ingotFusionite>*4,
		<ore:ingotSteel>*3
	])
	.addItemOutput(<moretcon:ingotsolarsteel>*1)
	.build();

RecipeBuilder.newBuilder("alloysmelters_vim","alloysmelters",960)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<ore:ingotGravitonium>*4,
		<ore:ingotSteel>*1,
		<ore:blockSteel>*4,
		<ore:blockCobalt>*4,
		<ore:blockGravitonium>*1,
		<ore:ingotGallium>*4,
		<ore:ingotFusionite>*4
	])
	.addItemOutput(<moretcon:ingotvalasium>*1)
	.build();

RecipeBuilder.newBuilder("alloysmelters_mtc_alloy","alloysmelters",960)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<ore:blockDiamond>*4,
		<botania:storage:1>*1,
		<ore:blockTitanium>*4,
		<ore:blockBrass>*1,
		<ore:blockThaumium>*1,
		<ore:blockWyvernMetal>*1
	])
	.addItemOutput(<moretcon:blockebonite>*1)
	.addItemOutput(<moretcon:blockirradium>*1)
	.addItemOutput(<moretcon:blockgravitonium>*1)
	.addItemOutput(<moretcon:blockrunesteel>*1)
	.addItemOutput(<moretcon:blockfusionite>*1)
	.build();

RecipeBuilder.newBuilder("alloysmelters_mtc_cy","alloysmelters",960)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<botania:storage:4>*4,
		<ore:blockCrystal>*1,
		<appliedenergistics2:fluix_block>*8,
		<ore:blockWyvernMetal>*2
	])
	.addItemOutput(<moretcon:blockigniglomerate>*1)
	.addItemOutput(<moretcon:blockgarstone>*1)
	.addItemOutput(<moretcon:blocketherstone>*1)
	.addItemOutput(<moretcon:blockerythynite>*1)
	.addItemOutput(<moretcon:blockenderal>*1)
	.addItemOutput(<moretcon:blockbloodstone>*1)
	.addItemOutput(<moretcon:blockvoidspar>*1)
	.build();
