import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

RecipeBuilder.newBuilder("createmanipulator_wxcc","createmanipulator",480)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<ore:netherStar>*4,
		<mekanism:cosmicalloy>*4,
		<storagedrawers:upgrade_storage:4>*4
	])
	.addItemOutput(<storagedrawers:upgrade_creative>*4)
	.build();

RecipeBuilder.newBuilder("createmanipulator_czls","createmanipulator",7200)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<iceandfire:dragon_meal>*16,
		<iceandfire:sickly_dragon_meal>*16,
		<draconicevolution:dragon_heart>*1,
		<mekanism:cosmicalloy>*4
	])
	.addItemOutput(<iceandfire:creative_dragon_meal>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_czmlsb","createmanipulator",7200)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<extrabotany:blockorichalcos>*4,
		<mekanism:controlcircuit:4>*4,
		<ore:blockVoid>*4,
		<draconicevolution:chaotic_core>*1,
		<botania:manatablet>.withTag({mana: 500000, creative: 1 as byte})*1
	])
	.addItemOutput(<botania:pool:1>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_cztoul","createmanipulator",480)
	.addEnergyPerTickInput(100000)
	.addItemInputs([
		<mekanism:cosmicalloy>*4,
		<minecraft:skull:3>*1,
		<tconevo:material>*4
	])
	.addItemOutput(<tconstruct:materials:50>*4)
	.build();

RecipeBuilder.newBuilder("createmanipulator_wxyqg","createmanipulator",7200)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<extraplanets:oxygen_tank_extremely_heavy_full>*4,
		<mekanism:controlcircuit:4>*2,
		<ore:ingotUltimate>*1
	])
	.addItemOutput(<galacticraftcore:infinite_oxygen>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_czyj","createmanipulator",7200)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<ore:ingotUltimate>*16,
		<mekanism:controlcircuit:4>*8,
		<ecoaeextension:estorage_cell_item_256m>*4
	])
	.addItemOutput(<appliedenergistics2:creative_storage_cell>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_czcq","createmanipulator",7200)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<storagedrawers:upgrade_creative>*4,
		<ore:ingotUltimate>*16,
		<mekanism:controlcircuit:4>*8
	])
	.addItemOutput(<storagedrawers:upgrade_creative:1>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_xjhd","createmanipulator",1200)
	.addEnergyPerTickInput(2000)
	.addItemInputs([
		<mekanism:cosmicmatter>*256,
		<draconicevolution:reactor_component>*4,
		<mekanism:controlcircuit:4>*4,
		<moremekasuitmodules:module_hp_boots_unit>*4,
		<mekanism:module_health_regeneration_unit>*4,
		<moremekasuitmodules:module_emergency_rescue_unit>*4
	])
	.addItemOutput(<moremekasuitmodules:module_advanced_interception_system_unit>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_sjzx","createmanipulator",600)
	.addEnergyPerTickInput(400000)
	.addItemInputs([
		<mekanism:controlcircuit:4>*4,
		<extendedcrafting:material:13>*4,
		<draconicevolution:chaotic_core>*2,
		<modularmachinery:blockupgradebus:3>*1
	])
	.addItemOutput(<modularmachinery:blockupgradebus:4>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_bxzx","createmanipulator",600)
	.addEnergyPerTickInput(400000)
	.addItemInputs([
		<mekanism:controlcircuit:4>*4,
		<extendedcrafting:material:13>*4,
		<draconicevolution:chaotic_core>*2,
		<modularmachinery:blockparallelcontroller:3>*1
	])
	.addItemOutput(<modularmachinery:blockparallelcontroller:4>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_czyz","createmanipulator",1200)
	.addEnergyPerTickInput(4000000)
	.addItemInputs([	
		<mekanism:controlcircuit:4>*8,
		<thaumcraft:smelter_void>*8,
		<thaumicenergistics:essentia_component_64k>*4,
		<thaumcraft:metal_alchemical_advanced>*8,
		<thaumcraft:primordial_pearl>*4,
		<thermalfoundation:geode>*2048
	])
	.addItemOutput(<thaumicenergistics:essentia_cell_creative>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_wjchj","createmanipulator",200)
	.addEnergyPerTickInput(1600000)
	.addItemInputs([
		<avaritia:singularity>*1,
		<avaritia:singularity:1>*1,
		<avaritia:singularity:2>*1,
		<avaritia:singularity:3>*1,
		<avaritia:singularity:4>*1,
		<avaritia:singularity:5>*1,
		<avaritia:singularity:6>*1,
		<avaritia:singularity:7>*1,
		<avaritia:singularity:8>*1,
		<avaritia:singularity:9>*1,
		<avaritia:singularity:10>*1,
		<avaritia:singularity:11>*1,
		<avaritia:endest_pearl>*1,
		<avaritia:cosmic_meatballs>*1,
		<avaritia:ultimate_stew>*1,
		<avaritia:resource:2>*1,
		<avaritia:resource:3>*1,
		<avaritia:resource:4>*1,
		<avaritia:resource:1>*1,
		<avaritia:resource>*1,
		<avaritia:resource:7>*1,
		<extendedcrafting:material:32>*1,
		<mekanism:cosmicmatter>*1,
		<mekanism:cosmicalloy>*1,
		<draconicevolution:chaos_shard>*1,
		<twilightforest:block_storage:4>*1,
		<moretcon:spacetimedisruptionpowder>*1,
		<appliedenergistics2:material:38>*1
	])
	.addItemOutput(<avaritia:resource:5>*4)
	.build();

RecipeBuilder.newBuilder("createmanipulator_wxnldy","createmanipulator",1200)
	.addEnergyPerTickInput(8000000)
	.addItemInputs([
		<mekanism:modulebase>*1,	
		<mekanism:controlcircuit:4>*8,
		<mekanism:module_energy_unit>*64,
		<mekanism:tierinstaller:4>*1,
		<draconicevolution:energy_storage_core>*8,
		<contenttweaker:plate_chaos_metal>*16,
		<enderio:item_capacitor_stellar>*4
		
	])
	.addItemOutput(<moremekasuitmodules:module_infinite_energy_supply_unit>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_czghdy","createmanipulator",1200)
	.addEnergyPerTickInput(8000000)
	.addItemInputs([	
		<mekanism:modulebase>*1,
		<mekanism:controlcircuit:4>*8,
		<botania:pool:1>*1,
		<extrabotany:blockorichalcos>*64,
		<contenttweaker:plate_degenerate_neutron_matrix>*16
		
	])
	.addItemOutput(<moremekasuitmodules:module_creative_band_of_aura_unit>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_czqtdy","createmanipulator",1200)
	.addEnergyPerTickInput(8000000)
	.addItemInputs([	
		<mekanism:modulebase>*1,
		<mekanism:controlcircuit:4>*8,
		<mekanism:tierinstaller:4>*1,
		<ecoaeextension:estorage_cell_gas_256m>*1
		
	])
	.addItemOutput(<moremekasuitmodules:module_infinite_gas_supply_unit>*1)
	.build();