# ===================================================
# eqipment

    ## Guide [ function armors:type/radiant_guardians_helmet/eqipment ] >>> eqipment
    ## Guide [ function armors:type/radiant_guardians_helmet/use ] >>> use
    ## Guide [ function armors:type/radiant_guardians_helmet/take_off ] >>> take off

# ===================================================

# Advancement Detect ;Run Function

advancement revoke @s only armors:type/radiant_guardians_helmet/take_off

scoreboard players add @s armor.radiant_guardians_helmet.cd 0
scoreboard players set @a armor.radiant_guardians_helmet.effect.cd 100