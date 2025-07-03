# ===================================================
# Armors Main Function

    ## Guide [ function armors:loop ] >>> Armors Main Loop
    ## Guide [ function armors:reload_rpg_armor_effect ] >>> Reload Armor Effect And Detect
    ## Guide [ function armors:type/scoreboard ] >>> Armors Scoreboard
    ## Guide [ function armors:type/timer_s ] >>> Armors 1s Timer
    ## Guide [ function armors:type/timer_t ] >>> Armors 1t Timer

# ===================================================

execute as @s[scores={armor.black_hole.boots.effect=1}] at @s positioned ~ ~-1 ~ run function armors:type/black_hole/boots/effect/use

execute if items entity @s armor.feet *[custom_data~{black_hole:1b} | custom_data={black_hole:1}] run advancement grant @s only armors:type/black_hole/boots/eqipment
execute unless items entity @s armor.feet *[custom_data~{black_hole:1b} | custom_data={black_hole:1}] run advancement grant @s only armors:type/black_hole/boots/take_off

execute if score @s armor.black_hole.boots.active matches 1.. unless score @s armor.black_hole.boots.cd matches 1.. run function armors:type/black_hole/boots/main
function armors:type/tai_chis_shadow/main

function armors:timer