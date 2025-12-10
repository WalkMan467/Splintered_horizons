# ===================================================
# Armor of the Coiled Rock Main Function

    ## Guide [ function armors:type/armor_of_the_coiled_rock/use ] >>> Use Function

# ===================================================
# Detect get runics ; Execute the Function

execute if score @s armor.armor_of_the_coiled_rock.cd matches 1.. run return 0

execute unless items entity @s armor.chest *[minecraft:custom_data~{colied_rock:1b} | custom_data~{colied_rock:1}] run return 0

effect give @s absorption 5 1 true

playsound minecraft:block.anvil.land voice @s ~ ~1 ~ 1 1.05
playsound minecraft:entity.illusioner.cast_spell voice @s ~ ~1 ~ 1 1.25

scoreboard players set @s armor.chestplate.effect.actived 1
scoreboard players set @s armor.armor_of_the_coiled_rock.cd 20