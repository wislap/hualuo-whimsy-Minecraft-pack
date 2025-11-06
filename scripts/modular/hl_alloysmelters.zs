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

RecipeBuilder.newBuilder("alloysmelters_te_wy","alloysmelters",400)
	.addEnergyPerTickInput(6400)
	.addItemInputs([
		<ore:blockRedstone>*2,
		<draconicevolution:wyvern_core>*9,
		<ore:blockDiamond>*2,
		<tconevo:material>*9
	])
	.addItemOutput(<tconevo:metal>*9)
	.build();

RecipeBuilder.newBuilder("alloysmelters_te_dr","alloysmelters",400)
	.addEnergyPerTickInput(102400)
	.addItemInputs([
		<ore:blockNetherStar>*2,
		<draconicevolution:awakened_core>*9,
		<draconicevolution:wyvern_energy_core>*9,
		<tconevo:material>*9
	])
	.addItemOutput(<tconevo:metal:5>*9)
	.build();

RecipeBuilder.newBuilder("alloysmelters_te_ch","alloysmelters",400)
	.addEnergyPerTickInput(25600000)
	.addItemInputs([
		<draconicevolution:draconic_energy_core>*9,
		<draconicevolution:chaotic_core>*9,
		<ore:dragonEgg>*18,
		<tconevo:material>*9
	])
	.addItemOutput(<tconevo:metal:10>*9)
	.build();

RecipeBuilder.newBuilder("alloysmelters_te_fwg","alloysmelters",200)
	.addEnergyPerTickInput(2000)
	.addItemInputs([
		<ore:obsidian>*1,
		<ore:blockSteel>*1,
		<ore:blockArdite>*1,
		<ore:ingotGold>*2
	])
	.addItemOutput(<moretcon:ingotrunesteel>*1)
	.build();

RecipeBuilder.newBuilder("alloysmelters_NbTi","alloysmelters",200)
	.addEnergyPerTickInput(4000)
	.addItemInputs([
		<ore:dustNiobium>*1,
		<ore:dustTitanium>*3
	])
	.addItemOutput(<mets:niobium_titanium_ingot>*4)
	.build();

RecipeBuilder.newBuilder("alloysmelters_steel","alloysmelters",200)
	.addEnergyPerTickInput(4000)
	.addItemInputs([
		<ore:blockCoal>*4,
		<ore:blockIron>*1
	])
	.addItemOutput(<thermalfoundation:storage_alloy>*1)
	.build();

RecipeBuilder.newBuilder("alloysmelters_myl","alloysmelters",200)
	.addEnergyPerTickInput(4000)
	.addItemInputs([
		<tconstruct:ingots:0>*4,
		<tconstruct:ingots:1>*4
	])
	.addItemOutput(<tconstruct:ingots:2>*4)
	.build();

RecipeBuilder.newBuilder("alloysmelters_jbzzjz","alloysmelters",200)
	.addEnergyPerTickInput(400000)
	.addItemInputs([
		<avaritia:resource:1>*4,
		<contenttweaker:degenerate_neutron_ingots>*4
	])
	.addItemOutput(<contenttweaker:degenerate_neutron_matrix_ingots>*4)
	.build();

RecipeBuilder.newBuilder("alloysmelters_nlhddy","alloysmelters",200)
	.addEnergyPerTickInput(400000)
	.addItemInputs([
		<mekanism:modulebase>*1,
		<contenttweaker:chaos_stance_generator>*2,
		<ore:Antimatter>*4,
		<ore:PoloniumPellet>*4,
		<mekanism:controlcircuit:3>*2
	])
	.addItemOutput(<moremekasuitmodules:module_energy_shield_unit>*1)
	.build();