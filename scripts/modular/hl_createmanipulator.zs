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
		<mekanism:moduleupgrade:24>*4,
		<mekanism:moduleupgrade:23>*4,
		<mekanism:moduleupgrade:22>*4
	])
	.addItemOutput(<mekanism:moduleupgrade:25>*1)
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

RecipeBuilder.newBuilder("assemblyplant_mekax","assemblyplant",1200)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<draconicevolution:chaotic_core>*1,
		<mekanism:controlcircuit:3>*2,
		<mekanism:cosmicalloy>*4,
		<ore:PoloniumPellet>*4,
		<draconicevolution:draconic_boots>*1
	])
	.addItemOutput(<mekanism:mekasuitboots>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mekak","assemblyplant",1200)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<draconicevolution:chaotic_core>*1,
		<mekanism:controlcircuit:3>*2,
		<mekanism:cosmicalloy>*4,
		<ore:PoloniumPellet>*4,
		<draconicevolution:draconic_legs>*1
	])
	.addItemOutput(<mekanism:mekasuitleggings>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mekax","assemblyplant",1200)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<draconicevolution:chaotic_core>*1,
		<mekanism:controlcircuit:3>*2,
		<mekanism:cosmicalloy>*4,
		<ore:PoloniumPellet>*4,
		<draconicevolution:draconic_chest>*1
	])
	.addItemOutput(<mekanism:mekasuitchestplate>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mekat","assemblyplant",1200)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<draconicevolution:chaotic_core>*1,
		<mekanism:controlcircuit:3>*2,
		<mekanism:cosmicalloy>*4,
		<ore:PoloniumPellet>*4,
		<draconicevolution:draconic_helm>*1
	])
	.addItemOutput(<mekanism:mekasuithelmet>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mekag","assemblyplant",1200)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<draconicevolution:chaotic_core>*1,
		<mekanism:controlcircuit:3>*2,
		<mekanism:cosmicalloy>*4,
		<ore:PoloniumPellet>*4,
		<draconicevolution:draconic_bow>*1
	])
	.addItemOutput(<mekaweapons:bow_riser>*1)
	.build();

RecipeBuilder.newBuilder("assemblyplant_mekaj","assemblyplant",1200)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<draconicevolution:chaotic_core>*1,
		<mekanism:controlcircuit:3>*2,
		<mekanism:cosmicalloy>*4,
		<ore:PoloniumPellet>*4,
		<draconicevolution:draconic_sword>*1
	])
	.addItemOutput(<mekaweapons:katana_blade>*1)
	.build();