# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/boots/main ] >>> Main Function
    ## Guide [ function armors:type/black_hole/boots/eqipment ] >>> Boots Eqipment
    ## Guide [ function armors:type/black_hole/boots/take_off ] >>> Boots Take Off

# ===================================================
# Advancement Detect ;Run Function

advancement revoke @s only armors:type/black_hole/boots/take_off

scoreboard players add @s armor.black_hole.boots.cd 0
scoreboard players set @a armor.black_hole.boots.active 1