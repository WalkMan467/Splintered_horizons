# ===================================================
# Finality Chestplate Main Function

    ## Guide [ function armors:type/finality_chestplate/effect/timer ] >>> Effect Timer
    ## Guide [ function armors:type/finality_chestplate/use ] >>> Finality Chestplate Armor Use
    ## Guide [ function armors:type/finality_chestplate/effect/guide ] >>> Effect Guide
    ## Guide [ function armors:type/finality_chestplate/effect/reset ] >>> Effect Clear

# ===================================================
# Detect Effect Timer ; Execute the Function

scoreboard players reset @s armor.finality_chestplate.effect.timer

attribute @s attack_damage modifier remove armor.finality_chestplate.effect.timer