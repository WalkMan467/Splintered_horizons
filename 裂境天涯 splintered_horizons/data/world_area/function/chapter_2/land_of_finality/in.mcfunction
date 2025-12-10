title @s title ["",{"text":"","font":"minecraft:icon","color":"red",shadow_color:0},{"translate":"world_area.icon.chapter_2.land_of_finality","underlined":true,"color":"dark_red"},{"text":"","font":"minecraft:icon","color":"red",shadow_color:0}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_2","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

playsound minecraft:block.beacon.deactivate voice @s ~ ~1 ~ 0.5 0.5

function music:chapter_2/land_of_finality/start

scoreboard players set #rdm_enchantment global.main 8

advancement grant @s only music:chapter_2/land_of_finality/icon

advancement revoke @s only world_area:chapter_2/land_of_finality/out