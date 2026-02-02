title @s title ["",{"text":"🌧","color":"gold"},{"translate":"world_area.icon.chapter_1.broken_city","underlined":true,"color":"gold"},{"text":"🌧","color":"gold"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_1","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

playsound minecraft:voice.in_world_area voice @s ~ ~1 ~ 1 1

scoreboard players set #rdm_enchantment global.main 1

advancement grant @s only music:chapter_1/broken_city/icon
function music:chapter_1/broken_city/start

advancement revoke @s only world_area:chapter_1/broken_city/out