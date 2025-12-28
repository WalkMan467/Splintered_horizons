# 執行者 : boss


execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/lord_of_the_cataclysm/2/1

execute \
    if score @s monster.skill.casting matches 41 run \
function monsters:chapter_3/lord_of_the_cataclysm/2/2

execute \
    if score @s monster.skill.casting matches 61 run \
function monsters:chapter_3/lord_of_the_cataclysm/2/3


execute \
    if score @s monster.skill.casting matches 61.. run \
function monsters:chapter_3/lord_of_the_cataclysm/cast/end