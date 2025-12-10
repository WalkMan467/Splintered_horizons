title @s title ["",{"text":"⦾","color":"dark_purple"},{"translate":"world_area.icon.other.land_of_the_trials","underlined":true,"color":"dark_purple"},{"text":"⦾","color":"dark_purple"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"world_area.hidden_area","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

stopsound @s voice minecraft:block.bell.resonate
stopsound @s voice minecraft:item.trident.thunder

playsound minecraft:block.bell.resonate voice @s ~ ~1 ~ 1 0.5
playsound minecraft:item.trident.thunder voice @s ~ ~1 ~ 1 0.5

advancement revoke @s only world_area:other/land_of_the_trials/out