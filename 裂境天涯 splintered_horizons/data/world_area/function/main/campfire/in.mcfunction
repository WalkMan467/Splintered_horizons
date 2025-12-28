title @s title ["",{"text":"☀","color":"gold"},{"translate":"block.minecraft.campfire","underlined":true,"color":"gold"},{"text":"☀","color":"gold"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"world_area.respawn_point","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]

title @s times 20 20 10

stopsound @s voice minecraft:voice.join_game
playsound minecraft:voice.join_game voice @s ~ ~1 ~ 0.5 1


tag @s add campfire

execute \
    if entity @n[tag=campfire.darkness,limit=1,distance=..6,type=minecraft:interaction] run \
tag @s add campfire.darkness

function music:stop

function music:main/campfire/start

advancement grant @s only music:main/campfire/icon

advancement revoke @s only world_area:main/campfire/out