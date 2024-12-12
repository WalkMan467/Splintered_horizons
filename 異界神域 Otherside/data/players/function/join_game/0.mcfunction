title @s times 0 20 40
title @s title {"text":"\uE000"}

function music:reset

playsound minecraft:voice.join_game voice @s ~ ~1 ~ 3 1

stopsound @s voice minecraft:voice.in_world_area

scoreboard players set @s player.leave_game 0