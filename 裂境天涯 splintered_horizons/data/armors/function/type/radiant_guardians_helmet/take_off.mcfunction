# ===================================================
# Radiant Guardians Helmet Main Function

    ## Guide [ function armors:type/radiant_guardians_helmet/take_off ] >>> Take Off
    ## Guide [ function armors:type/radiant_guardians_helmet/use ] >>> Detect use
    ## Guide [ function armors:type/radiant_guardians_helmet/eqipment ] >>> Eqipment
    ## Guide [ function armors:type/radiant_guardians_helmet/add_torch ] >>> Add Torch
    ## Guide [ function armors:type/radiant_guardians_helmet/guide ] >>> Function Guide
    ## Guide [ function armors:type/radiant_guardians_helmet/main ] >>> Main Function
    ## Guide [ function armors:type/radiant_guardians_helmet/effect/add_torch ] >>> Passive Auto Place Torch

# ===================================================
# Advancement Detect ;Run Function

scoreboard players add @s armor.radiant_guardians_helmet.cd 0
scoreboard players reset @s armor.radiant_guardians_helmet.effect.cd

playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1

advancement revoke @s only armors:type/radiant_guardians_helmet/eqipment