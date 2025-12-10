title @s title ["",{"text":"⦾","color":"dark_purple"},{"translate":"world_area.icon.other.abyss_forest","underlined":true,"color":"dark_purple"},{"text":"⦾","color":"dark_purple"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"world_area.hidden_area","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

stopsound @s voice minecraft:entity.warden.nearby_closer
stopsound @s voice minecraft:entity.warden.nearby_closest
stopsound @s voice minecraft:entity.warden.nearby_closer
stopsound @s voice minecraft:entity.warden.heartbeat

playsound minecraft:entity.warden.nearby_closer voice @s ~ ~1 ~ 1 1
playsound minecraft:entity.warden.nearby_closest voice @s ~ ~1 ~ 1 1
playsound minecraft:entity.warden.nearby_closer voice @s ~ ~1 ~ 1 1
playsound minecraft:entity.warden.heartbeat voice @s ~ ~1 ~ 1 1

advancement revoke @s only world_area:other/abyss_forest/out