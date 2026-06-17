scoreboard players add @s monster.segrina.skill.1.casting 1

execute \
    if score @s monster.segrina.skill.1.casting matches 1 run \
function bossfight:chapter_2/segrina/skills/1/0

execute \
    if score @s monster.segrina.skill.1.casting matches 20 run \
function bossfight:chapter_2/segrina/skills/1/1

execute \
    if score @s monster.segrina.skill.1.casting matches 20.. run \
function bossfight:chapter_2/segrina/skills/1/5

execute \
    if score @s monster.segrina.skill.1.casting matches 300 run \
function bossfight:chapter_2/segrina/skills/1/7

execute \
    if score @s monster.segrina.skill.1.casting matches 300.. run \
function bossfight:chapter_2/segrina/skills/1/end