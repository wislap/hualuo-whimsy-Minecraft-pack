import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

recipes.addShaped(<ecoaeextension:efabricator_casing>*4, 
[[null,<twilightforest:steeleaf_ingot>,null],
[<threng:big_assembler>,<appliedenergistics2:fluix_block>,<threng:big_assembler>],
[null,<twilightforest:steeleaf_ingot>,null]]);

recipes.addShaped(<ecoaeextension:estorage_casing>*4, 
[[null,<twilightforest:steeleaf_ingot>,null],
[<modularmachinery:itemmodularium>,<appliedenergistics2:fluix_block>,<modularmachinery:itemmodularium>],
[null,<twilightforest:steeleaf_ingot>,null]]);

recipes.addShaped(<ecoaeextension:ecalculator_casing>*4, 
[[null,<twilightforest:steeleaf_ingot>,null],
[<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:fluix_block>,<appliedenergistics2:smooth_sky_stone_block>],
[null,<twilightforest:steeleaf_ingot>,null]]);

recipes.addShaped(<ecoaeextension:efabricator_me_channel>, 
[[<ecoaeextension:efabricator_casing>,<appliedenergistics2:part:76>,<ecoaeextension:efabricator_casing>],
[<appliedenergistics2:part:76>,<mets:advanced_heat_vent>,<appliedenergistics2:part:76>],
[<ecoaeextension:efabricator_casing>,<appliedenergistics2:part:76>,<ecoaeextension:efabricator_casing>]]);

recipes.addShaped(<ecoaeextension:efabricator_pattern_bus>, 
[[<ecoaeextension:efabricator_casing>,<appliedenergistics2:material:58>,<ecoaeextension:efabricator_casing>],
[<appliedenergistics2:material:58>,<appliedenergistics2:interface>,<appliedenergistics2:material:58>],
[<ecoaeextension:efabricator_casing>,<appliedenergistics2:material:58>,<ecoaeextension:efabricator_casing>]]);

recipes.addShaped(<ecoaeextension:efabricator_pattern_bus>, 
[[<ore:circuitAdvanced>,<ecoaeextension:efabricator_casing>,<ore:circuitAdvanced>],
[<ecoaeextension:efabricator_casing>,<mets:advanced_heat_vent>,<ecoaeextension:efabricator_casing>],
[<ore:circuitAdvanced>,<ecoaeextension:efabricator_casing>,<ore:circuitAdvanced>]]);

recipes.addShaped(<ecoaeextension:efabricator_vent>, 
[[<ore:circuitAdvanced>,<ecoaeextension:estorage_casing>,<ore:circuitAdvanced>],
[<ecoaeextension:estorage_casing>,<mets:advanced_heat_vent>,<ecoaeextension:estorage_casing>],
[<ore:circuitAdvanced>,<ecoaeextension:estorage_casing>,<ore:circuitAdvanced>]]);

recipes.addShaped(<ecoaeextension:estorage_cell_drive>, 
[[<ore:pearlFluix>,<ecoaeextension:estorage_casing>,<ore:pearlFluix>],
[<ecoaeextension:estorage_casing>,<ore:circuitAdvanced>,<ecoaeextension:estorage_casing>],
[<ore:pearlFluix>,<ecoaeextension:estorage_casing>,<ore:pearlFluix>]]);

recipes.addShaped(<ecoaeextension:estorage_me_channel>, 
[[<ecoaeextension:estorage_casing>,<appliedenergistics2:part:76>,<ecoaeextension:estorage_casing>],
[<appliedenergistics2:part:76>,<appliedenergistics2:energy_acceptor>,<appliedenergistics2:part:76>],
[<ecoaeextension:estorage_casing>,<appliedenergistics2:part:76>,<ecoaeextension:estorage_casing>]]);

recipes.addShaped(<ecoaeextension:ecalculator_transmitter_bus>, 
[[<ecoaeextension:ecalculator_casing>,<ore:pearlFluix>,<ecoaeextension:ecalculator_casing>],
[<appliedenergistics2:energy_acceptor>,<mets:advanced_heat_vent>,<appliedenergistics2:interface>],
[<ecoaeextension:ecalculator_casing>,<ore:pearlFluix>,<ecoaeextension:ecalculator_casing>]]);

recipes.addShaped(<ecoaeextension:ecalculator_cell_drive>, 
[[<ecoaeextension:ecalculator_casing>,<appliedenergistics2:part:76>,<ecoaeextension:ecalculator_casing>],
[<ore:pearlFluix>,<mets:advanced_heat_vent>,<ore:pearlFluix>],
[<ecoaeextension:ecalculator_casing>,<appliedenergistics2:part:76>,<ecoaeextension:ecalculator_casing>]]);

recipes.addShaped(<ecoaeextension:ecalculator_me_channel>, 
[[<ecoaeextension:ecalculator_casing>,<ore:pearlFluix>,<ecoaeextension:ecalculator_casing>],
[<appliedenergistics2:part:76>,<mets:advanced_heat_vent>,<appliedenergistics2:part:76>],
[<ecoaeextension:ecalculator_casing>,<ore:pearlFluix>,<ecoaeextension:ecalculator_casing>]]);

RecipeBuilder.newBuilder("assemblyplant_eco_i_16m","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<appliedenergistics2:material:38>*4,
		<appliedenergistics2:material:47>*1,
		<ore:ingotMeteoricIron>*4,
		<ore:pearlFluix>*4
	])
	.addItemOutput(<ecoaeextension:estorage_cell_item_16m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eco_l_16m","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<appliedenergistics2:material:57>*4,
		<appliedenergistics2:material:47>*1,
		<ore:ingotMeteoricIron>*4,
		<ore:pearlFluix>*4
	])
	.addItemOutput(<ecoaeextension:estorage_cell_fluid_16m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eco_g_16m","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<mekeng:gas_core_64k>*4,
		<appliedenergistics2:material:47>*1,
		<ore:ingotMeteoricIron>*4,
		<ore:pearlFluix>*4
	])
	.addItemOutput(<ecoaeextension:estorage_cell_gas_16m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eco_i_64m","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<extendedcrafting:singularity:3>*1,
		<ic2:crafting:4>*4,
		<ore:ingotTrichromadentium>*4,
		<ecoaeextension:estorage_cell_item_16m>*4

	])
	.addItemOutput(<ecoaeextension:estorage_cell_item_64m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eco_l_64m","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<extendedcrafting:singularity:3>*1,
		<ic2:crafting:4>*4,
		<ore:ingotTrichromadentium>*4,
		<ecoaeextension:estorage_cell_fluid_16m>*4
	])
	.addItemOutput(<ecoaeextension:estorage_cell_fluid_64m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eco_g_64m","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<extendedcrafting:singularity:3>*1,
		<ic2:crafting:4>*4,
		<ore:ingotTrichromadentium>*4,
		<ecoaeextension:estorage_cell_gas_16m>*4
	])
	.addItemOutput(<ecoaeextension:estorage_cell_gas_64m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eco_i_256m","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<ore:gemBlueDiamond>*16,
		<mekanism:cosmicalloy>*4,
		<draconicevolution:chaotic_core>*1,
		<ecoaeextension:estorage_cell_item_64m>*4,
		<ore:ingotUltimate>*1
	])
	.addItemOutput(<ecoaeextension:estorage_cell_item_256m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eco_l_256m","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<ore:gemGreenDiamond>*16,
		<mekanism:cosmicalloy>*4,
		<draconicevolution:chaotic_core>*1,
		<ecoaeextension:estorage_cell_fluid_64m>*4,
		<ore:ingotUltimate>*1
	])
	.addItemOutput(<ecoaeextension:estorage_cell_fluid_256m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_eco_g_256m","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<ore:gemYellowDiamond>*16,
		<mekanism:cosmicalloy>*4,
		<draconicevolution:chaotic_core>*1,
		<ecoaeextension:estorage_cell_gas_64m>*4
	])
	.addItemOutput(<ecoaeextension:estorage_cell_gas_256m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_cm4a","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<threng:big_assembler:4>*4,
		<appliedenergistics2:material:47>*1,
		<appliedenergistics2:smooth_sky_stone_block>*4,
		<ore:ingotEnergium>*4
	])
	.addItemOutput(<ecoaeextension:ecalculator_thread_core_l4>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_cm6a","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<extendedcrafting:material:10>*4,
		<ecoaeextension:ecalculator_thread_core_l4>*1,
		<mets:super_iridium_compress_plate>*2
	])
	.addItemOutput(<ecoaeextension:ecalculator_thread_core_l6>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_cm9a","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<ecoaeextension:ecalculator_thread_core_l6>*4,
		<extendedcrafting:singularity:2>*1,
		<ore:ingotUltimate>*1,
		<draconicevolution:chaotic_core>*1
	])
	.addItemOutput(<ecoaeextension:ecalculator_thread_core_l9>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_cm4b","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<threng:big_assembler:4>*4,
		<appliedenergistics2:material:48>*1,
		<appliedenergistics2:smooth_sky_stone_block>*4,
		<ore:ingotEnergium>*1
	])
	.addItemOutput(<ecoaeextension:ecalculator_thread_core_hyper_l4>*1)
	.build();
	
RecipeBuilder.newBuilder("assemblyplant_cm6b","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<extendedcrafting:material:10>*4,
		<ecoaeextension:ecalculator_thread_core_hyper_l4>*1,
		<mets:super_iridium_compress_plate>*2
	])
	.addItemOutput(<ecoaeextension:ecalculator_thread_core_hyper_l6>*1)
	.build();
	
RecipeBuilder.newBuilder("assemblyplant_cm9b","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<ecoaeextension:ecalculator_thread_core_hyper_l6>*4,
		<extendedcrafting:singularity:2>*1,
		<ore:ingotUltimate>*1,
		<draconicevolution:chaotic_core>*1
	])
	.addItemOutput(<ecoaeextension:ecalculator_thread_core_hyper_l9>*1)
	.build();
	
RecipeBuilder.newBuilder("assemblyplant_ft4","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<appliedenergistics2:crafting_accelerator>*4,
		<threng:material:6>*1,
		<appliedenergistics2:material:47>*1
	])
	.addItemOutput(<ecoaeextension:efabricator_parallel_proc_l4>*1)
	.build();
	
RecipeBuilder.newBuilder("assemblyplant_ft6","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<ecoaeextension:efabricator_parallel_proc_l4>*4,
		<extendedcrafting:material:10>*2,
		<ore:ingotGravitonium>*2
	])
	.addItemOutput(<ecoaeextension:efabricator_parallel_proc_l6>*1)
	.build();

	
RecipeBuilder.newBuilder("assemblyplant_ft9","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<ecoaeextension:efabricator_parallel_proc_l6>*4,
		<ore:ingotUltimate>*1,
		<draconicevolution:chaotic_core>*1,
		<extendedcrafting:singularity:1>*1
	])
	.addItemOutput(<ecoaeextension:efabricator_parallel_proc_l9>*1)
	.build();
	
RecipeBuilder.newBuilder("assemblyplant_lt4e","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<appliedenergistics2:dense_energy_cell>*4,
		<appliedenergistics2:material:47>*1,
		<fluxnetworks:fluxblock>*4
	])
	.addItemOutput(<ecoaeextension:estorage_energy_cell_l4>*1)
	.build();
	
RecipeBuilder.newBuilder("assemblyplant_lt6e","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<ecoaeextension:estorage_energy_cell_l4>*4,
		<draconicevolution:wyvern_energy_core>*4,
		<ore:blockEnergium>*2
	])
	.addItemOutput(<ecoaeextension:estorage_energy_cell_l6>*1)
	.build();
	
RecipeBuilder.newBuilder("assemblyplant_lt9e","assemblyplant",1800)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<extendedcrafting:singularity:3>*4,
		<draconicevolution:draconic_energy_core>*4,
		<ore:ingotUltimate>*1,
		<ecoaeextension:estorage_energy_cell_l6>*4,
		<draconicevolution:chaotic_core>*1
	])
	.addItemOutput(<ecoaeextension:estorage_energy_cell_l9>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_f4c","assemblyplant",600)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<appliedenergistics2:crafting_storage_64k>*4,
        <appliedenergistics2:material:47>*1,
        <ic2:crafting:4>*4,
        <ore:pearlFluix>*4
	])
	.addItemOutput(<ecoaeextension:ecalculator_cell_64m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_f6c","assemblyplant",600)
	.addEnergyPerTickInput(200000)
	.addItemInputs([
		<ecoaeextension:ecalculator_cell_64m>*4,
        <draconicevolution:wyvern_core>*4,
        <ore:circuitElite>*4,
        <ic2:glass>*16
	])
	.addItemOutput(<ecoaeextension:ecalculator_cell_1024m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_f9c","assemblyplant",600)
	.addEnergyPerTickInput(400000)
	.addItemInputs([
		<ecoaeextension:ecalculator_cell_1024m>*4,
        <ore:ingotUltimate>*1,
        <draconicevolution:awakened_core>*1,
        <ore:circuitUltimate>*4
	])
	.addItemOutput(<ecoaeextension:ecalculator_cell_16384m>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_c4l","assemblyplant",600)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<mets:advanced_oc_heat_vent>*2,
        <mets:advanced_heat_vent>*2,
        <ore:circuitAdvanced>*4,
        <ecoaeextension:ecalculator_casing>*6
	])
	.addItemOutput(<ecoaeextension:ecalculator_tail_l4>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_c6l","assemblyplant",600)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<mets:advanced_oc_heat_vent>*8,
        <mets:advanced_heat_vent>*8,
        <ore:circuitElite>*4,
        <ecoaeextension:ecalculator_casing>*6
	])
	.addItemOutput(<ecoaeextension:ecalculator_tail_l6>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_c9l","assemblyplant",600)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<mets:advanced_oc_heat_vent>*32,
        <mets:advanced_heat_vent>*32,
        <ore:circuitUltimate>*4,
        <ecoaeextension:ecalculator_casing>*6
	])
	.addItemOutput(<ecoaeextension:ecalculator_tail_l9>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_ct4","assemblyplant",600)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<appliedenergistics2:crafting_accelerator>*16,
        <ore:circuitAdvanced>*4,
        <draconicevolution:draconic_core>*4,
        <mekanism:teleportationcore>*1
	])
	.addItemOutput(<ecoaeextension:ecalculator_parallel_proc_l4>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_ct6","assemblyplant",600)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
        <ecoaeextension:ecalculator_parallel_proc_l4>*4,
		<draconicevolution:wyvern_core>*4,
        <ore:circuitElite>*4,
        <appliedenergistics2:material:48>*2
	])
	.addItemOutput(<ecoaeextension:ecalculator_parallel_proc_l6>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_ct9","assemblyplant",600)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<ecoaeextension:ecalculator_parallel_proc_l6>*4,
        <draconicevolution:awakened_core>*4,
        <ore:circuitUltimate>*4,
        <ore:ingotUltimate>*1
	])
	.addItemOutput(<ecoaeextension:ecalculator_parallel_proc_l9>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_L4","assemblyplant",2400)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<appliedenergistics2:material:38>*4,
        <appliedenergistics2:material:47>*4,
	])
	.addItemOutput(<ecoaeextension:extendable_digital_storage_subsystem_l4>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_L6","assemblyplant",2400)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<threng:material:14>*4,
        <ore:circuitUltimate>*4,
        <draconicevolution:awakened_core>*2,
        <threng:material:6>*2
	])
	.addItemOutput(<ecoaeextension:extendable_digital_storage_subsystem_l6>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_L9","assemblyplant",2400)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<extendedcrafting:material:13>*4,
        <draconicevolution:chaotic_core>*4,
        <mets:field_generator>*4,
        <draconicevolution:draconium_chest>*4
	])
	.addItemOutput(<ecoaeextension:extendable_digital_storage_subsystem_l9>*1)
	.build();
    
RecipeBuilder.newBuilder("assemblyplant_C4","assemblyplant",2400)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<threng:big_assembler:4>*4,
        <appliedenergistics2:material:47>*4,
	])
	.addItemOutput(<ecoaeextension:extendable_calculator_subsystem_l4>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_C6","assemblyplant",2400)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<threng:material:14>*4,
        <draconicevolution:awakened_core>*2,
        <threng:material:6>*2,
        <ore:circuitUltimate>*4
	])
	.addItemOutput(<ecoaeextension:extendable_calculator_subsystem_l6>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_C9","assemblyplant",2400)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<extendedcrafting:material:13>*4,
        <draconicevolution:chaotic_core>*4,
        <mets:field_generator>*4,
        <ic2:iridium_reflector>*4
	])
	.addItemOutput(<ecoaeextension:extendable_calculator_subsystem_l9>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_F4","assemblyplant",2400)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<appliedenergistics2:crafting_storage_64k>*4,
        <appliedenergistics2:material:47>*4,
        <draconicevolution:awakened_core>*2
	])
	.addItemOutput(<ecoaeextension:extendable_fabricator_subsystem_l4>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_F6","assemblyplant",2400)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<threng:material:14>*4,
        <draconicevolution:awakened_core>*2,
        <threng:material:6>*2,
        <ore:circuitUltimate>*4
	])
	.addItemOutput(<ecoaeextension:extendable_fabricator_subsystem_l6>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_F9","assemblyplant",2400)
	.addEnergyPerTickInput(10000)
	.addItemInputs([
		<extendedcrafting:material:13>*4,
        <draconicevolution:chaotic_core>*4,
        <mets:field_generator>*4,
        <threng:big_assembler:2>*4
	])
	.addItemOutput(<ecoaeextension:extendable_fabricator_subsystem_l9>*1)
	.build();
