import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import moretweaker.draconicevolution.FusionCrafting;
import mods.modularmachinery.RecipeAdapterBuilder;


recipes.remove(<draconicevolution:wyvern_core>);
recipes.remove(<draconicevolution:draconic_core>);
recipes.remove(<draconicevolution:awakened_core>);
recipes.remove(<mekanism:basicblock:8>);
recipes.remove(<ic2:resource:12>);
recipes.remove(<draconicevolution:chaotic_core>);
recipes.remove(<draconicevolution:draconic_core>);


FusionCrafting.remove(<draconicevolution:chaos_shard>);
FusionCrafting.remove(<minecraft:nether_star>);

recipes.addShaped(<ic2:resource:12>, 
[[<ore:plateIron>,<ore:ingotFiery>,<ore:plateIron>],
[<ore:carminite>,<twilightforest:alpha_fur>,<ore:carminite>],
[<ore:plateIron>,<ore:ingotFiery>,<ore:plateIron>]]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockinputbus>*1, [
	[null, <minecraft:hopper>, null], 
	[<ore:chest>, <modularmachinery:blockcasing>, <ore:chest>], 
	[null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockoutputbus>*1, [
	[null, null, null], 
	[<ore:chest>, <modularmachinery:blockcasing>, <ore:chest>], 
	[null, <minecraft:hopper>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockfluidinputhatch>*1, [
	[null, <minecraft:bucket>, null], 
	[<ore:gemLapis>, <modularmachinery:blockcasing>, <ore:gemLapis>], 
	[null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockfluidoutputhatch>*1, [
	[null, null, null], 
	[<ore:gemLapis>, <modularmachinery:blockcasing>, <ore:gemLapis>], 
	[null, <minecraft:bucket>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockenergyinputhatch>*1, [
	[null, <ore:battery>, null], 
	[<ore:alloyBasic>, <modularmachinery:blockcasing>, <ore:alloyBasic>], 
	[null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockenergyoutputhatch>*1, [
	[null, null, null], 
	[<ore:alloyBasic>, <modularmachinery:blockcasing>, <ore:alloyBasic>], 
	[null, <ore:battery>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockinputbus:1>*2, [
	[null, <minecraft:hopper>, null], 
	[<modularmachinery:blockinputbus>, <modularmachinery:blockcasing>, <modularmachinery:blockinputbus>], 
	[null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockoutputbus:1>*2, [
	[null, null, null], 
	[<modularmachinery:blockoutputbus>, <modularmachinery:blockcasing>, <modularmachinery:blockoutputbus>], 
	[null, <minecraft:hopper>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockfluidinputhatch:1>*2, [
	[null, <minecraft:bucket>, null], 
	[<modularmachinery:blockfluidinputhatch>, <modularmachinery:blockcasing>, <modularmachinery:blockfluidinputhatch>], 
	[null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockfluidoutputhatch:1>*2, [
	[null, null, null], 
	[<modularmachinery:blockfluidoutputhatch>, <modularmachinery:blockcasing>, <modularmachinery:blockfluidoutputhatch>], 
	[null, <minecraft:bucket>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockenergyinputhatch:1>*2, [
	[null, <ore:battery>, null], 
	[<modularmachinery:blockenergyinputhatch>, <modularmachinery:blockcasing>, <modularmachinery:blockenergyinputhatch>], 
	[null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockenergyoutputhatch:1>*2, [
	[null, null, null], 
	[<modularmachinery:blockenergyoutputhatch>, <modularmachinery:blockcasing>, <modularmachinery:blockenergyoutputhatch>], 
	[null, <ore:battery>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockinputbus:2>*2, [
	[null, <minecraft:hopper>, null], 
	[<modularmachinery:blockinputbus:1>, <modularmachinery:blockcasing>, <modularmachinery:blockinputbus:1>], 
	[null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockoutputbus:2>*2, [
	[null, <minecraft:hopper>, null], 
	[<modularmachinery:blockoutputbus:1>, <modularmachinery:blockcasing>, <modularmachinery:blockoutputbus:1>], 
	[null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockfluidinputhatch:2>*2, [
	[null, <mekanism:machineblock2:11>, null], 
	[<modularmachinery:blockfluidinputhatch:1>, <modularmachinery:blockcasing>, <modularmachinery:blockfluidinputhatch:1>], 
	[null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockfluidoutputhatch:2>*2, [
	[null, null, null], 
	[<modularmachinery:blockfluidoutputhatch:1>, <modularmachinery:blockcasing>, <modularmachinery:blockfluidoutputhatch:1>], 
	[null, <mekanism:machineblock2:11>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockenergyinputhatch:2>*2, [
	[null, <mekanism:energycube>, null], 
	[<modularmachinery:blockenergyinputhatch:1>, <modularmachinery:blockcasing>, <modularmachinery:blockenergyinputhatch:1>], 
	[null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockenergyoutputhatch:2>*2, [
	[null, null, null], 
	[<modularmachinery:blockenergyoutputhatch:1>, <modularmachinery:blockcasing>, <modularmachinery:blockenergyoutputhatch:1>], 
	[null, <mekanism:energycube>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockparallelcontroller>, [
	[<ore:gemEmerald>, <ore:ingotTerrasteel>, <ore:ingotSteeleaf>], 
	[<ore:circuitBasic>, <extendedcrafting:material:8>, <ore:circuitBasic>], 
	[<ore:ingotSteeleaf>, <ore:ingotTerrasteel>, <ore:gemEmerald>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockupgradebus>, [
	[<ore:ingotSteeleaf>, <ore:circuitBasic>, <ore:gemEmerald>], 
	[<ore:ingotTerrasteel>, <extendedcrafting:material:8>, <ore:ingotTerrasteel>], 
	[<ore:gemEmerald>, <ore:circuitBasic>, <ore:ingotSteeleaf>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:baseplant_factory_controller>, [
	[<ic2:crafting:5>, <ore:circuitAdvanced>, <ore:craftingToolWireCutter>], 
	[<modularmachinery:blockcasing>, <ore:machineBlockAdvanced>, <modularmachinery:blockcasing>], 
	[<ore:craftingToolForgeHammer>, <ore:circuitAdvanced>, <ic2:crafting:6>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockcasing:1>*4, [
	[null, <modularmachinery:blockcasing>, null], 
	[<modularmachinery:blockcasing>, <chisel:ironpane:7>, <modularmachinery:blockcasing>], 
	[null, <modularmachinery:blockcasing>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockparallelcontroller:1>, [
	[<extendedcrafting:material:9>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <extendedcrafting:material:9>], 
	[<ore:ingotLumium>, <ore:circuitAdvanced>, <ore:ingotFiery>, <ore:circuitAdvanced>, <ore:ingotLumium>], 
	[<ore:ingotLumium>, <ore:ingotFiery>, <modularmachinery:blockparallelcontroller>, <ore:ingotFiery>, <ore:ingotLumium>], 
	[<ore:ingotLumium>, <ore:circuitAdvanced>, <ore:ingotFiery>, <ore:circuitAdvanced>, <ore:ingotLumium>], 
	[<extendedcrafting:material:9>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <extendedcrafting:material:9>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockupgradebus:1>, [
	[<ore:ingotFiery>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotFiery>], 
	[<ore:ingotLumium>, <extendedcrafting:material:9>, <ore:circuitAdvanced>, <extendedcrafting:material:9>, <ore:ingotLumium>], 
	[<ore:ingotLumium>, <ore:circuitAdvanced>, <modularmachinery:blockupgradebus>, <ore:circuitAdvanced>, <ore:ingotLumium>], 
	[<ore:ingotLumium>, <extendedcrafting:material:9>, <ore:circuitAdvanced>, <extendedcrafting:material:9>, <ore:ingotLumium>], 
	[<ore:ingotFiery>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotFiery>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockupgradebus:2>, [
	[<moreplanets:zyptorium_ingot>, <ore:circuitElite>, <moreplanets:zyptorium_ingot>, <ore:circuitElite>, <moreplanets:zyptorium_ingot>, <ore:circuitElite>, <moreplanets:zyptorium_ingot>], 
	[<ore:circuitElite>, <mets:neutron_plate>, <ore:dustCryotheum>, <ore:ingotFusionite>, <ore:dustCryotheum>, <mets:neutron_plate>, <ore:circuitElite>], 
	[<moreplanets:zyptorium_ingot>, <ore:dustCryotheum>, <extendedcrafting:material:10>, <extraplanets:wafer>, <extendedcrafting:material:10>, <ore:dustCryotheum>, <moreplanets:zyptorium_ingot>], 
	[<ore:circuitElite>, <ore:ingotFusionite>, <ore:waferModern>, <modularmachinery:blockupgradebus:1>, <extraplanets:wafer:2>, <ore:ingotFusionite>, <ore:circuitElite>], 
	[<moreplanets:zyptorium_ingot>, <ore:dustCryotheum>, <extendedcrafting:material:10>, <extraplanets:wafer>, <extendedcrafting:material:10>, <ore:dustCryotheum>, <moreplanets:zyptorium_ingot>], 
	[<ore:circuitElite>, <mets:neutron_plate>, <ore:dustCryotheum>, <ore:ingotFusionite>, <ore:dustCryotheum>, <mets:neutron_plate>, <ore:circuitElite>], 
	[<moreplanets:zyptorium_ingot>, <ore:circuitElite>, <moreplanets:zyptorium_ingot>, <ore:circuitElite>, <moreplanets:zyptorium_ingot>, <ore:circuitElite>, <moreplanets:zyptorium_ingot>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockparallelcontroller:2>, [
	[<ore:circuitElite>, <ore:dustCryotheum>, <moreplanets:zyptorium_ingot>, <moreplanets:zyptorium_ingot>, <moreplanets:zyptorium_ingot>, <ore:dustCryotheum>, <ore:circuitElite>], 
	[<ore:dustCryotheum>, <mets:neutron_plate>, <ore:circuitElite>, <extendedcrafting:material:10>, <ore:circuitElite>, <mets:neutron_plate>, <ore:dustCryotheum>], 
	[<moreplanets:zyptorium_ingot>, <ore:circuitElite>, <ore:ingotFusionite>, <extraplanets:wafer:2>, <ore:ingotFusionite>, <ore:circuitElite>, <moreplanets:zyptorium_ingot>], 
	[<moreplanets:zyptorium_ingot>, <extendedcrafting:material:10>, <extraplanets:wafer>, <modularmachinery:blockparallelcontroller:1>, <extraplanets:wafer>, <extendedcrafting:material:10>, <moreplanets:zyptorium_ingot>], 
	[<moreplanets:zyptorium_ingot>, <ore:circuitElite>, <ore:ingotFusionite>, <ore:waferModern>, <ore:ingotFusionite>, <ore:circuitElite>, <moreplanets:zyptorium_ingot>], 
	[<ore:dustCryotheum>, <mets:neutron_plate>, <ore:circuitElite>, <extendedcrafting:material:10>, <ore:circuitElite>, <mets:neutron_plate>, <ore:dustCryotheum>], 
	[<ore:circuitElite>, <ore:dustCryotheum>, <moreplanets:zyptorium_ingot>, <moreplanets:zyptorium_ingot>, <moreplanets:zyptorium_ingot>, <ore:dustCryotheum>, <ore:circuitElite>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockupgradebus:3>, [
	[<appliedenergistics2:fluix_block>, <ore:gemPurpleDiamond>, <extraplanets:tier10_items:4>, <ore:circuitUltimate>, <ore:blockAbyssalnite>, <ore:circuitUltimate>, <extraplanets:tier10_items:4>, <ore:gemPurpleDiamond>, <extrabotany:blockorichalcos>], 
	[<ore:gemPurpleDiamond>, <extraplanets:tier10_items:4>, <extendedcrafting:material:11>, <ore:circuitUltimate>, <ore:ingotVoid>, <ore:circuitUltimate>, <extendedcrafting:material:11>, <extraplanets:tier10_items:4>, <ore:gemPurpleDiamond>], 
	[<extraplanets:tier10_items:4>, <extendedcrafting:material:11>, <ebwizardry:crystal_block:4>, <ore:blockDraconium>, <ore:blockDraconium>, <ore:blockDraconium>, <ebwizardry:crystal_block:4>, <extendedcrafting:material:11>, <extraplanets:tier10_items:4>], 
	[<ore:circuitUltimate>, <ore:circuitUltimate>, <ore:blockDraconium>, <ore:circuitUltimate>, <mets:field_generator>, <ore:circuitUltimate>, <ore:blockDraconium>, <ore:circuitUltimate>, <ore:circuitUltimate>], 
	[<ore:blockAbyssalnite>, <ore:ingotVoid>, <ore:blockDraconium>, <mets:field_generator>, <modularmachinery:blockupgradebus:2>, <mets:field_generator>, <ore:blockDraconium>, <ore:ingotVoid>, <ore:blockAbyssalnite>], 
	[<ore:circuitUltimate>, <ore:circuitUltimate>, <ore:blockDraconium>, <ore:circuitUltimate>, <mets:field_generator>, <ore:circuitUltimate>, <ore:blockDraconium>, <ore:circuitUltimate>, <ore:circuitUltimate>], 
	[<extraplanets:tier10_items:4>, <extendedcrafting:material:11>, <ebwizardry:crystal_block:4>, <ore:blockDraconium>, <ore:blockDraconium>, <ore:blockDraconium>, <ebwizardry:crystal_block:4>, <extendedcrafting:material:11>, <extraplanets:tier10_items:4>], 
	[<ore:gemPurpleDiamond>, <extraplanets:tier10_items:4>, <extendedcrafting:material:11>, <ore:circuitUltimate>, <ore:ingotVoid>, <ore:circuitUltimate>, <extendedcrafting:material:11>, <extraplanets:tier10_items:4>, <ore:gemPurpleDiamond>], 
	[<extrabotany:blockorichalcos>, <ore:gemPurpleDiamond>, <extraplanets:tier10_items:4>, <ore:circuitUltimate>, <ore:blockAbyssalnite>, <ore:circuitUltimate>, <extraplanets:tier10_items:4>, <ore:gemPurpleDiamond>, <appliedenergistics2:fluix_block>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <modularmachinery:blockparallelcontroller:3>, [
	[<extrabotany:blockorichalcos>, <extraplanets:tier10_items:4>, <ore:circuitUltimate>, <ore:circuitUltimate>, <ore:gemPurpleDiamond>, <ore:circuitUltimate>, <ore:circuitUltimate>, <extraplanets:tier10_items:4>, <appliedenergistics2:fluix_block>], 
	[<extraplanets:tier10_items:4>, <ebwizardry:crystal_block:4>, <ore:gemPurpleDiamond>, <extendedcrafting:material:11>, <ore:circuitUltimate>, <extendedcrafting:material:11>, <ore:gemPurpleDiamond>, <ebwizardry:crystal_block:4>, <extraplanets:tier10_items:4>], 
	[<ore:circuitUltimate>, <ore:gemPurpleDiamond>, <ore:blockAbyssalnite>, <ore:blockDraconium>, <ore:blockDraconium>, <ore:blockDraconium>, <ore:blockAbyssalnite>, <ore:gemPurpleDiamond>, <ore:circuitUltimate>], 
	[<ore:circuitUltimate>, <extendedcrafting:material:11>, <ore:blockDraconium>, <mets:field_generator>, <ore:ingotVoid>, <mets:field_generator>, <ore:blockDraconium>, <extendedcrafting:material:11>, <ore:circuitUltimate>], 
	[<ore:gemPurpleDiamond>, <ore:circuitUltimate>, <ore:blockDraconium>, <ore:ingotVoid>, <modularmachinery:blockparallelcontroller:2>, <ore:ingotVoid>, <ore:blockDraconium>, <ore:circuitUltimate>, <ore:gemPurpleDiamond>], 
	[<ore:circuitUltimate>, <extendedcrafting:material:11>, <ore:blockDraconium>, <mets:field_generator>, <ore:ingotVoid>, <mets:field_generator>, <ore:blockDraconium>, <extendedcrafting:material:11>, <ore:circuitUltimate>], 
	[<ore:circuitUltimate>, <ore:gemPurpleDiamond>, <ore:blockAbyssalnite>, <ore:blockDraconium>, <ore:blockDraconium>, <ore:blockDraconium>, <ore:blockAbyssalnite>, <ore:gemPurpleDiamond>, <ore:circuitUltimate>], 
	[<extraplanets:tier10_items:4>, <ebwizardry:crystal_block:4>, <ore:gemPurpleDiamond>, <extendedcrafting:material:11>, <ore:circuitUltimate>, <extendedcrafting:material:11>, <ore:gemPurpleDiamond>, <ebwizardry:crystal_block:4>, <extraplanets:tier10_items:4>], 
	[<appliedenergistics2:fluix_block>, <extraplanets:tier10_items:4>, <ore:circuitUltimate>, <ore:circuitUltimate>, <ore:gemPurpleDiamond>, <ore:circuitUltimate>, <ore:circuitUltimate>, <extraplanets:tier10_items:4>, <extrabotany:blockorichalcos>]
]);

mods.extendedcrafting.TableCrafting.addShaped(4, <modularmachinery:createmanipulator_factory_controller>, [
	[<ore:blockVoid>, <ore:blockTrichromadentium>, <ore:blockTrichromadentium>, <mekanism:basicblock2:4>, <botania:storage:1>, <mekanism:basicblock2:4>, <ore:blockAtronium>, <ore:blockAtronium>, <ore:blockVoid>], 
	[<ore:blockTrichromadentium>, <mekanismmultiblockmachine:gas_adsorption_fractionation_module>, <mekanism:teleportationcore>, <ore:Antimatter>, <mekanism:basicblock2:3>, <ore:Antimatter>, <mekanism:teleportationcore>, <mekanismmultiblockmachine:laserlenses>, <ore:blockAtronium>], 
	[<ore:blockTrichromadentium>, <mekanism:teleportationcore>, <ore:PlutoniumPellet>, <ore:PoloniumPellet>, <ore:PoloniumPellet>, <ore:PoloniumPellet>, <ore:PlutoniumPellet>, <mekanism:teleportationcore>, <ore:blockAtronium>], 
	[<mekanism:basicblock2:4>, <ore:Antimatter>, <ore:PoloniumPellet>, <mekanism:controlcircuit:4>, <extendedcrafting:material:13>, <mekanism:controlcircuit:4>, <ore:PoloniumPellet>, <ore:Antimatter>, <mekanism:basicblock2:4>], 
	[<botania:storage:1>, <mekanism:basicblock2:3>, <ore:PoloniumPellet>, <extendedcrafting:material:13>, <draconicevolution:reactor_core>, <extendedcrafting:material:13>, <ore:PoloniumPellet>, <mekanism:basicblock2:3>, <botania:storage:1>], 
	[<mekanism:basicblock2:4>, <ore:Antimatter>, <ore:PoloniumPellet>, <mekanism:controlcircuit:4>, <extendedcrafting:material:13>, <mekanism:controlcircuit:4>, <ore:PoloniumPellet>, <ore:Antimatter>, <mekanism:basicblock2:4>], 
	[<ore:blockSolsteel>, <mekanism:teleportationcore>, <ore:PlutoniumPellet>, <ore:PoloniumPellet>, <ore:PoloniumPellet>, <ore:PoloniumPellet>, <ore:PlutoniumPellet>, <mekanism:teleportationcore>, <ore:blockValasium>], 
	[<ore:blockSolsteel>, <mekanismmultiblockmachine:advanced_electrolysis_core>, <mekanism:teleportationcore>, <ore:Antimatter>, <mekanism:basicblock2:3>, <ore:Antimatter>, <mekanism:teleportationcore>, <mekanismmultiblockmachine:high_frequency_fusion_molding_module>, <ore:blockValasium>], 
	[<ore:blockVoid>, <ore:blockSolsteel>, <ore:blockSolsteel>, <mekanism:basicblock2:4>, <botania:storage:1>, <mekanism:basicblock2:4>, <ore:blockValasium>, <ore:blockValasium>, <ore:blockVoid>]
]);

mods.extendedcrafting.TableCrafting.addShaped(4, <extendedcrafting:material:32>*64, [
	[<ore:ingotIron>, <ore:ingotGold>, <ore:ingotLiquifiedCoralium>, <ore:ingotDreadium>, <ore:ingotAbyssalnite>, <ore:ingotEthaxium>, <ore:ingotDraconium>, <ore:ingotDraconiumAwakened>, <ore:ingotMercury>], 
	[<ore:ingotCarbon>, <ore:ingotUranium>, <ore:ingotPalladium>, <ore:ingotNickel>, <extraplanets:tier5_items:12>, <ore:ingotMagnesium>, <ore:ingotCrystal>, <ore:ingotZinc>, <ore:ingotTungsten>], 
	[<ore:ingotDarkIron>, <ore:ingotPlatinum>, <ore:ingotMeteoricIron>, <ore:ingotDesh>, <ore:ingotManasteel>, <ore:ingotTerrasteel>, <ore:ingotElvenElementium>, <ore:gaiaIngot>, <ore:ingotPhotonium>], 
	[<ore:ingotShadowium>, <ore:ingotOrichalcos>, <ore:ingotTitanium>, <ore:ingotSilver>, <ore:ingotFireDragonsteel>, <ore:ingotIceDragonsteel>, <ore:ingotFluixSteel>, <mets:niobium_titanium_ingot>, <ore:ingotFusionite>], 
	[<ore:ingotIrradium>, <ore:ingotSolarsteel>, <ore:ingotGallium>, <ore:ingotGravitonium>, <ore:ingotRunesteel>, <ore:ingotTrichromadentium>, <ore:ingotAtronium>, <ore:ingotEbonite>, <ore:ingotThaumium>], 
	[<ore:ingotVoid>, <ore:ingotBrass>, <ore:ingotIronwood>, <ore:ingotFiery>, <ore:ingotKnightmetal>, <ore:ingotCobalt>, <ore:ingotArdite>, <ore:ingotManyullyn>, <ore:ingotKnightslime>], 
	[<ore:ingotWyvernMetal>, <ore:ingotDraconicMetal>, <ore:ingotChaoticMetal>, <ore:ingotEnergium>, <ore:ingotUUMatter>, <ore:ingotValasium>, <ore:ingotRefinedGlowstone>, <ore:ingotRefinedObsidian>, <ore:ingotOsmium>], 
	[<ore:ingotAlubrass>, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(2, <draconicevolution:wyvern_core>, [
	[<draconicevolution:draconic_core>, <ore:ingotOsmium>, <ore:netherStar>, <ore:ingotPalladium>, <draconicevolution:draconic_core>],
	[<ore:ingotPalladium>, <ore:ingotManyullyn>, <extendedcrafting:material:9>, <ore:ingotManyullyn>, <ore:ingotOsmium>],
	[<ore:netherStar>, <extendedcrafting:material:9>, <ore:blockDraconium>, <extendedcrafting:material:9>, <ore:netherStar>],
	[<ore:ingotOsmium>, <ore:ingotManyullyn>, <extendedcrafting:material:9>, <ore:ingotManyullyn>, <ore:ingotPalladium>],
	[<draconicevolution:draconic_core>, <ore:ingotPalladium>, <ore:netherStar>, <ore:ingotOsmium>, <draconicevolution:draconic_core>]
]);

mods.extendedcrafting.TableCrafting.addShaped(4, <draconicevolution:draconium_capacitor:2>, [
	[<draconicevolution:chaotic_core>, <extendedcrafting:material:13>, <ore:ingotUltimate>, <ore:ingotUltimate>, <draconicevolution:chaotic_core>, <ore:ingotUltimate>, <ore:ingotUltimate>, <extendedcrafting:material:13>, <draconicevolution:chaotic_core>], 
	[<extendedcrafting:material:13>, <mekanism:controlcircuit:4>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:reactor_component>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <mekanism:controlcircuit:4>, <extendedcrafting:material:13>], 
	[<ore:ingotUltimate>, <draconicevolution:draconium_capacitor:1>, <mekanism:controlcircuit:4>, <galacticraftplanets:atomic_battery>, <ecoaeextension:estorage_energy_cell_l9>, <galacticraftplanets:atomic_battery>, <mekanism:controlcircuit:4>, <draconicevolution:draconium_capacitor:1>, <ore:ingotUltimate>], 
	[<ore:ingotUltimate>, <draconicevolution:draconium_capacitor:1>, <galaxyspace:ultimate_battery:100>, <draconicevolution:energy_storage_core>, <ore:gearChaoticMetal>, <draconicevolution:energy_storage_core>, <extraplanets:massive_battery>, <draconicevolution:draconium_capacitor:1>, <ore:ingotUltimate>], 
	[<draconicevolution:chaotic_core>, <draconicevolution:reactor_component>, <ecoaeextension:estorage_energy_cell_l9>, <ore:gearChaoticMetal>, <draconicevolution:reactor_core>, <ore:gearChaoticMetal>, <ecoaeextension:estorage_energy_cell_l9>, <draconicevolution:reactor_component>, <draconicevolution:chaotic_core>], 
	[<ore:ingotUltimate>, <draconicevolution:draconium_capacitor:1>, <galaxyspace:ultimate_battery:100>, <draconicevolution:energy_storage_core>, <ore:gearChaoticMetal>, <draconicevolution:energy_storage_core>, <extraplanets:massive_battery>, <draconicevolution:draconium_capacitor:1>, <ore:ingotUltimate>], 
	[<ore:ingotUltimate>, <draconicevolution:draconium_capacitor:1>, <mekanism:controlcircuit:4>, <extraplanets:electric_parts:1>, <ecoaeextension:estorage_energy_cell_l9>, <extraplanets:electric_parts:1>, <mekanism:controlcircuit:4>, <draconicevolution:draconium_capacitor:1>, <ore:ingotUltimate>], 
	[<extendedcrafting:material:13>, <mekanism:controlcircuit:4>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:reactor_component>, <draconicevolution:draconium_capacitor:1>, <draconicevolution:draconium_capacitor:1>, <mekanism:controlcircuit:4>, <extendedcrafting:material:13>], 
	[<draconicevolution:chaotic_core>, <extendedcrafting:material:13>, <ore:ingotUltimate>, <ore:ingotUltimate>, <draconicevolution:chaotic_core>, <ore:ingotUltimate>, <ore:ingotUltimate>, <extendedcrafting:material:13>, <draconicevolution:chaotic_core>]
]);

mods.extendedcrafting.TableCrafting.addShaped(4, <mekanism:tierinstaller:4>, [
	[<ore:blockEthaxium>, <extendedcrafting:material:13>, <ore:ingotUltimate>, <ore:ingotUltimate>, <extendedcrafting:singularity:65>, <ore:ingotUltimate>, <ore:ingotUltimate>, <extendedcrafting:material:13>, <ore:blockEthaxium>], 
	[<extendedcrafting:material:13>, <ore:blockEthaxium>, <mekanism:tierinstaller:3>, <mekanism:tierinstaller:3>, <mekanism:tierinstaller:3>, <mekanism:tierinstaller:3>, <mekanism:tierinstaller:3>, <ore:blockEthaxium>, <extendedcrafting:material:13>], 
	[<ore:ingotUltimate>, <mekanism:tierinstaller:3>, <ore:blockEthaxium>, <mekanism:controlcircuit:4>, <mekanism:controlcircuit:4>, <mekanism:controlcircuit:4>, <ore:blockEthaxium>, <mekanism:tierinstaller:3>, <ore:ingotUltimate>], 
	[<ore:ingotUltimate>, <mekanism:tierinstaller:3>, <mekanism:controlcircuit:4>, <storagedrawers:upgrade_creative>, <mekanism:cosmicalloy>, <storagedrawers:upgrade_creative>, <mekanism:controlcircuit:4>, <mekanism:tierinstaller:3>, <ore:ingotUltimate>], 
	[<extendedcrafting:singularity:3>, <mekanism:tierinstaller:3>, <mekanism:controlcircuit:4>, <mekanism:cosmicalloy>, <thaumcraft:primordial_pearl>, <mekanism:cosmicalloy>, <mekanism:controlcircuit:4>, <mekanism:tierinstaller:3>, <extendedcrafting:singularity:1>], 
	[<ore:ingotUltimate>, <mekanism:tierinstaller:3>, <mekanism:controlcircuit:4>, <storagedrawers:upgrade_creative>, <mekanism:cosmicalloy>, <storagedrawers:upgrade_creative>, <mekanism:controlcircuit:4>, <mekanism:tierinstaller:3>, <ore:ingotUltimate>], 
	[<ore:ingotUltimate>, <mekanism:tierinstaller:3>, <ore:blockEthaxium>, <mekanism:controlcircuit:4>, <mekanism:controlcircuit:4>, <mekanism:controlcircuit:4>, <ore:blockEthaxium>, <mekanism:tierinstaller:3>, <ore:ingotUltimate>], 
	[<extendedcrafting:material:13>, <ore:blockEthaxium>, <mekanism:tierinstaller:3>, <mekanism:tierinstaller:3>, <mekanism:tierinstaller:3>, <mekanism:tierinstaller:3>, <mekanism:tierinstaller:3>, <ore:blockEthaxium>, <extendedcrafting:material:13>], 
	[<ore:blockEthaxium>, <extendedcrafting:material:13>, <ore:ingotUltimate>, <ore:ingotUltimate>, <extendedcrafting:singularity:64>, <ore:ingotUltimate>, <ore:ingotUltimate>, <extendedcrafting:material:13>, <ore:blockEthaxium>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <draconicevolution:creative_rf_source>, [
	[<ore:blockUltimate>, <ecoaeextension:estorage_energy_cell_l9>, <extendedcrafting:trimmed:5>, <modularmachinery:blockenergyoutputhatch:7>, <draconicevolution:reactor_component>, <modularmachinery:blockenergyoutputhatch:7>, <extendedcrafting:trimmed:5>, <ecoaeextension:estorage_energy_cell_l9>, <ore:blockUltimate>], 
	[<ecoaeextension:estorage_energy_cell_l9>, <extrabotany:blockorichalcos>, <mets:advanced_oc_heat_vent>, <draconicevolution:reactor_core>, <mets:field_generator>, <draconicevolution:reactor_core>, <mets:advanced_heat_vent>, <ore:blockPrimordial>, <ecoaeextension:estorage_energy_cell_l9>], 
	[<extendedcrafting:trimmed:5>, <mets:advanced_oc_heat_vent>, <draconicevolution:energy_storage_core>, <draconicevolution:particle_generator:2>, <draconicevolution:particle_generator:2>, <draconicevolution:particle_generator:2>, <draconicevolution:energy_storage_core>, <mets:advanced_heat_vent>, <extendedcrafting:trimmed:5>], 
	[<modularmachinery:blockenergyinputhatch:7>, <draconicevolution:reactor_core>, <draconicevolution:particle_generator:2>, <botania:laputashard:19>, <draconicevolution:chaotic_core>, <botania:laputashard:19>, <draconicevolution:particle_generator:2>, <draconicevolution:reactor_core>, <modularmachinery:blockenergyinputhatch:7>], 
	[<draconicevolution:reactor_component>, <extrabotany:material:3>, <draconicevolution:particle_generator:2>, <draconicevolution:chaotic_core>, <draconicevolution:draconium_capacitor:2>, <draconicevolution:chaotic_core>, <draconicevolution:particle_generator:2>, <extraplanets:schematic_tier10>, <draconicevolution:reactor_component>], 
	[<modularmachinery:blockenergyinputhatch:7>, <draconicevolution:reactor_core>, <draconicevolution:particle_generator:2>, <botania:laputashard:19>, <draconicevolution:chaotic_core>, <botania:laputashard:19>, <draconicevolution:particle_generator:2>, <draconicevolution:reactor_core>, <modularmachinery:blockenergyinputhatch:7>], 
	[<extendedcrafting:trimmed:5>, <mets:advanced_heat_vent>, <draconicevolution:energy_storage_core>, <draconicevolution:particle_generator:2>, <draconicevolution:particle_generator:2>, <draconicevolution:particle_generator:2>, <draconicevolution:energy_storage_core>, <mets:advanced_oc_heat_vent>, <extendedcrafting:trimmed:5>], 
	[<ecoaeextension:estorage_energy_cell_l9>, <twilightforest:block_storage:4>, <mets:advanced_heat_vent>, <draconicevolution:reactor_core>, <ore:Antimatter>, <draconicevolution:reactor_core>, <mets:advanced_oc_heat_vent>, <ore:blockUUMatter>, <ecoaeextension:estorage_energy_cell_l9>], 
	[<ore:blockUltimate>, <ecoaeextension:estorage_energy_cell_l9>, <extendedcrafting:trimmed:5>, <modularmachinery:blockenergyoutputhatch:7>, <draconicevolution:reactor_component>, <modularmachinery:blockenergyoutputhatch:7>, <extendedcrafting:trimmed:5>, <ecoaeextension:estorage_energy_cell_l9>, <ore:blockUltimate>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <appliedenergistics2:creative_energy_cell>, [
	[<ore:ingotUltimate>, <ore:ingotUltimate>, <ore:ingotUltimate>, <modularmachinery:blockenergyoutputhatch:7>, <abyssalcraft:oc>, <modularmachinery:blockenergyoutputhatch:7>, <ore:ingotUltimate>, <ore:ingotUltimate>, <ore:ingotUltimate>], 
	[<ore:ingotUltimate>, <ecoaeextension:estorage_energy_cell_l4>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:crafting_storage_64k>, <ecoaeextension:estorage_cell_item_16m>, <appliedenergistics2:crafting_storage_64k>, <appliedenergistics2:dense_energy_cell>, <ecoaeextension:estorage_energy_cell_l4>, <ore:ingotUltimate>], 
	[<ore:ingotUltimate>, <appliedenergistics2:dense_energy_cell>, <ore:blockAbyssalnite>, <ore:ingotUUMatter>, <ore:ingotTrichromadentium>, <ore:ingotFiery>, <ore:blockDreadium>, <appliedenergistics2:dense_energy_cell>, <ore:ingotUltimate>], 
	[<modularmachinery:blockenergyoutputhatch:7>, <appliedenergistics2:crafting_storage_64k>, <ore:ingotFiery>, <extendedcrafting:singularity:3>, <extrabotany:blockorichalcos>, <extendedcrafting:singularity:3>, <ore:ingotUUMatter>, <appliedenergistics2:crafting_storage_64k>, <modularmachinery:blockenergyoutputhatch:7>], 
	[<abyssalcraft:oc>, <ecoaeextension:estorage_cell_item_16m>, <ore:ingotTrichromadentium>, <extrabotany:blockorichalcos>, <draconicevolution:chaotic_core>, <extrabotany:blockorichalcos>, <ore:ingotTrichromadentium>, <ecoaeextension:estorage_cell_item_16m>, <abyssalcraft:oc>], 
	[<modularmachinery:blockenergyoutputhatch:7>, <appliedenergistics2:crafting_storage_64k>, <ore:ingotUUMatter>, <extendedcrafting:singularity:3>, <extrabotany:blockorichalcos>, <extendedcrafting:singularity:3>, <ore:ingotFiery>, <appliedenergistics2:crafting_storage_64k>, <modularmachinery:blockenergyoutputhatch:7>], 
	[<ore:ingotUltimate>, <appliedenergistics2:dense_energy_cell>, <ore:blockDreadium>, <ore:ingotFiery>, <ore:ingotTrichromadentium>, <ore:ingotUUMatter>, <ore:blockAbyssalnite>, <appliedenergistics2:dense_energy_cell>, <ore:ingotUltimate>], 
	[<ore:ingotUltimate>, <ecoaeextension:estorage_energy_cell_l4>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:crafting_storage_64k>, <ecoaeextension:estorage_cell_item_16m>, <appliedenergistics2:crafting_storage_64k>, <appliedenergistics2:dense_energy_cell>, <ecoaeextension:estorage_energy_cell_l4>, <ore:ingotUltimate>], 
	[<ore:ingotUltimate>, <ore:ingotUltimate>, <ore:ingotUltimate>, <modularmachinery:blockenergyoutputhatch:7>, <abyssalcraft:oc>, <modularmachinery:blockenergyoutputhatch:7>, <ore:ingotUltimate>, <ore:ingotUltimate>, <ore:ingotUltimate>]
]);

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

RecipeBuilder.newBuilder("mixsmelter_crdx","mixsmelter",600)
	.addEnergyPerTickInput(0)
	.addItemInputs([
		<ore:blockBlaze>*16
	])
	.addItemOutput(<twilightforest:fiery_blood>*4)
	.build();

RecipeBuilder.newBuilder("mixsmelter_gy","mixsmelter",200)
	.addEnergyPerTickInput(0)
	.addItemInputs([
		<ore:ingotManasteel>*1,
		<ore:treeLeaves>*16
	])
	.addItemOutput(<twilightforest:steeleaf_ingot>*4)
	.build();

RecipeBuilder.newBuilder("mixsmelter_qsjs","mixsmelter",300)
	.addEnergyPerTickInput(0)
	.addItemInputs([
		<twilightforest:fiery_blood>*2,
		<ore:ingotIronwood>*4
	])
	.addItemOutput(<twilightforest:knightmetal_ingot>*2)
	.build();

RecipeBuilder.newBuilder("mixsmelter_tsd","mixsmelter",400)
	.addEnergyPerTickInput(0)
	.addItemInputs([
		<tconstruct:ingots>*1,
		<twilightforest:steeleaf_ingot>*2
	])
	.addItemOutput(<twilightforest:ironwood_ingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_po","moleculartransformer",1)
	.addEnergyPerTickInput(400000000)
	.addItemInputs([
		<moretcon:ingotgallium>*1
	])
	.addItemOutput(<mekanism:poloniumpellet>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_ga","moleculartransformer",1)
	.addEnergyPerTickInput(400000000)
	.addItemInputs([
		<ore:ingotLead>*1
	])
	.addItemOutput(<moretcon:ingotgallium>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_ir","moleculartransformer",1)
	.addEnergyPerTickInput(800000000)
	.addItemInputs([
		<minecraft:iron_ingot>*1
	])
	.addItemOutput(<ic2:misc_resource:1>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_pu","moleculartransformer",1)
	.addEnergyPerTickInput(400000000)
	.addItemInputs([
		<ore:ingotTitanium>*1
	])
	.addItemOutput(<mekanism:plutoniumpellet>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_shd","moleculartransformer",1)
	.addEnergyPerTickInput(80000000)
	.addItemInputs([
		<ore:ingotManasteel>*1
	])
	.addItemOutput(<abyssalcraft:cingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_jzd","moleculartransformer",1)
	.addEnergyPerTickInput(80000000)
	.addItemInputs([
		<ore:ingotElvenElementium>*1
	])
	.addItemOutput(<abyssalcraft:dreadiumingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_ysd","moleculartransformer",1)
	.addEnergyPerTickInput(80000000)
	.addItemInputs([
		<ore:ingotTerrasteel>*1
	])
	.addItemOutput(<abyssalcraft:abyingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_yssd","moleculartransformer",1)
	.addEnergyPerTickInput(100000000)
	.addItemInputs([
		<ore:gaiaIngot>*1
	])
	.addItemOutput(<abyssalcraft:ethaxiumingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_ns","moleculartransformer",1)
	.addEnergyPerTickInput(400000000)
	.addItemInputs([
		<minecraft:skull:1>*1
	])
	.addItemOutput(<minecraft:nether_star>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_syg","moleculartransformer",1)
	.addEnergyPerTickInput(100000000)
	.addItemInputs([
		<ore:ingotOrichalcos>*1
	])
	.addItemOutput(<iceandfire:dragonsteel_fire_ingot>*1)
	.addItemOutput(<iceandfire:dragonsteel_ice_ingot>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_gad","moleculartransformer",1)
	.addEnergyPerTickInput(100000000)
	.addItemInputs([
		<ore:ingotThaumium>*1,
		<ore:ingotDraconiumAwakened>*1
	])
	.addItemOutput(<extrabotany:material:5>*1)
	.addItemOutput(<extrabotany:material:8>*1)
	.build();

RecipeBuilder.newBuilder("moleculartransformer_yzwz","moleculartransformer",1)
	.addEnergyPerTickInput(1000000000)
	.addItemInputs([
		<ore:ingotUltimate>*1,
		<ore:ingotUUMatter>*1,
		<ore:ingotDraconicMetal>*1,
		<ore:gemRedDiamond>*1,
		<ore:ingotDarkIron>*1
	])
	.addItemOutput(<mekanism:cosmicmatter>*4)
	.build();
RecipeBuilder.newBuilder("moleculartransformer_fwz","moleculartransformer",1)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<mekanism:cosmicmatter>*1
	])
	.addItemOutput(<mekanism:antimatterpellet>*1)
	.build();

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

RecipeBuilder.newBuilder("createmanipulator_","createmanipulator",7200)
	.addEnergyPerTickInput(10000000)
	.addItemInputs([
		<ore:ingotUltimate>*16,
		<mekanism:controlcircuit:4>*8,
		<ecoaeextension:estorage_cell_item_256m>*4
	])
	.addItemOutput(<appliedenergistics2:creative_storage_cell>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator_","createmanipulator",7200)
	.addEnergyPerTickInput(1000000)
	.addItemInputs([
		<storagedrawers:upgrade_creative>*4,
		<ore:ingotUltimate>*16,
		<mekanism:controlcircuit:4>*8
	])
	.addItemOutput(<storagedrawers:upgrade_creative:1>*1)
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

RecipeBuilder.newBuilder("baseplant_jcjxwk","baseplant",160)
	.addEnergyPerTickInput(1000)
	.addItemInputs([
		<ore:plateIron>*12,
		<ore:dustRedstone>*4
	])
	.addItemOutput(<ic2:resource:12>*1)
	.build();

RecipeBuilder.newBuilder("uumatter_manipulator_in","uumatter_manipulator",1)
	.addEnergyPerTickInput(400000000)
	.addOutput(<liquid:ic2uu_matter>*100)
	.build();

RecipeBuilder.newBuilder("uumatter_manipulator_out","uumatter_manipulator",1)
	.addInput(<liquid:ic2uu_matter>*100)
	.addEnergyPerTickOutput(400000000)
	.build();

RecipeBuilder.newBuilder("fusion_reactor_H","fusion_reactor",20)
	.addInput(<liquid:liquidhydrogen>*100)
	.addEnergyPerTickOutput(200000000)
	.build();

RecipeBuilder.newBuilder("fusion_reactor_He","fusion_reactor",20)
	.addInput(<liquid:helium_gas>*100)
	.addEnergyPerTickOutput(100000000)
	.build();

RecipeBuilder.newBuilder("fusion_reactor_D","fusion_reactor",20)
	.addInput(<liquid:liquidtritium>*100)
	.addEnergyPerTickOutput(400000000)
	.build();

RecipeBuilder.newBuilder("fusion_reactor_T","fusion_reactor",20)
	.addInput(<liquid:liquiddeuterium>*100)
	.addEnergyPerTickOutput(400000000)
	.build();

RecipeBuilder.newBuilder("thermalpower_he","thermalpower",20)
	.addInput(<liquid:liquidhydrogen>*100)
	.addEnergyPerTickOutput(400000)
	.build();

RecipeBuilder.newBuilder("thermalpower_lava","thermalpower",20)
	.addInput(<liquid:lava>*100)
	.addEnergyPerTickOutput(200000)
	.build();

RecipeBuilder.newBuilder("thermalpower_sh","thermalpower",20)
	.addInput(<liquid:liquidcoralium>*100)
	.addEnergyPerTickOutput(400000)
	.build();

RecipeBuilder.newBuilder("thermalpower_mana","thermalpower",20)
	.addInput(<liquid:fluidedmana>*100)
	.addEnergyPerTickOutput(1600000)
	.build();

RecipeBuilder.newBuilder("thermalpower_lil","thermalpower",20)
	.addInput(<liquid:oil>*100)
	.addEnergyPerTickOutput(400000)
	.build();

RecipeBuilder.newBuilder("thermalpower_bh","thermalpower",20)
	.addInput(<liquid:pyrotheum>*100)
	.addInput(<liquid:cryotheum>*100)
	.addEnergyPerTickOutput(800000)
	.build();

RecipeBuilder.newBuilder("baseplant_hhc","baseplant",300)
	.addEnergyPerTickInput(20000)
	.addItemInputs([
		<mekanism:machineblock2:8>*1,
		<mekanism:machineblock2:3>*1,
		<mekanism:machineblock2:7>*1,
		<thermalexpansion:machine:3>*1,
		<thermalexpansion:machine:1>*1,
		<modularmachinery:oreintegrate_processing_factory_controller>*2,
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
	.addItemOutput(<modularmachinery:oreintegrate_processing_factory_controller>*1)
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

RecipeBuilder.newBuilder("createmanipulator__","createmanipulator",600)
	.addEnergyPerTickInput(400000)
	.addItemInputs([
		<mekanism:controlcircuit:4>*4,
		<extendedcrafting:material:13>*4,
		<draconicevolution:chaotic_core>*2,
		<modularmachinery:blockupgradebus:3>*1
	])
	.addItemOutput(<modularmachinery:blockupgradebus:4>*1)
	.build();

RecipeBuilder.newBuilder("createmanipulator__","createmanipulator",600)
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