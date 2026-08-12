function music:chapter_1/abyssal_ruins/start
advancement revoke @s only world_area:chapter_1/abyssal_ruins/out
advancement grant @s only music:chapter_1/abyssal_ruins/title

execute \
    if entity @s[tag=sys.exclude_display_world_area_title] run \
return 0

execute \
    if score @s sys.exclude_display_world_area_title matches 0.. run \
return 0

title @s title ["",{"text":"☠","color":"dark_red"},{"translate":"world_area.icon.chapter_1.abyssal_ruins","underlined":true,"color":"dark_red"},{"text":"☠","color":"dark_red"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_1","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 10

playsound minecraft:block.respawn_anchor.charge voice @s ~ ~ ~ 1 1

scoreboard players set #rdm_enchantment global.main 3