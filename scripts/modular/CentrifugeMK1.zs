#reloadable
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.MachineUpgradeBuilder;
import mods.modularmachinery.MMEvents;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.SmartInterfaceType;
import mods.modularmachinery.MachineTickEvent;
import mods.modularmachinery.MachineStructureFormedEvent;

//回收使用过的萃取剂
RecipeBuilder.newBuilder("HandleUsedExtractanta", "CentrifugeMK1",120)
    .addEnergyPerTickInput(500)
    .addFluidInput(<liquid:usedextractanta> * 400)
    .addFluidInput(<liquid:water> * 100)
    .addFluidOutput(<liquid:extractanta> * 400)
    .addItemOutput(<contenttweaker:slag>).setChance(0.25)
    .build();
RecipeBuilder.newBuilder("HandleUsedExtractantb", "CentrifugeMK1",120)
    .addEnergyPerTickInput(500)
    .addFluidInput(<liquid:usedextractantb> * 400)
    .addFluidInput(<liquid:water> * 100)
    .addFluidOutput(<liquid:extractantb> * 400)
    .addItemOutput(<contenttweaker:slag>).setChance(0.5)
    .build();
RecipeBuilder.newBuilder("HandleUsedExtractantc", "CentrifugeMK1",120)
    .addEnergyPerTickInput(500)
    .addFluidInput(<liquid:usedextractantc> * 400)
    .addFluidInput(<liquid:water> * 100)
    .addFluidOutput(<liquid:extractantc> * 400)
    .addItemOutput(<contenttweaker:slag>)
    .build();
RecipeBuilder.newBuilder("HandleSlag", "CentrifugeMK1",20)
    .addEnergyPerTickInput(200)
    .addItemInput(<contenttweaker:slag>).setChance(0.5)
    .addItemOutput(<thermalfoundation:material>).setChance(0.2)
    .addItemOutput(<thermalfoundation:material:64>).setChance(0.2)
    .addItemOutput(<thermalfoundation:material:65>).setChance(0.2)
    .addItemOutput(<thermalfoundation:material:66>).setChance(0.2)
    .addItemOutput(<thermalfoundation:material:67>).setChance(0.2)
    .addItemOutput(<thermalfoundation:material:68>).setChance(0.2)
    .addItemOutput(<thermalfoundation:material:69>).setChance(0.2)
    .addItemOutput(<mekanism:dust:2>).setChance(0.2)
    .build();