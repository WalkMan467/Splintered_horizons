title @s title ["",{"text":"❀","color":"#64ad18"},{"translate":"world_area.icon.chapter_2.forgotten_sakura_city","underlined":true,"color":"#64ad18"},{"text":"❀","color":"#64ad18"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_2","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 20

playsound minecraft:block.beacon.deactivate voice @s ~ ~1 ~ 0.5 0.5

function music:chapter_2/forgotten_sakura_city/start

advancement grant @s only music:chapter_2/forgotten_sakura_city/icon

advancement revoke @s only world_area:chapter_2/forgotten_sakura_city/out