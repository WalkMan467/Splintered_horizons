title @s times 0 20 40
title @s title {"text":"\uE000","font":"minecraft:screen"}

execute if score #boss.chapter_1.walkman global.main matches 1.. positioned -2 -55 -38 run function monsters:summon/chapter_1/walkman

function music:reset
function trap:reset_trap

playsound minecraft:voice.join_game voice @s ~ ~1 ~ 3 1

stopsound @s voice minecraft:voice.in_world_area

scoreboard players set @s effect.tips.decay 0

scoreboard players set @s player.leave_game 0