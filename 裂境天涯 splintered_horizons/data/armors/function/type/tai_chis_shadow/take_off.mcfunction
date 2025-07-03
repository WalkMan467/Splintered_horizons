# ===================================================
# Clear Tai Chis Shadow Main Function

    ## Guide [ function armors:type/tai_chis_shadow/main ] >>> Main Function
    ## Guide [ function armors:type/tai_chis_shadow/clear ] >>> Clear Tai Chis Shadow Armor Effect
    ## Guide [ function armors:type/tai_chis_shadow/eqipment ] >>> Armor Eqipment
    ## Guide [ function armors:type/tai_chis_shadow/take_off ] >>> Armor Take Off
    ## Guide [ function armors:type/tai_chis_shadow/use ] >>> Trigger Tai Chis Shadow Armor Effect

# ===================================================

scoreboard players set @s armor.tai_chis_shadow.effect 0

title @s title {"text":"\uE003","font":"minecraft:screen"}
title @s times 0 10 10

title @s subtitle [{"text":""},{"text":"☯☯☯","color":"#212121"}]

playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1

advancement revoke @s only armors:type/tai_chis_shadow/eqipment