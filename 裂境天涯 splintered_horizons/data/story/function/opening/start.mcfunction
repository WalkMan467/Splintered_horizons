advancement revoke @a only story:opening/4/tips

scoreboard players set @s player.spawnpoint.dimension 3
scoreboard players set @s player.spawnpoint.pos.x 157600
scoreboard players set @s player.spawnpoint.pos.y 6000
scoreboard players set @s player.spawnpoint.pos.z 34000

execute \
    in world_area:main/game_lobby run \
tp @s 1576 60 340 180 0

title @s title {"text":"\uE000","font":"minecraft:screen"}
title @s subtitle ""
title @s times 0 20 40

playsound minecraft:voice.join_game voice @s ~ ~1 ~ 3 1
scoreboard objectives setdisplay sidebar player.death_count

stopsound @s voice minecraft:voice.in_world_area

function players:join_game/0

function story:opening/4/reset_spawner