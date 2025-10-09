import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

RecipeBuilder.newBuilder("uumatter_manipulator_in","uumatter_manipulator",1)
	.addEnergyPerTickInput(400000000)
	.addOutput(<liquid:ic2uu_matter>*100)
	.build();

RecipeBuilder.newBuilder("uumatter_manipulator_out","uumatter_manipulator",1)
	.addInput(<liquid:ic2uu_matter>*100)
	.addEnergyPerTickOutput(400000000)
	.build();

RecipeBuilder.newBuilder("uumatter_manipulator_drop","uumatter_manipulator",200)
	.addInput(<liquid:ic2uu_matter>*1000)
	.addAspectInput("vitresus",8)
	.addAspectInput("praecantatio",8)
	.addAspectInput("ordo",8)
	.addOutput(<emt:materials_uumatterdrop>*1)
	.build();