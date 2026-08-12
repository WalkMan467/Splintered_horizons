
execute \
    if score @s sys.skills_freeze matches 0.. run \
    return run \
function monsters:chapter_2/apostle_of_eternity/cast/end

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_2/apostle_of_eternity/cast/end

execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_2/apostle_of_eternity/1/0

execute \
    if score @s monster.skill.casting matches 1..100 \
    unless score @p[distance=..4,sort=arbitrary] monster.apostle_of_eternity.lock.timer matches 1.. run \
function monsters:chapter_2/apostle_of_eternity/cast/end

execute \
    if score @s monster.skill.casting matches 100.. run \
function monsters:chapter_2/apostle_of_eternity/cast/end