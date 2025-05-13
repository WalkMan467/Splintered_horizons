
execute if score @s mob-hp-late > @s mob-hp store result score @s hp-math run scoreboard players operation @s mob-hp-late-math -= @s mob-hp-math
execute if score @s mob-hp > @s mob-hp-late store result score @s hp-math run scoreboard players operation @s mob-hp-math -= @s mob-hp-late-math
execute store result storage hpmath hpmath int 1 run scoreboard players get @s hp-math

execute if score @s mob-hp > @s mob-hp-late at @s run function damage_list:healingtext with storage hpmath
execute if score @s mob-hp-late > @s mob-hp at @s run function damage_list:hurttext with storage hpmath

tag @s remove hp-math