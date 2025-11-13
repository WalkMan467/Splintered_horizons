scoreboard players add @s player.detect.death 0
execute unless score @s player.detect.death matches 1.. run return 0

scoreboard players reset @s player.detect.air
advancement grant @s only players:elytra_switch/false

tag @s add forced_interrupt_animation
function #players:detect/death

particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.5 20 normal @a
playsound minecraft:entity.wither.spawn voice @a ~ ~1 ~ 0.5 2

scoreboard players add @s player.death_count 1

title @s title [{"translate":"tips.player_death.1","fallback":"死","color":"dark_red","bold":true,"font":"minecraft:default"},{"text":"\uE000","font":"minecraft:space"},{"text":"\uE000","font":"minecraft:icon","shadow_color":1,"bold":false,"color":"white"},{"text":"\uE000","font":"minecraft:space"},{"translate":"tips.player_death.2","fallback":"亡","color":"dark_red","bold":true,"font":"minecraft:default"}]
title @s times 20 60 20

tag @s add player.death
execute if score @s player.death_count matches ..60 run title @s subtitle [{"translate":"tips.player_death.3","color":"white"},{"text":": "},{"score":{name:"@s",objective:"player.death_count"},"color":"white"}]
execute if score @s player.death_count matches 60..80 run title @s subtitle [{"translate":"tips.player_death.3","color":"white"},{"text":": "},{"score":{name:"@s",objective:"player.death_count"},"color":"yellow"}]
execute if score @s player.death_count matches 80..100 run title @s subtitle [{"translate":"tips.player_death.3","color":"white"},{"text":": "},{"score":{name:"@s",objective:"player.death_count"},"color":"gold"}]
execute if score @s player.death_count matches 100..120 run title @s subtitle [{"translate":"tips.player_death.3","color":"white"},{"text":": "},{"score":{name:"@s",objective:"player.death_count"},"color":"red"}]
execute if score @s player.death_count matches 120.. run title @s subtitle [{"translate":"tips.player_death.3","color":"white"},{"text":": "},{"score":{name:"@s",objective:"player.death_count"},"color":"dark_red"}]

scoreboard objectives setdisplay sidebar player.death_count
scoreboard objectives setdisplay list player.death_count

effect give @s blindness 5 255 true
effect give @s darkness 5 255 true

scoreboard players set @s player.detect.death 0