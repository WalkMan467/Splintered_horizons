
execute if score @s mob-ab-late > @s mob-ab store result score @s ab-math run scoreboard players operation @s mob-ab-late-math -= @s mob-ab-math
execute if score @s mob-ab > @s mob-ab-late store result score @s ab-math run scoreboard players operation @s mob-ab-math -= @s mob-ab-late-math
execute store result storage hpmath abmath int 1 run scoreboard players get @s ab-math

execute if score @s mob-ab > @s mob-ab-late at @s run function damage_list:abtext with storage hpmath
execute if score @s mob-ab-late > @s mob-ab at @s run function damage_list:abhurt with storage hpmath

tag @s remove ab-math