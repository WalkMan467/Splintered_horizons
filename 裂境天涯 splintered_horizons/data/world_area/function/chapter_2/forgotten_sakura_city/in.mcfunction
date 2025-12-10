title @s title ["",{"text":"❀","color":"#64ad18"},{"translate":"world_area.icon.chapter_2.forgotten_sakura_city","underlined":true,"color":"#64ad18"},{"text":"❀","color":"#64ad18"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_2","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

stopsound @s voice minecraft:voice.flute
playsound minecraft:voice.flute voice @s ~ ~1 ~ 0.5 2

function music:chapter_2/forgotten_sakura_city/start

scoreboard players set #rdm_enchantment global.main 12

advancement grant @s only music:chapter_2/forgotten_sakura_city/icon

advancement revoke @s only world_area:chapter_2/forgotten_sakura_city/out