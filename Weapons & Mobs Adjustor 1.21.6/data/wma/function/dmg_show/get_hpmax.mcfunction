
execute store result score #hp wma.main run data get entity @s Health 1000
execute store result score #hp2 wma.main run data get entity @s AbsorptionAmount 1000

scoreboard players operation @s wma.hpmax = #hp wma.main
scoreboard players operation @s wma.hpmax += #hp2 wma.main
