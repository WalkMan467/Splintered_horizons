scoreboard players add @s monster.segrina.skill.2.casting 1


execute \
    if score @s monster.segrina.skill.2.casting matches 1 run \
function monsters:chapter_2/segrina/2/0

execute \
    if score @s monster.segrina.skill.2.casting matches 40 run \
function monsters:chapter_2/segrina/2/1

execute \
    if score @s monster.segrina.skill.2.casting matches 40.. \
    as @p[sort=arbitrary,distance=0..,tag=monster.segrina.skill.2.raycast.player] at @s run \
function monsters:chapter_2/segrina/2/2

execute \
    if score @s monster.segrina.skill.2.casting matches 240.. run \
function monsters:chapter_2/segrina/2/end