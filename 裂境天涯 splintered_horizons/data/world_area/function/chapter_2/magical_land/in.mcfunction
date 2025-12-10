title @s title ["",{"text":"۞","color":"#ea07ff"},{"translate":"world_area.icon.chapter_2.magical_land","underlined":true,"color":"#ea07ff"},{"text":"۞","color":"#ea07ff"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_2","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

stopsound @s voice minecraft:entity.allay.ambient_with_item
playsound minecraft:entity.allay.ambient_with_item voice @s ~ ~1 ~ 1 0.75

scoreboard players set #rdm_enchantment global.main 15

advancement revoke @s only world_area:chapter_2/magical_land/out