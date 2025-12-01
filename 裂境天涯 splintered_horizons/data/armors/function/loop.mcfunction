# ===================================================
# Armors Main Function

    ## Guide [ function armors:loop ] >>> Armors Main Loop
    ## Guide [ function armors:reload_rpg_armor_effect ] >>> Reload Armor Effect And Detect
    ## Guide [ function armors:type/scoreboard ] >>> Armors Scoreboard
    ## Guide [ function armors:type/timer_s ] >>> Armors 1s Timer
    ## Guide [ function armors:type/timer_t ] >>> Armors 1t Timer

# ===================================================

scoreboard players add @s armor.black_hole.boots.cd 0

execute as @s[scores={armor.black_hole.boots.effect=1}] at @s positioned ~ ~-1 ~ run function armors:type/black_hole/boots/effect/use

execute if items entity @s armor.feet *[custom_data~{black_hole:1b} | custom_data={black_hole:1}] run advancement grant @s only armors:type/black_hole/boots/eqipment
execute unless item entity @s armor.feet *[custom_data~{black_hole:1b} | custom_data={black_hole:1}] run advancement grant @s only armors:type/black_hole/boots/take_off

execute if items entity @s armor.head *[custom_data~{radiant:1b} | custom_data={radiant:1}] run advancement grant @s only armors:type/radiant_guardians_helmet/eqipment
execute unless item entity @s armor.head *[custom_data~{radiant:1b} | custom_data={radiant:1}] run advancement grant @s only armors:type/radiant_guardians_helmet/take_off

execute if items entity @s armor.legs *[custom_data~{windriders:1b} | custom_data={windriders:1}] run advancement grant @s only armors:type/windriders_legplates/eqipment
execute unless item entity @s armor.legs *[custom_data~{windriders:1b} | custom_data={windriders:1}] run advancement grant @s only armors:type/windriders_legplates/take_off

function armors:type/radiant_guardians_helmet/main

function armors:type/tai_chis_shadow/main
function armors:type/black_hole/animation/boots/main


# ===================================================

# Equipment Activate Detection

    # helmet = This equipment's skill trigger condition is bound to activate after the helmet skill is triggered.
    # chestplate = This equipment's skill trigger condition is bound to activate after the chestplate skill is triggered.
    # leggings = This equipment's skill trigger condition is bound to activate after the leggings skill is triggered.
    # boots = This equipment's skill trigger condition is bound to activate after the boots skill is triggered.

# ===================================================

execute if score @s armor.helmet.effect.actived matches 1.. run function #armors:helmet
execute if score @s armor.chestplate.effect.actived matches 1.. run function #armors:chestplate
execute if score @s armor.leggings.effect.actived matches 1.. run function #armors:leggings
execute if score @s armor.boots.effect.actived matches 1.. run function #armors:boots

# ===================================================