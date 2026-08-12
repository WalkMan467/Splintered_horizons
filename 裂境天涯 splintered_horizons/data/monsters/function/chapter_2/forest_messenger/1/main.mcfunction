
execute \
    if score @s sys.skills_freeze matches 0.. run \
function monsters:chapter_2/forest_messenger/1/1

execute \
    if score @s sys.skills_freeze matches 0.. run \
return 0

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_2/forest_messenger/cast/end


execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_2/forest_messenger/1/0

execute \
    if score @s monster.skill.casting matches 1.. run \
function monsters:chapter_2/forest_messenger/1/detect


execute \
    if score @s monster.skill.casting matches 200.. run \
function monsters:chapter_2/forest_messenger/1/1