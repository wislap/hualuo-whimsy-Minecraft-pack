import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

RecipeBuilder.newBuilder("assemblyplant_ii5","assemblyplant",600)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockinputbus:4>*2,
		<appliedenergistics2:material:35>*1
	])
	.addItemOutput(<modularmachinery:blockinputbus:5>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_io5","assemblyplant",600)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockoutputbus:4>*2,
		<appliedenergistics2:material:35>*1
	])
	.addItemOutput(<modularmachinery:blockoutputbus:5>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_li5","assemblyplant",600)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockfluidinputhatch:4>*2,
		<appliedenergistics2:material:54>*1
	])
	.addItemOutput(<modularmachinery:blockfluidinputhatch:5>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_lo5","assemblyplant",600)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockfluidoutputhatch:4>*2,
		<appliedenergistics2:material:54>*1
	])
	.addItemOutput(<modularmachinery:blockfluidoutputhatch:5>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_ei5","assemblyplant",600)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockenergyinputhatch:4>*2,
		<draconicevolution:wyvern_energy_core>*1
	])
	.addItemOutput(<modularmachinery:blockenergyinputhatch:5>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eo5","assemblyplant",600)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockenergyoutputhatch:4>*2,
		<draconicevolution:wyvern_energy_core>*1
	])
	.addItemOutput(<modularmachinery:blockenergyoutputhatch:5>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_ii6","assemblyplant",600)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockinputbus:5>*2,
		<appliedenergistics2:material:37>*1
	])
	.addItemOutput(<modularmachinery:blockinputbus:6>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_io6","assemblyplant",600)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockoutputbus:5>*2,
		<appliedenergistics2:material:37>*1
	])
	.addItemOutput(<modularmachinery:blockoutputbus:6>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_li6","assemblyplant",600)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockfluidinputhatch:5>*2,
		<appliedenergistics2:material:56>*1
	])
	.addItemOutput(<modularmachinery:blockfluidinputhatch:6>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_lo6","assemblyplant",600)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockfluidoutputhatch:5>*2,
		<appliedenergistics2:material:56>*1
	])
	.addItemOutput(<modularmachinery:blockfluidoutputhatch:6>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_ei6","assemblyplant",600)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockenergyinputhatch:5>*2,
		<draconicevolution:draconic_energy_core>*1
	])
	.addItemOutput(<modularmachinery:blockenergyinputhatch:6>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eo6","assemblyplant",600)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<ore:circuitElite>*2,
		<modularmachinery:blockenergyoutputhatch:5>*2,
		<draconicevolution:draconic_energy_core>*1
	])
	.addItemOutput(<modularmachinery:blockenergyoutputhatch:6>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_li7","assemblyplant",600)
	.addEnergyPerTickInput(80000)
	.addItemInputs([
		<ore:circuitUltimate>*2,
		<modularmachinery:blockfluidinputhatch:6>*2,
		<appliedenergistics2:material:57>*1
	])
	.addItemOutput(<modularmachinery:blockfluidinputhatch:6>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_lo7","assemblyplant",600)
	.addEnergyPerTickInput(80000)
	.addItemInputs([
		<ore:circuitUltimate>*2,
		<modularmachinery:blockfluidoutputhatch:6>*2,
		<appliedenergistics2:material:57>*1
	])
	.addItemOutput(<modularmachinery:blockfluidoutputhatch:6>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_ei7","assemblyplant",600)
	.addEnergyPerTickInput(80000)
	.addItemInputs([
		<ore:circuitUltimate>*2,
		<modularmachinery:blockenergyinputhatch:6>*2,
		<draconicevolution:energy_storage_core>*1
	])
	.addItemOutput(<modularmachinery:blockenergyinputhatch:7>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eo7","assemblyplant",600)
	.addEnergyPerTickInput(80000)
	.addItemInputs([
		<ore:circuitUltimate>*2,
		<modularmachinery:blockenergyoutputhatch:6>*2,
		<draconicevolution:energy_storage_core>*1
	])
	.addItemOutput(<modularmachinery:blockenergyoutputhatch:6>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mii","assemblyplant",600)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<appliedenergistics2:interface>*4,
		<appliedenergistics2:part:260>*4,
		<appliedenergistics2:material:27>*2
	])
	.addItemOutput(<modularmachinery:blockmeiteminputbus>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mio","assemblyplant",600)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<appliedenergistics2:interface>*4,
		<appliedenergistics2:part:240>*4,
		<appliedenergistics2:material:27>*2
	])
	.addItemOutput(<modularmachinery:blockmeitemoutputbus>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mfi","assemblyplant",600)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<appliedenergistics2:fluid_interface>*4,
		<appliedenergistics2:part:241>*4,
		<appliedenergistics2:material:27>*2
	])
	.addItemOutput(<modularmachinery:blockmefluidinputbus>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mfo","assemblyplant",600)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<appliedenergistics2:fluid_interface>*4,
		<appliedenergistics2:part:261>*4,
		<appliedenergistics2:material:27>*2
	])
	.addItemOutput(<modularmachinery:blockmefluidoutputbus>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mgi","assemblyplant",600)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<mekeng:gas_interface>*4,
		<mekeng:gas_export_bus>*4,
		<appliedenergistics2:material:27>*2
	])
	.addItemOutput(<modularmachinery:blockmegasinputbus>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mgo","assemblyplant",100)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<mekeng:gas_interface>*4,
		<mekeng:gas_import_bus>*4,
		<appliedenergistics2:material:27>*2
	])
	.addItemOutput(<modularmachinery:blockmegasoutputbus>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_m","assemblyplant",100)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<ae2fc:trio_interface>*4,
		<appliedenergistics2:material:27>*4
	])
	.addItemOutput(<modularmachinery:blockmepatternprovider>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mk","assemblyplant",600)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<modularmachinery:blockmepatternprovider>*1
	])
	.addItemOutput(<whimcraft:blockshareinfhandler>*8)
	.build();

RecipeBuilder.newBuilder("assemblyplant_gzjk","assemblyplant",600)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<ore:ingotSteel>*4,
		<ore:ingotFiery>*2,
		<ore:ingotOsmium>*2,
		<ore:ingotKnightmetal>*2
	])
	.addItemOutput(<mekanism:basicblock:8>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_czdl","assemblyplant",3600)
	.addEnergyPerTickInput(100000000)
	.addItemInputs([
		<draconicevolution:chaotic_core>*1,
		<mekanism:controlcircuit:3>*2,
		<mekanism:cosmicalloy>*4
	])
	.addItemOutput(<mekanism:controlcircuit:4>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_yzhj","assemblyplant",1800)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<extendedcrafting:material:13>*1,
		<ore:alloyUltimate>*4,
		<ore:nuggetDraconicMetal>*3,
		<ore:ingotVoid>*4,
		<mekanism:cosmicmatter>*1
	])
	.addItemOutput(<mekanism:cosmicalloy>*4)
	.build();

RecipeBuilder.newBuilder("assemblyplant_lzqd","assemblyplant",20)
	.addEnergyPerTickInput(1000)
	.addItemInputs([
		<appliedenergistics2:material:47>*1,
		<ore:enderpearl>*1
	])
	.addItemOutput(<appliedenergistics2:material:48>*2)
	.build();

RecipeBuilder.newBuilder("assemblyplant_hdhx","assemblyplant",600)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<draconicevolution:awakened_core>*4,
		<ore:gemYellowDiamond>*1,
		<ore:gemRedDiamond>*1,
		<ore:gemBlueDiamond>*1,
		<draconicevolution:chaos_shard>*1
	])
	.addItemOutput(<draconicevolution:chaotic_core>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_jxhx","assemblyplant",300)
	.addEnergyPerTickInput(50000)
	.addItemInputs([
		<ore:ingotDraconiumAwakened>*4,
		<ore:ingotPalladium>*4,
		<draconicevolution:wyvern_core>*1
	])
	.addItemOutput(<draconicevolution:awakened_core>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_slfyd","assemblyplant",300)
	.addEnergyPerTickInput(50000)
	.addItemInputs([
		<ore:ingotDraconiumAwakened>*4,
		<ore:ingotPalladium>*4,
		<draconicevolution:chaos_shard>*1
	])
	.addItemOutput(<draconicevolution:reactor_core>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_uum","assemblyplant",1200)
	.addEnergyPerTickInput(400000)
	.addItemInputs([
		<ore:circuitUltimate>*4,
		<tconevo:metal_block:8>*1,
		<mets:te:37>*4
	])
	.addItemOutput(<modularmachinery:uumatter_manipulator_factory_controller>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_czy","assemblyplant",1200)
	.addEnergyPerTickInput(400000)
	.addItemInputs([
		<ore:circuitUltimate>*4,
		<mekanism:machineblock3:13>*4,
		<mets:te:22>*1,
		<draconicevolution:fusion_crafting_core>*1,
		<appliedenergistics2:condenser>*4
	])
	.addItemOutput(<modularmachinery:moleculartransformer_factory_controller>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_iter","assemblyplant",1200)
	.addEnergyPerTickInput(400000)
	.addItemInputs([
		<ore:circuitUltimate>*4,
		<mekanismgenerators:reactor>*2,
		<draconicevolution:reactor_core>*1,
		<twilightforest:tower_device:12>*4
	])
	.addItemOutput(<modularmachinery:fusion_reactor_factory_controller>*1)
	.build();

RecipeBuilder.newBuilder("baseplant_lx","baseplant",60)
	.addEnergyPerTickInput(40000)
	.addInput(<liquid:ic2uu_matter>*10)
	.addItemInputs([
		<ore:ingotRunesteel>*4,
		<ore:ingotEthaxium>*4,
		<ore:ingotTitanium>*4,
		<ore:ingotDraconium>*4
	])
	.addItemOutput(<draconicevolution:draconic_core>*1)
	.build();
