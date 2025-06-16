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
