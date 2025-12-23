
execute store result score #hp sys.dmg_show.main run data get entity @s Health 1000
execute store result score #hp2 sys.dmg_show.main run data get entity @s AbsorptionAmount 1000

scoreboard players operation @s sys.dmg_show.hpmax = #hp sys.dmg_show.main
scoreboard players operation @s sys.dmg_show.hpmax += #hp2 sys.dmg_show.main
