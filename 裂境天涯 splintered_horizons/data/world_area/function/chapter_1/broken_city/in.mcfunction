title @s title ["",{"text":"🌧","color":"gold"},{"translate":"world_area.icon.chapter_1.broken_city","underlined":true,"color":"gold"},{"text":"🌧","color":"gold"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_1","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 20

stopsound @s record
execute store result score @s music.chapter1.broken_city.rdm run random value 1..2
scoreboard players set @s music.chapter1.broken_city 1

playsound minecraft:voice.in_world_area voice @s ~ ~1 ~ 1 1

advancement grant @s only music:chapter_1/broken_city/icon

advancement revoke @s only world_area:chapter_1/broken_city/out