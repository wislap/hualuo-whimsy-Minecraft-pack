import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

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
