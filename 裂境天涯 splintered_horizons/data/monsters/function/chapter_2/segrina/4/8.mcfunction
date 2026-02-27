execute \
    if score #boss_area.chapter_2.segrina global.main matches 1.. run \
return 0

scoreboard players reset @s monster.segrina.skill.4.invincible
execute \
    as @a run \
function monsters:chapter_2/segrina/4/7