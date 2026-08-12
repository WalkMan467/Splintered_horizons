scoreboard players set #rdm_enchantment global.main 7
advancement revoke @s only world_area:chapter_1/the_black_hole/out
function music:chapter_1/broken_city/start

execute \
    if entity @s[tag=sys.exclude_display_world_area_title] run \
return 0

execute \
    if score @s sys.exclude_display_world_area_title matches 0.. run \
return 0

title @s title ["",{"text":"⦾","color":"dark_purple"},{"translate":"world_area.icon.chapter_1.the_black_hole","underlined":true,"color":"dark_purple"},{"text":"⦾","color":"dark_purple"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_1","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

playsound minecraft:entity.wither.spawn voice @s ~ ~1 ~ 0.25 0.75