import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

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
