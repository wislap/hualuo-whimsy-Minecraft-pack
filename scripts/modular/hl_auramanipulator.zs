import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;


RecipeBuilder.newBuilder("auramanipulator_1","auramanipulator",200)
	.addItemInputs([
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]})*2,
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]})*1,
        <emt:materials_uumatterdrop>*3,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<ic2:misc_resource:4>*21)
	.build();

RecipeBuilder.newBuilder("auramanipulator_2","auramanipulator",200)
    .addItemInputs([
        <ore:ingotIron>*1,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<thaumcraft:ingot>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_3","auramanipulator",200)
    .addItemInputs([
        <thaumcraft:void_seed>*1,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<thaumcraft:ingot:1>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_4","auramanipulator",200)
    .addItemInputs([
        <thaumcraft:ingot>*1,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<thaumicbases:thauminite_ingot>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_5","auramanipulator",200)
    .addItemInputs([
        <ore:ingotIron>*1,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<thaumcraft:ingot:2>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_6","auramanipulator",200)
	.addItemInputs([
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})*2,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<thaumcraft:focus_1>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_7","auramanipulator",200)
	.addItemInputs([
        <ore:enderpearl>*1,
        <ore:quicksilver>*2,
        <ore:gemDiamond>*1,
        <thaumcraft:focus_1>*1,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<thaumcraft:focus_2>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_8","auramanipulator",200)
	.addItemInputs([<ore:netherStar>*1,
        <ore:quicksilver>*2,
        <thaumcraft:primordial_pearl>*1,
        <thaumcraft:focus_2>*1,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<thaumcraft:focus_3>*1)
    .addOutput(<thaumcraft:primordial_pearl>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_9","auramanipulator",200)
	.addItemInputs([<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]})*1,
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]})*1,
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]})*1,
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]})*1,
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]})*1,
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]})*1,
        <thaumcraft:salis_mundus>*2,
        <thaumicenergistics:diffusion_core>*1,
        <thaumicenergistics:coalescence_core>*1,
	    <thermalfoundation:geode>*10
    ])
	.addOutput(<thaumicenergistics:arcane_assembler>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_10","auramanipulator",200)
	.addItemInputs([
        <appliedenergistics2:interface>*1,
        <thaumcraft:salis_mundus>*2,
        <thaumicenergistics:coalescence_core>*3,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<thaumicenergistics:infusion_provider>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_11","auramanipulator",200)
	.addItemInputs([
        <thaumcraft:primordial_pearl>*1,
        <thaumcraft:salis_mundus>*8,
        <tconevo:material>*8,
	    <thermalfoundation:geode>*20
    ])
	.addOutput(<tconevo:metal:20>*8)
	.build();

RecipeBuilder.newBuilder("auramanipulator_12","auramanipulator",200)
	.addItemInputs([
        <ore:plateVoid>*4,
        <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "alienis"}]})*1,
        <ore:dustRedstone>*1,
        <thaumcraft:primordial_pearl>*1,
        <ore:gemAmber>*1,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<thaumicaugmentation:material:3>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_13","auramanipulator",200)
	.addItemInputs([<thaumcraft:morphic_resonator>*1,
        <thaumcraft:vis_resonator>*1,
        <ore:blockRedstone>*2,
        <ore:nitor>*2,
        <thaumcraft:alumentum>*2,
        <thermalfoundation:geode>*5
    ])
	.addOutput(<thaumcraft:causality_collapser>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_14","auramanipulator",200)
	.addItemInputs([
        <ore:coal>*1,
        <thermalfoundation:geode>*2
    ])
	.addOutput(<thaumcraft:nitor_yellow>*1)
	.build();

RecipeBuilder.newBuilder("auramanipulator_15","auramanipulator",200)
	.addItemInputs([
        <ore:dustGlowstone>*1,
        <thermalfoundation:geode>*2
    ])
	.addOutput(<thaumcraft:alumentum>*1)
	.build();