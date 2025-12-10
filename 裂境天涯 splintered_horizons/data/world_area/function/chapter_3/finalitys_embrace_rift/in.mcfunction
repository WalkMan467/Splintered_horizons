advancement revoke @s only world_area:chapter_3/finalitys_embrace_rift/out

title @s title ["",{"text":"","font":"minecraft:icon","color":"red",shadow_color:0},{"translate":"world_area.icon.chapter_3.finalitys_embrace_rift","underlined":true,"color":"dark_red"},{"text":"","font":"minecraft:icon","color":"red",shadow_color:0}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_3","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

stopsound @s voice minecraft:entity.creaking.death
stopsound @s voice minecraft:entity.creaking.spawn

scoreboard players set #rdm_enchantment global.main 18

function music:chapter_3/finalitys_embrace_rift/start

playsound minecraft:entity.creaking.death voice @s ~ ~1 ~ 1 0.5
playsound minecraft:entity.creaking.spawn voice @s ~ ~1 ~ 1 0.5