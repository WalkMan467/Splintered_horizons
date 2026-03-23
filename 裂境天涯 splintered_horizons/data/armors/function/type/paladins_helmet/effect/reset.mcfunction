# ===================================================
# Paladins Helmet Main Function

    ## Guide [ function armors:type/paladins_helmet/effect/reset ] >>> Reset
    ## Guide [ function armors:type/paladins_helmet/use ] >>> Detect Sneak ;Call Function
    ## Guide [ function armors:type/paladins_helmet/effect/timer ] >>> Timer
    ## Guide [ function armors:type/paladins_helmet/effect/guide ] >>> Timer Guide
# ===================================================
# This Function: effect/reset

# Detect Effect Timer ; Execute the Function

scoreboard players reset @s armor.paladins_helmet.effect.timer

attribute @s armor_toughness modifier remove armor.paladins_helmet.effect.timer