
execute \
    if score @s monster.skill.freeze matches 0.. run \
function monsters:chapter_1/explosion_arrow_skeleton/cast/end

execute \
    if score @s monster.skill.freeze matches 0.. run \
return 0


execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_1/explosion_arrow_skeleton/1/0


execute \
    if score @s monster.skill.casting matches 160 run \
function monsters:chapter_1/explosion_arrow_skeleton/1/1