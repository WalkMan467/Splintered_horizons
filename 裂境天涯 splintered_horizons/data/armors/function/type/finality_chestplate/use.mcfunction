# ===================================================
# Finality Chestplate Main Function

    ## Guide [ function armors:type/finality_chestplate/use ] >>> Finality Chestplate Armor Use
    ## Guide [ function armors:type/finality_chestplate/effect/guide ] >>> Effect Guide
    ## Guide [ function armors:type/finality_chestplate/effect/reset ] >>> Effect Clear
    ## Guide [ function armors:type/finality_chestplate/effect/timer ] >>> Effect Timer

# ===================================================
# Detect kill monster ; Execute the Function

advancement revoke @s only armors:type/finality_chestplate/use


execute \
    if score @s armor.finality_chestplate.cd matches 1.. run \
return 0

scoreboard players set @s armor.finality_chestplate.cd 5

scoreboard players set #math global.main 100
scoreboard players operation @s player.ultimate -= #math global.main

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s times 10 0 10

function cse:sys/status_effects/use {type:"add_multiplied_base", attribute:"attack_damage",duration:100,base:0.25,value:0.0,max:0.25, id:"finality_chestplate"}

scoreboard players set @s armor.chestplate.effect.actived 2