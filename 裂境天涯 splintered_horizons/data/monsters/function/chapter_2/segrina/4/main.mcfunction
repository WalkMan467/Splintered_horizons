scoreboard players add @s monster.segrina.skill.4.casting 1

execute \
    if score @s monster.segrina.skill.4.casting matches 1 run \
function monsters:chapter_2/segrina/4/0

execute \
    if score @s monster.segrina.skill.4.casting matches 40 run \
function monsters:chapter_2/segrina/4/1

execute \
    if score @s monster.segrina.skill.4.casting matches 300.. run \
function monsters:chapter_2/segrina/4/2

execute \
    if score @s monster.segrina.skill.4.casting matches 40..301 \
    as @a at @s run \
function monsters:chapter_2/segrina/4/7

execute \
    if score @s monster.segrina.skill.4.casting matches 300.. run \
function monsters:chapter_2/segrina/4/end