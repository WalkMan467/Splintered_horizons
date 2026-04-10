title @s title ["",{"text":":♋⏱:","color":"yellow"},{"translate":"world_area.icon.chapter_2.garden_of_time_space_rifts","underlined":true,"color":"yellow"},{"text":":⏱♋:","color":"yellow"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_2","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

stopsound @s voice minecraft:block.bell.resonate
stopsound @s voice minecraft:item.trident.thunder
stopsound @s voice minecraft:block.beacon.deactivate

playsound minecraft:block.bell.resonate voice @s ~ ~1 ~ 1 1
playsound minecraft:item.trident.thunder voice @s ~ ~1 ~ 0.5 0.5
playsound minecraft:block.beacon.deactivate voice @s ~ ~1 ~ 1 0.75
playsound minecraft:block.bell.resonate voice @s ~ ~1 ~ 1 0.5

scoreboard players set #rdm_enchantment global.main 20

advancement grant @s only music:chapter_2/garden_of_time_space_rifts/icon


advancement revoke @s only world_area:chapter_2/garden_of_time_space_rifts/out