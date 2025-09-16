
execute unless score @s wma.hpmax matches -2147483648..2147483647 run function wma:dmg_show/get_hpmax

execute store result score #hp wma.main run data get entity @s Health 1000
execute store result score #hp2 wma.main run data get entity @s AbsorptionAmount 1000
scoreboard players operation #hp wma.main += #hp2 wma.main

execute unless score @s wma.hpmax = #hp wma.main run function wma:dmg_show/use