# ===================================================
# Armors Main Function

    ## Guide [ function armors:loop ] >>> Armors Main Loop
    ## Guide [ function armors:reload_rpg_armor_effect ] >>> Reload Armor Effect And Detect
    ## Guide [ function armors:type/scoreboard ] >>> Armors Scoreboard
    ## Guide [ function armors:type/timer_s ] >>> Armors 1s Timer
    ## Guide [ function armors:type/timer_t ] >>> Armors 1t Timer

# ===================================================

scoreboard players remove @a[scores={armor.black_hole.boots.effect=1..}] armor.black_hole.boots.effect 1

scoreboard players remove @a[scores={armor.helmet.effect.actived=1..}] armor.helmet.effect.actived 1
scoreboard players remove @a[scores={armor.chestplate.effect.actived=1..}] armor.chestplate.effect.actived 1
scoreboard players remove @a[scores={armor.leggings.effect.actived=1..}] armor.leggings.effect.actived 1
scoreboard players remove @a[scores={armor.boots.effect.actived=1..}] armor.boots.effect.actived 1