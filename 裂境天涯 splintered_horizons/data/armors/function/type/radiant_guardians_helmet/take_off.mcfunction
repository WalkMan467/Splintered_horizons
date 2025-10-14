# ===================================================
# Radiant Guardians Helmet Function

    ## Guide [ function armors:type/radiant_guardians_helmet/main ] >>> Main Function
    ## Guide [ function armors:type/radiant_guardians_helmet/eqipment ] >>> Helmet Eqipment
    ## Guide [ function armors:type/radiant_guardians_helmet/take_off ] >>> Helmet Take Off

# ===================================================
# Advancement Detect ;Run Function

scoreboard players add @s armor.radiant_guardians_helmet.cd 0
scoreboard players reset @s armor.radiant_guardians_helmet.effect.cd

playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1

advancement revoke @s only armors:type/radiant_guardians_helmet/eqipment