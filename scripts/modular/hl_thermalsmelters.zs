import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

RecipeBuilder.newBuilder("impetusminecraftslime_geode_a","impetusminecraftslime",400)
	.addEnergyPerTickInput(40000)
	.addImpetusInput(10)
	.addItemOutput(<thermalfoundation:geode>*1)
	.build();

RecipeBuilder.newBuilder("impetusminecraftslime_geode_b","impetusminecraftslime",400)
	.addEnergyPerTickInput(40000)
	.addItemInput(<astralsorcery:itemrockcrystalsimple>*1).setChance(0.01)
	.addItemOutput(<thermalfoundation:geode>*1)
	.build();

RecipeBuilder.newBuilder("impetusminecraftslime_a","impetusminecraftslime",400)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<thaumcraft:salis_mundus>*16,
		<thaumcraft:quicksilver>*8,
		<ore:dirt>*4,
		<thermalfoundation:geode>*1
	])
	.addItemOutput(<thaumcraft:curio>*1).setChance(0.05)
    .addItemOutput(<thaumcraft:curio:1>*1).setChance(0.05)
    .addItemOutput(<thaumcraft:curio:2>*1).setChance(0.05)
    .addItemOutput(<thaumcraft:loot_bag>*1).setChance(0.1)
    .addItemOutput(<thaumcraft:primordial_pearl>*1).setChance(0.001)
    .addItemOutput(<thaumcraft:pech_wand>*1).setChance(0.05)
	.build();
    
RecipeBuilder.newBuilder("impetusminecraftslime_b","impetusminecraftslime",400)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<thaumcraft:nugget:10>*1,
		<thaumcraft:quicksilver>*16,
		<ore:dirt>*4,
		<thermalfoundation:geode>*2,
	])
	.addItemOutput(<thaumcraft:void_seed>*8).setMinMaxAmount(8,32)
    .addItemOutput(<thaumcraft:curio:6>*1).setChance(0.05)
    .addItemOutput(<thaumcraft:curio:5>*1).setChance(0.1)
    .addItemOutput(<thaumcraft:curio:4>*1).setChance(0.05)
    .addItemOutput(<thaumcraft:loot_bag:2>*1).setChance(0.1)
    .addItemOutput(<thaumcraft:primordial_pearl>*1).setChance(0.001)
	.build();

RecipeBuilder.newBuilder("impetusminecraftslime_c","impetusminecraftslime",1)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<ore:dustRedstone>*1,
		<thermalfoundation:geode>*1
	])
	.addItemOutput(<thaumcraft:salis_mundus>*1)
	.build();

RecipeBuilder.newBuilder("impetusminecraftslime_d","impetusminecraftslime",400)
	.addEnergyPerTickInput(40000)
	.addItemInputs([
		<minecraft:apple>*1,
		<minecraft:rotten_flesh>*1,
		<thermalfoundation:geode>*5,
	])
	.addItemOutput(<avaritia:ultimate_stew>*1).setChance(0.1)
	.addItemOutput(<avaritia:cosmic_meatballs>*1).setChance(0.1)
	.build();