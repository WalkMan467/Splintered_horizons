# ===================================================

# use



    ## Guide [ function armors:type/finality_chestplate/use ] >>> use

    ## Guide [ function armors:type/finality_chestplate/effect/guide ] >>> guide

    ## Guide [ function armors:type/finality_chestplate/effect/reset ] >>> reset



# ===================================================



# Detect kill monster ; Execute the Function



advancement revoke @s only armors:type/finality_chestplate/use





# 第一次使用先建立 CD 分數 / Initialize the cd score on first use
execute \
    unless score @s armor.finality_chestplate.cd matches -2147483648..2147483647 run \
    return run \
function armors:cd {id:"armor.finality_chestplate.cd", cd:5}

# CD 還沒到 / Still on cooldown
execute \
    unless score #gametime global.main >= @s armor.finality_chestplate.cd run \
return 0



function armors:cd {id:"armor.finality_chestplate.cd", cd:5}



scoreboard players set #math global.main 100

scoreboard players operation @s player.ultimate -= #math global.main



title @s title {"text":"\uE004","font":"minecraft:screen"}

title @s times 10 0 10



function cse:sys/status_effects/use {type:"add_multiplied_base", attribute:"attack_damage",duration:100,base:0.25,value:0.0,max:0.25, id:"finality_chestplate"}



scoreboard players set @s armor.chestplate.effect.actived 2