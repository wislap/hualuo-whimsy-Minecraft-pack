import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

RecipeBuilder.newBuilder("auramanipulator_1","auramanipulator",200)
	.addInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]})*2)
    .addInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]})*1)
    .addInput(<emt:materials_uumatterdrop>*3)
	.addImpetusInput(50)
	.addOutput(<ic2:misc_resource:4>*21)
	.build();

RecipeBuilder.newBuilder("auramanipulator_2","auramanipulator",200)
    .addInput(<ore:ingotIron>*1)
	.addImpetusInput(50)
	.addOutput(<thaumcraft:ingot>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_3","auramanipulator",200)
    .addInput(<thaumcraft:void_seed>*1)
	.addImpetusInput(50)
	.addOutput(<thaumcraft:ingot:1>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_4","auramanipulator",200)
    .addInput(<thaumcraft:ingot>*1)
	.addImpetusInput(50)
	.addOutput(<thaumicbases:thauminite_ingot>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_5","auramanipulator",200)
    .addInput(<ore:ingotIron>*1)
    .addImpetusInput(50)
	.addOutput(<thaumcraft:ingot:2>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_6","auramanipulator",200)
	.addInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})*2)
	.addImpetusInput(50)
	.addOutput(<thaumcraft:focus_1>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_7","auramanipulator",200)
	.addInput(<ore:enderpearl>*1)
    .addInput(<ore:quicksilver>*2)
    .addInput(<ore:gemDiamond>*1)
    .addInput(<thaumcraft:focus_1>*1)
    .addImpetusInput(50)
	.addOutput(<thaumcraft:focus_2>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_8","auramanipulator",200)
	.addInput(<ore:netherStar>*1)
    .addInput(<ore:quicksilver>*2)
    .addInput(<thaumcraft:primordial_pearl>*1)
    .addInput(<thaumcraft:focus_2>*1)
    .addImpetusInput(50)
	.addOutput(<thaumcraft:focus_3>*1)
    .addOutput(<thaumcraft:primordial_pearl>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_9","auramanipulator",200)
	.addInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]})*1)
    .addInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]})*1)
    	.addInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})*1)
    .addInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]})*1)
    	.addInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]})*1)
    .addInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]})*1)
    .addInput(<thaumcraft:salis_mundus>*2)
    .addInput(<thaumicenergistics:diffusion_core>*1)
    .addInput(<thaumicenergistics:coalescence_core>*1)
	.addImpetusInput(100)
	.addOutput(<thaumicenergistics:arcane_assembler>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_10","auramanipulator",200)
	.addInput(<appliedenergistics2:interface>*1)
    .addInput(<thaumcraft:salis_mundus>*2)
    .addInput(<thaumicenergistics:coalescence_core>*3)
	.addImpetusInput(50)
	.addOutput(<thaumicenergistics:infusion_provider>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_11","auramanipulator",200)
	.addInput(<thaumcraft:primordial_pearl>*1)
    .addInput(<thaumcraft:salis_mundus>*8)
    .addInput(<tconevo:material>*8)
	.addImpetusInput(200)
	.addOutput(<tconevo:metal:20>*8)
	.build();

RecipeBuilder.newBuilder("auramanipulator_12","auramanipulator",200)
	.addInput(<ore:plateVoid>*4)
    .addInput(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]})*1)
    .addInput(<ore:dustRedstone>*1)
    .addInput(<thaumcraft:primordial_pearl>*1)
    .addInput(<ore:gemAmber>*1)
	.addImpetusInput(50)
	.addOutput(<thaumicaugmentation:material:3>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_13","auramanipulator",200)
	.addInput(<thaumcraft:morphic_resonator>*1)
    .addInput(<thaumcraft:vis_resonator>*1)
    .addInput(<ore:blockRedstone>*2)
    .addInput(<ore:nitor>*2)
    .addInput(<thaumcraft:alumentum>*2)
	.addImpetusInput(50)
	.addOutput(<thaumcraft:causality_collapser>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_14","auramanipulator",200)
	.addInput(<ore:coal>*1)
	.addImpetusInput(20)
	.addOutput(<thaumcraft:nitor_yellow>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_15","auramanipulator",200)
	.addInput(<ore:dustGlowstone>*1)
	.addImpetusInput(20)
	.addOutput(<thaumcraft:alumentum>*1)
	.build();