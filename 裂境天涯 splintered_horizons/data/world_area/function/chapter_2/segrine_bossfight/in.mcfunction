tag @s add world_area.segrine_bossfight

title @s title ["",{"text":"☀","color":"#16d69d"},{"translate":"world_area.icon.main.bossfight_area","underlined":true,"color":"#16d69d"},{"text":"☀","color":"#16d69d"}]
title @s subtitle [{"translate":"monsters.segrina","underlined":false,"color":"gold","bold":true}]
title @s times 20 20 10


playsound minecraft:voice.elden_ring_new_location voice @s ~ ~1 ~ 1 1

advancement revoke @s only world_area:chapter_2/segrine_bossfight/out