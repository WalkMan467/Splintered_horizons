# ===================================================
# Radiant Guardians Helmet Main Function

    ## Guide [ function armors:type/radiant_guardians_helmet/main ] >>> Main Function
    ## Guide [ function armors:type/radiant_guardians_helmet/use ] >>> Detect use
    ## Guide [ function armors:type/radiant_guardians_helmet/eqipment ] >>> Eqipment
    ## Guide [ function armors:type/radiant_guardians_helmet/take_off ] >>> Take Off
    ## Guide [ function armors:type/radiant_guardians_helmet/add_torch ] >>> Add Torch
    ## Guide [ function armors:type/radiant_guardians_helmet/guide ] >>> Function Guide
    ## Guide [ function armors:type/radiant_guardians_helmet/effect/add_torch ] >>> Passive Auto Place Torch

# ===================================================
# Main Function

execute if score @s armor.radiant_guardians_helmet.effect.cd matches 0 if items entity @s armor.head *[custom_data~{radiant:1b}] run function armors:type/radiant_guardians_helmet/effect/add_torch
execute as @n[tag=armors.radiant_guardians_helmet.torch,type=item] at @s unless block ~ ~-1 ~ #penetrate run function armors:type/radiant_guardians_helmet/guide