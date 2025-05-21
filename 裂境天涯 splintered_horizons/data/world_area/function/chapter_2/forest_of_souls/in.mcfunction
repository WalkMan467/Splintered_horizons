title @s title ["",{"text":"☀","color":"#16d69d"},{"translate":"world_area.icon.chapter_2.forest_of_souls","underlined":true,"color":"#16d69d"},{"text":"☀","color":"#16d69d"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_2","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 20

playsound minecraft:entity.allay.ambient_without_item voice @s ~ ~1 ~ 1 1

function music:chapter_2/forest_of_souls/start

advancement grant @s only music:chapter_2/forest_of_souls/icon


advancement revoke @s only world_area:chapter_2/forest_of_souls/out