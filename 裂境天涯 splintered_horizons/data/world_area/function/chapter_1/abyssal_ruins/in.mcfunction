title @s title ["",{"text":"☠","color":"dark_red"},{"text":"深淵之墟","underlined":true,"color":"dark_red"},{"text":"☠","color":"dark_red"}]
title @s subtitle [{"text":"☠","color":"dark_red"},{"text":"Abyssal Ruins","italic":true,"underlined":true,"color":"dark_red"},{"text":"☠","color":"dark_red"}]
title @s times 20 20 20

attribute @s safe_fall_distance modifier add world_area.chapter_1.abyssal_ruins 1024 add_value

stopsound @s record

playsound minecraft:entity.wither.spawn voice @s ~ ~ ~ 1 1


execute if score #boss.chapter_1.walkman global.main matches 1 positioned -2 -55 -38 run function monsters:summon/chapter_1/walkman
execute if entity @n[tag=chapter_1.walkman,limit=1] run scoreboard players set @s music.chapter1.abyssal_ruins 2
execute unless entity @n[tag=chapter_1.walkman,limit=1] run scoreboard players set @s music.chapter1.abyssal_ruins 0

advancement revoke @s only world_area:chapter_1/abyssal_ruins/out