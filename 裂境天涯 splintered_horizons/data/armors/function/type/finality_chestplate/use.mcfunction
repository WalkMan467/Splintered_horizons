# ===================================================
# Clear Tai Chis Shadow Main Function

    ## Guide [ function armors:type/tai_chis_shadow/main ] >>> Main Function
    ## Guide [ function armors:type/tai_chis_shadow/clear ] >>> Clear Tai Chis Shadow Armor Effect
    ## Guide [ function armors:type/tai_chis_shadow/eqipment ] >>> Armor Eqipment
    ## Guide [ function armors:type/tai_chis_shadow/take_off ] >>> Armor Take Off
    ## Guide [ function armors:type/tai_chis_shadow/use ] >>> Trigger Tai Chis Shadow Armor Effect

# ===================================================

advancement revoke @s only armors:type/finality_chestplate/use

execute if score @s armor.finality_chestplate.cd matches 1.. run return 0

scoreboard players set @s armor.finality_chestplate.cd 5

scoreboard players set #math global.main 5
scoreboard players operation @s player.ultimate -= #math global.main

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s times 10 0 10

scoreboard players set @s armor.finality_chestplate.effect.timer 6

scoreboard players set @s armor.chestplate.effect.actived 1