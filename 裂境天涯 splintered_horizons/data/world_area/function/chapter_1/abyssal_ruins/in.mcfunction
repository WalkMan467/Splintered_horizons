title @s title ["",{"text":"☠","color":"dark_red"},{"translate":"world_area.icon.chapter_1.abyssal_ruins","underlined":true,"color":"dark_red"},{"text":"☠","color":"dark_red"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_1","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 20

attribute @s safe_fall_distance modifier add world_area.chapter_1.abyssal_ruins 1024 add_value

playsound minecraft:block.respawn_anchor.charge voice @s ~ ~ ~ 1 1

advancement revoke @s only world_area:chapter_1/abyssal_ruins/out