title @s title ["",{"text":"☀","color":"gold"},{"text":"營火","underlined":true,"color":"gold"},{"text":"☀","color":"gold"}]
title @s subtitle [{"text":"☀","color":"gold"},{"text":"Campfire","italic":true,"underlined":true,"color":"gold"},{"text":"☀","color":"gold"}]
title @s times 20 20 20

playsound minecraft:voice.join_game voice @s ~ ~1 ~ 0.5 1


tag @s add campfire
function music:main/campfire/start

execute at @n[tag=system.campfire.chapter_1.1] run spawnpoint @s ~ ~ ~1.5

advancement revoke @s only world_area:main/campfire/out