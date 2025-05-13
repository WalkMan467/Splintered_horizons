    
execute store result score @s mob-ab run data get entity @s AbsorptionAmount
execute store result score @s mob-ab-math run scoreboard players get @s mob-ab
execute unless score @s mob-ab = @s mob-ab-late run tag @s add ab-math

execute store result score @s mob-hp run data get entity @s Health
execute store result score @s mob-hp-math run scoreboard players get @s mob-hp
execute unless score @s mob-hp = @s mob-hp-late run tag @s add hp-math

execute if entity @s[tag=ab-math] run function damage_list:abmath
execute if entity @s[tag=hp-math] run function damage_list:hpmath

scoreboard players operation @s mob-ab-late = @s mob-ab
scoreboard players operation @s mob-ab-late-math = @s mob-ab-late

scoreboard players operation @s mob-hp-late = @s mob-hp
scoreboard players operation @s mob-hp-late-math = @s mob-hp-late