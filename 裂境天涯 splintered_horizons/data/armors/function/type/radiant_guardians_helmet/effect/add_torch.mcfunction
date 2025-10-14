scoreboard players set @s armor.radiant_guardians_helmet.effect.cd 100

execute store result score #have.torch? global.main run clear @s #torchs 0
execute unless score #have.torch? global.main matches 1.. run return 0
execute unless block ~ ~ ~ #air run return 0
execute if block ~ ~-1 ~ #air run return 0 
execute if entity @s[gamemode=!adventure,gamemode=!survival] run return 0 

setblock ~ ~ ~ torch
clear @s #torchs 1
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 10 normal @a

scoreboard players set @s armor.helmet.effect.actived 2