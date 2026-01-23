scoreboard players remove @s[scores={monster.abyss_berserker.passive.cd=0..}] monster.abyss_berserker.passive.cd 1
scoreboard players remove @s[scores={monster.abyss_berserker.passive.timer=0..}] monster.abyss_berserker.passive.timer 1

execute \
    if score @s monster.abyss_berserker.passive.cd matches 0 run \
function monsters:chapter_1/abyss_berserker/passive/reset

execute \
    unless score @s monster.abyss_berserker.passive.cd matches 1.. \
    if score @s monster.abyss_berserker.passive.timer matches 0 run \
function monsters:chapter_1/abyss_berserker/passive/reset