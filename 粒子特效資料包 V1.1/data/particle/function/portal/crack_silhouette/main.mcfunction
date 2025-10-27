
scoreboard players add @s mob.duration 1

tp @s ~ ~0.2 ~

# opacity
execute if score @s mob.duration matches ..9 run scoreboard players set #opacity mob.main 255
execute if score @s mob.duration matches 10 run scoreboard players set #opacity mob.main 255
execute if score @s mob.duration matches 11 run scoreboard players set #opacity mob.main 229
execute if score @s mob.duration matches 12 run scoreboard players set #opacity mob.main 204
execute if score @s mob.duration matches 13 run scoreboard players set #opacity mob.main 178
execute if score @s mob.duration matches 14 run scoreboard players set #opacity mob.main 153
execute if score @s mob.duration matches 15 run scoreboard players set #opacity mob.main 127
execute if score @s mob.duration matches 16 run scoreboard players set #opacity mob.main 102
execute if score @s mob.duration matches 17 run scoreboard players set #opacity mob.main 76
execute if score @s mob.duration matches 18 run scoreboard players set #opacity mob.main 50
execute if score @s mob.duration matches 19 run scoreboard players set #opacity mob.main 25
execute if score @s mob.duration matches 20 run scoreboard players set #opacity mob.main 25
execute store result entity @s text_opacity int 1 run scoreboard players get #opacity mob.main
execute on passengers store result entity @s text_opacity int 1 run scoreboard players get #opacity mob.main

execute if score @s mob.duration matches 20.. run function particle:portal/void