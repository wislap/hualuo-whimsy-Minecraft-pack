import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.ic2.MetalFormer;

mods.ic2.MetalFormer.addRollingRecipe(<contenttweaker:plate_nano_living_metal>,<mets:nano_living_metal>);#锭成板

mods.ic2.MetalFormer.addRollingRecipe(<contenttweaker:plate_chaos_metal>,<draconicevolution:chaos_shard:1>);#锭成板
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:club_chaos_metal>*2,<draconicevolution:chaos_shard:1>);#锭成杆
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:chaos_wire>*2,<contenttweaker:club_chaos_metal>);#杆成丝
mods.ic2.MetalFormer.addCuttingRecipe(<contenttweaker:club_chaos_metal>*2,<contenttweaker:plate_chaos_metal>);#板成杆
mods.ic2.MetalFormer.addCuttingRecipe(<contenttweaker:precision_bolts_chaos_metal>*2,<contenttweaker:club_chaos_metal>);#杆成螺丝

mods.ic2.MetalFormer.addRollingRecipe(<contenttweaker:plate_awakened_dragon>,<draconicevolution:draconic_ingot>);#锭成板
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:club_awakened_dragon>*2,<draconicevolution:draconic_ingot>);#锭成杆
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:shenlong_wire>*2,<contenttweaker:club_awakened_dragon>);#杆成丝
mods.ic2.MetalFormer.addCuttingRecipe(<contenttweaker:club_awakened_dragon>*2,<contenttweaker:plate_awakened_dragon>);#板成杆
mods.ic2.MetalFormer.addCuttingRecipe(<contenttweaker:precision_bolts_awakened_dragon>*2,<contenttweaker:club_awakened_dragon>);#杆成螺丝

mods.ic2.MetalFormer.addRollingRecipe(<contenttweaker:plate_dragon_vegetarian>,<draconicevolution:draconium_ingot>);#锭成板
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:club_dragon_vegetarian>*2,<draconicevolution:draconium_ingot>);#锭成杆
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:dragon_wire>*2,<contenttweaker:club_dragon_vegetarian>);#杆成丝
mods.ic2.MetalFormer.addRollingRecipe(<contenttweaker:club_dragon_vegetarian>*2,<contenttweaker:plate_dragon_vegetarian>);#板成杆
mods.ic2.MetalFormer.addCuttingRecipe(<contenttweaker:precision_bolts_dragon_vegetarian>*4,<contenttweaker:club_dragon_vegetarian>);#杆成螺丝

mods.ic2.MetalFormer.addRollingRecipe(<contenttweaker:plate_crystal_matrix>,<avaritia:resource:1>);#锭成板
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:infinity_bowstring>*2,<avaritia:resource:1>);#锭成线
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:crystal_matrix_wire>*2,<contenttweaker:plate_crystal_matrix>);#线成丝
mods.ic2.MetalFormer.addCuttingRecipe(<contenttweaker:infinity_bowstring>*4,<contenttweaker:plate_crystal_matrix>);#板成线

mods.ic2.MetalFormer.addRollingRecipe(<contenttweaker:plate_degenerate_neutron_matrix>,<contenttweaker:degenerate_neutron_matrix_ingots>);#锭成板
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:club_degenerate_neutron>*2,<contenttweaker:degenerate_neutron_matrix_ingots>);#锭成杆
mods.ic2.MetalFormer.addExtrudingRecipe(<contenttweaker:degenerate_neutron_matrix_fibers>*4,<contenttweaker:club_degenerate_neutron>);#杆成线
mods.ic2.MetalFormer.addCuttingRecipe(<contenttweaker:club_degenerate_neutron>*2,<contenttweaker:plate_degenerate_neutron_matrix>);#板成杆