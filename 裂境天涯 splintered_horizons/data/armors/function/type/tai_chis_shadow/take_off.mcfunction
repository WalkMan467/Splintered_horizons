# ===================================================
# take_off

    ## Guide [ function armors:type/tai_chis_shadow/take_off ] >>> take_off
    ## Guide [ function armors:type/tai_chis_shadow/main ] >>> tai chis shadow main
    ## Guide [ function armors:type/tai_chis_shadow/clear ] >>> clear

# ===================================================

scoreboard players set @s armor.tai_chis_shadow.effect 0

title @s title {"text":"\uE003","font":"minecraft:screen"}
title @s times 0 10 10

title @s subtitle [{"text":""},{"text":"☯☯☯","color":"#212121"}]

playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1

advancement revoke @s only armors:type/tai_chis_shadow/eqipment