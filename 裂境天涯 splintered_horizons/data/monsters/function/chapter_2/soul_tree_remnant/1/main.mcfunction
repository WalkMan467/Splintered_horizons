
execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s monster.skill.silence matches 1.. run \
function monsters:chapter_2/soul_tree_remnant/cast/end

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s monster.skill.silence matches 1.. run \
return 0


execute \
    if score @s monster.skill.casting matches 1 run \
effect give @s levitation 5 1 false

execute \
    if score @s monster.skill.casting matches 1 run \
effect give @s slow_falling 8 255 true

execute \
    if score @s monster.skill.casting matches 1 run \
playsound minecraft:entity.breeze.wind_burst voice @a ~ ~1 ~ 1 0.5


execute \
    if score @s monster.skill.casting matches 1.. run \
particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 1 normal @a

execute \
    if score @s monster.skill.casting matches 1.. run \
particle ominous_spawning ~ ~0.5 ~ 0.5 1 0.5 0 5 normal @a


execute \
    if score @s monster.skill.casting matches 160.. run \
function monsters:chapter_2/soul_tree_remnant/cast/end