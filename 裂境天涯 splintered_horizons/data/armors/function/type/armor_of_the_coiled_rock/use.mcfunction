# ===================================================
# use

    ## Guide [ function armors:type/armor_of_the_coiled_rock/use ] >>> use
    ## Guide [ function armors:type/coiled_rock_helmet/use ] >>> use

# ===================================================
# Detect get runics ; Execute the Function

# 第一次使用先建立 CD 分數 / Initialize the cd score on first use
execute \
    unless score @s armor.armor_of_the_coiled_rock.cd matches -2147483648..2147483647 run \
    return run \
function armors:cd {id:"armor.armor_of_the_coiled_rock.cd", cd:20}

# CD 還沒到 / Still on cooldown
execute \
    unless score #gametime global.main >= @s armor.armor_of_the_coiled_rock.cd run \
return 0

execute \
    unless items entity @s armor.chest *[minecraft:custom_data~{colied_rock:1b} | custom_data~{colied_rock:1}] run \
return 0

effect give @s absorption 5 1 true


playsound minecraft:block.anvil.land voice @s ~ ~1 ~ 1 1.05

playsound minecraft:entity.illusioner.cast_spell voice @s ~ ~1 ~ 1 1.25

scoreboard players set @s armor.chestplate.effect.actived 2
function armors:cd {id:"armor.armor_of_the_coiled_rock.cd", cd:20}