import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

RecipeBuilder.newBuilder("baseplant_ii3","baseplant",300)
	.addEnergyPerTickInput(2000)
	.addItemInputs([
		<ore:circuitBasic>*2,
		<modularmachinery:blockinputbus:2>*2,

	])
	.addItemOutput(<modularmachinery:blockinputbus:3>*2)
	.build();

RecipeBuilder.newBuilder("baseplant_io3","baseplant",300)
	.addEnergyPerTickInput(2000)
	.addItemInputs([
		<ore:circuitBasic>*2,
		<modularmachinery:blockoutputbus:2>*2,
		<ironchest:iron_chest>*1
	])
	.addItemOutput(<modularmachinery:blockoutputbus:3>*2)
	.build();

RecipeBuilder.newBuilder("baseplant_li3","baseplant",300)
	.addEnergyPerTickInput(2000)
	.addItemInputs([
		<ore:circuitBasic>*2,
		<modularmachinery:blockfluidinputhatch:2>*2,
		<ironchest:iron_chest>*1
	])
	.addItemOutput(<modularmachinery:blockfluidinputhatch:3>*2)
	.build();

RecipeBuilder.newBuilder("baseplant_lo3","baseplant",300)
	.addEnergyPerTickInput(2000)
	.addItemInputs([
		<ore:circuitBasic>*2,
		<modularmachinery:blockfluidoutputhatch:2>*2,
		<mets:te:36>*1
	])
	.addItemOutput(<modularmachinery:blockfluidoutputhatch:3>*2)
	.build();

RecipeBuilder.newBuilder("baseplant_ei3","baseplant",300)
	.addEnergyPerTickInput(2000)
	.addItemInputs([
		<ore:circuitBasic>*2,
		<modularmachinery:blockenergyinputhatch:2>*2,
		<mets:te:36>*1,
		<ic2:dust:6>*9
	])
	.addItemOutput(<modularmachinery:blockenergyinputhatch:3>*2)
	.build();

RecipeBuilder.newBuilder("baseplant_eo3","baseplant",300)
	.addEnergyPerTickInput(2000)
	.addItemInputs([
		<ore:circuitBasic>*2,
		<modularmachinery:blockenergyoutputhatch:2>*2,
		<ic2:dust:6>*9
	])
	.addItemOutput(<modularmachinery:blockenergyoutputhatch:3>*2)
	.build();

RecipeBuilder.newBuilder("baseplant_ii4","baseplant",300)
	.addEnergyPerTickInput(4000)
	.addItemInputs([
		<ore:circuitAdvanced>*2,
		<modularmachinery:blockinputbus:3>*2,
		<ironchest:iron_chest:2>*1
	])
	.addItemOutput(<modularmachinery:blockinputbus:4>*4)
	.build();

RecipeBuilder.newBuilder("baseplant_io4","baseplant",300)
	.addEnergyPerTickInput(4000)
	.addItemInputs([
		<ore:circuitAdvanced>*2,
		<modularmachinery:blockoutputbus:3>*2,
		<ironchest:iron_chest:2>*1
	])
	.addItemOutput(<modularmachinery:blockoutputbus:4>*4)
	.build();

RecipeBuilder.newBuilder("baseplant_li4","baseplant",300)
	.addEnergyPerTickInput(4000)
	.addItemInputs([
		<ore:circuitAdvanced>*2,
		<modularmachinery:blockfluidinputhatch:3>*2,
		<ic2:te:134>*1
	])
	.addItemOutput(<modularmachinery:blockfluidinputhatch:4>*2)
	.build();

RecipeBuilder.newBuilder("baseplant_lo4","baseplant",300)
	.addEnergyPerTickInput(4000)
	.addItemInputs([
		<ore:circuitAdvanced>*2,
		<modularmachinery:blockfluidoutputhatch:3>*2,
		<ic2:te:134>*1
	])
	.addItemOutput(<modularmachinery:blockfluidoutputhatch:4>*2)
	.build();

RecipeBuilder.newBuilder("baseplant_ei4","baseplant",300)
	.addEnergyPerTickInput(4000)
	.addItemInputs([
		<ore:circuitAdvanced>*2,
		<modularmachinery:blockenergyinputhatch:3>*2,
		<ore:ingotEnergium>*2
	])
	.addItemOutput(<modularmachinery:blockenergyinputhatch:4>*2)
	.build();

RecipeBuilder.newBuilder("baseplant_eo4","baseplant",300)
	.addEnergyPerTickInput(4000)
	.addItemInputs([
		<ore:circuitAdvanced>*2,
		<modularmachinery:blockenergyinputhatch:3>*2,
		<ore:ingotEnergium>*2
	])
	.addItemOutput(<modularmachinery:blockenergyinputhatch:4>*2)
	.build();

RecipeBuilder.newBuilder("baseplant_jcjxwk","baseplant",160)
	.addEnergyPerTickInput(1000)
	.addItemInputs([
		<ore:plateIron>*12,
		<ore:dustRedstone>*4
	])
	.addItemOutput(<ic2:resource:12>*1)
	.build();

RecipeBuilder.newBuilder("baseplant_hhc","baseplant",300)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<mekanism:machineblock2:8>*1,
		<mekanism:machineblock2:3>*1,
		<mekanism:machineblock2:7>*1,
		<thermalexpansion:machine:3>*1,
		<thermalexpansion:machine:1>*1,
		<modularmachinery:oreintegrateprocessing_factory_controller>*2,
		<modularmachinery:blockcasing:4>*4
	])
	.addItemOutput(<modularmachinery:wloreactivaredplant_factory_controller>*1)
	.build();

RecipeBuilder.newBuilder("baseplant_gjzp","baseplant",300)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<draconicevolution:fusion_crafting_core>*1,
		<ic2:resource:13>*4,
		<mekanism:machineblock:8>*1,
		<appliedenergistics2:molecular_assembler>*4,
		<galaxyspace:rocket_assembler>*2
	])
	.addItemOutput(<modularmachinery:assemblyplant_factory_controller>*1)
	.build();

RecipeBuilder.newBuilder("baseplant_hhl","baseplant",300)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<ic2:resource:13>*4,
		<tconstruct:seared_tank>*4,
		<tconstruct:smeltery_controller>*4,
		<tconstruct:tinker_tank_controller>*4
	])
	.addItemOutput(<modularmachinery:mixsmelter_factory_controller>*1)
	.build();

RecipeBuilder.newBuilder("baseplant_clc","baseplant",300)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<ic2:resource:13>*4,
		<ic2:te:47>*4,
		<ic2:te:56>*4,
		<ic2:te:54>*4,
		<modularmachinery:blockcasing>*4
	])
	.addItemOutput(<modularmachinery:oreintegrateprocessing_factory_controller>*1)
	.build();

RecipeBuilder.newBuilder("baseplant_hjc","baseplant",300)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<ic2:resource:13>*4,
		<thermalexpansion:machine:3>*4,
		<ic2:te:12>*4
	])
	.addItemOutput(<modularmachinery:alloysmelters_factory_controller>*1)
	.build();

RecipeBuilder.newBuilder("baseplant_fdc","baseplant",300)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<ic2:resource:13>*4,
		<thermalexpansion:dynamo>*4,
		<thermalexpansion:dynamo:1>*4,
		<thermalexpansion:dynamo:2>*4,
		<thermalexpansion:dynamo:3>*4,
		<thermalexpansion:dynamo:4>*4
	])
	.addItemOutput(<modularmachinery:thermalpower_factory_controller>*1)
	.build();
