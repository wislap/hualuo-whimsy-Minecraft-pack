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
recipes.remove(<twilightforest:uncrafting_table>);

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

mods.extendedcrafting.TableCrafting.addShaped(0, <mekanism:basicblock:8>*1, [
	[<ore:ingotEthaxium>, <ore:blockGlassColorless>, <ore:ingotRunesteel>], 
	[<ore:blockGlassColorless>, <ore:machineBlockAdvanced>, <ore:blockGlassColorless>], 
	[<ore:ingotOsmium>, <ore:blockGlassColorless>, <ore:ingotMeteoricIron>]
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
	[<ore:ingotWyvernMetal>, <ore:ingotDraconicMetal>, <ore:ingotAlubrass>, <ore:ingotEnergium>, <ore:ingotUUMatter>, <ore:ingotValasium>, <ore:ingotRefinedGlowstone>, <ore:ingotRefinedObsidian>, <ore:ingotOsmium>], 
	[<ore:ingotCopper>, null, null, null, null, null, null, null, null], 
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
