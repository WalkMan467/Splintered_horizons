# ===================================================
# Armors Main Function

    ## Guide [ function armors:loop ] >>> Armors Main Loop
    ## Guide [ function armors:reload_rpg_armor_effect ] >>> Reload Armor Effect And Detect
    ## Guide [ function armors:type/scoreboard ] >>> Armors Scoreboard
    ## Guide [ function armors:type/timer_s ] >>> Armors 1s Timer
    ## Guide [ function armors:type/timer_t ] >>> Armors 1t Timer

# ===================================================

scoreboard players remove @a[scores={armor.black_hole.boots.cd=1..}] armor.black_hole.boots.cd 1
scoreboard players remove @a[scores={armor.armor_of_the_coiled_rock.cd=1..}] armor.armor_of_the_coiled_rock.cd 1
scoreboard players remove @a[scores={armor.finality_chestplate.cd=1..}] armor.finality_chestplate.cd 1

execute as @a at @s run function armors:type/finality_chestplate/effect/timer

tellraw @a[scores={armor.black_hole.boots.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"armor.black_hole_boots","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
execute as @a[scores={armor.black_hole.boots.cd=1}] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 1.5

tellraw @a[scores={armor.armor_of_the_coiled_rock.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"armor.armor_of_the_coiled_rock","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
execute as @a[scores={armor.armor_of_the_coiled_rock.cd=1}] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 1.5

tellraw @a[scores={armor.finality_chestplate.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"armor.finality_chestplate","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
execute as @a[scores={armor.finality_chestplate.cd=1}] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 1.5

schedule function armors:timer_s 1s