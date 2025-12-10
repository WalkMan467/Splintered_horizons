title @s title ["",{"text":"🏰","color":"dark_purple"},{"translate":"world_area.icon.other.hasanor","underlined":true,"color":"dark_purple"},{"text":"🏰","color":"dark_purple"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"world_area.hidden_area","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

stopsound @s voice minecraft:ambient.cave
playsound minecraft:ambient.cave voice @s ~ ~1 ~ 1 2

function music:other/hasanor/start

advancement revoke @s only world_area:other/hasanor/out