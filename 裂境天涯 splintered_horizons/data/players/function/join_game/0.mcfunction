title @s times 0 20 40
title @s title {"text":"\uE000","font":"minecraft:screen"}


playsound minecraft:voice.join_game voice @s ~ ~1 ~ 3 1

stopsound @s voice minecraft:voice.in_world_area

team join team.player @a

scoreboard players set @s player.leave_game 0

function music:reset