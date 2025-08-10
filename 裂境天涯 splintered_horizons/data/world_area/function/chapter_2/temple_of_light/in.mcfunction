title @s title ["",{"text":"☀","color":"yellow"},{"translate":"world_area.icon.chapter_2.temple_of_light","underlined":true,"color":"white"},{"text":"☀","color":"yellow"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_2","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 20

stopsound @s voice minecraft:entity.allay.ambient_without_item
stopsound @s voice minecraft:block.bell.resonate
playsound minecraft:entity.allay.ambient_without_item voice @s ~ ~1 ~ 1 1
playsound minecraft:block.bell.resonate voice @s ~ ~1 ~ 1 1

advancement revoke @s only world_area:chapter_2/temple_of_light/out