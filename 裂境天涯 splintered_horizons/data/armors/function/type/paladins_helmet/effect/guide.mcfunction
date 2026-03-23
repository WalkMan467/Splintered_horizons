# ===================================================
# Paladins Helmet Main Function

    ## Guide [ function armors:type/paladins_helmet/effect/guide ] >>> Timer Guide
    ## Guide [ function armors:type/paladins_helmet/use ] >>> Detect Sneak ;Call Function
    ## Guide [ function armors:type/paladins_helmet/effect/timer ] >>> Timer
    ## Guide [ function armors:type/paladins_helmet/effect/reset ] >>> Reset
# ===================================================
# This Function: effect/guide

# Atk dmg Buff Timer Guide

scoreboard players remove @s armor.paladins_helmet.effect.timer 1

attribute @s armor_toughness modifier add armor.paladins_helmet.effect.timer 3 add_value