# ===================================================
# take_off

    ## Guide [ function armors:type/radiant_guardians_helmet/take_off ] >>> take_off
    ## Guide [ function armors:type/radiant_guardians_helmet/use ] >>> use
    ## Guide [ function armors:type/radiant_guardians_helmet/eqipment ] >>> eqipment

# ===================================================

# Advancement Detect ;Run Function

scoreboard players add @s armor.radiant_guardians_helmet.cd 0
scoreboard players reset @s armor.radiant_guardians_helmet.effect.cd

playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1

advancement revoke @s only armors:type/radiant_guardians_helmet/eqipment