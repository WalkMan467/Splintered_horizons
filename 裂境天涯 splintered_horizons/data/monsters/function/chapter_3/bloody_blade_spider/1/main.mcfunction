function monsters:chapter_3/bloody_blade_spider/cast/end

execute \
    if score @s sys.silence matches 1.. run \
return 0

execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/bloody_blade_spider/1/0