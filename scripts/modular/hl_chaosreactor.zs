import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;

RecipeBuilder.newBuilder("chaosreactor_heart","chaosreactor",300)
	.addEnergyPerTickOutput(50000000)
	.addItemInputs([
		<ore:blockDraconium>*16,
	])
	.addItemOutput(<draconicevolution:dragon_heart>*1)
	.build();

RecipeBuilder.newBuilder("chaosreactor_chaos","chaosreactor",600)
	.addEnergyPerTickOutput(200000000)
	.addItemInputs([
		<ore:blockDraconiumAwakened>*8,
	])
	.addItemOutput(<draconicevolution:chaos_shard>*4)
	.build();