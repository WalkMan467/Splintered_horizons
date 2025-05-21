title @s title ["",{"text":"☀","color":"dark_aqua"},{"translate":"world_area.icon.main.safe_zone","underlined":true,"color":"dark_aqua"},{"text":"☀","color":"dark_aqua"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_2","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 20

stopsound @s voice minecraft:voice.join_game
playsound minecraft:voice.join_game voice @s ~ ~1 ~ 0.5 1

function music:main/safe_zone/start

advancement revoke @s only world_area:main/safe_zone/out