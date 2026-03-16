scoreboard players add @s monster.segrina.skill.1.casting 1

execute \
    if score @s monster.segrina.skill.1.casting matches 1 run \
function monsters:chapter_2/segrina/1/0

execute \
    if score @s monster.segrina.skill.1.casting matches 20 run \
function monsters:chapter_2/segrina/1/1

execute \
    if score @s monster.segrina.skill.1.casting matches 20.. run \
function monsters:chapter_2/segrina/1/end