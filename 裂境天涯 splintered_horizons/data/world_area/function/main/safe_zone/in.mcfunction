title @s title ["",{"text":"☀","color":"dark_aqua"},{"text":"安全區","underlined":true,"color":"dark_aqua"},{"text":"☀","color":"dark_aqua"}]
title @s subtitle [{"text":"☀","color":"dark_aqua"},{"text":"Safe Zone","italic":true,"underlined":true,"color":"dark_aqua"},{"text":"☀","color":"dark_aqua"}]
title @s times 20 20 20

playsound minecraft:voice.join_game voice @s ~ ~1 ~ 0.5 1

function music:main/safe_zone/start

advancement revoke @s only world_area:main/safe_zone/out