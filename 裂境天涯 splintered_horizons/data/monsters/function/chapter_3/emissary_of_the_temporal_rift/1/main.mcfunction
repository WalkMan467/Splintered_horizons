
execute \
    if score @s monster.skill.freeze matches 0.. run \
function monsters:chapter_3/emissary_of_the_temporal_rift/cast/end

execute \
    if score @s monster.skill.freeze matches 0.. run \
return 0



execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/0


execute \
    if score @s monster.skill.casting matches 1.. run \
particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 1 normal @a

execute \
    if score @s monster.skill.casting matches 1.. run \
particle ominous_spawning ~ ~0.5 ~ 0.5 1 0.5 0 5 normal @a


execute \
    if score @s monster.skill.casting matches 300.. run \
function monsters:chapter_3/emissary_of_the_temporal_rift/cast/end