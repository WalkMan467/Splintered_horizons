execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s monster.skill.silence matches 1.. run \
    return run \
function monsters:chapter_2/soul_sharpshooter/cast/end

execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_2/soul_sharpshooter/2/0


execute \
    if score @s monster.skill.casting matches 1.. \
    as @e[sort=arbitrary,distance=..20,tag=monsters.soul_sharpshooter.ghost.act,type=interaction] at @s \
    if data entity @s attack.timestamp run \
function monsters:chapter_2/soul_sharpshooter/2/key/remove/1

execute \
    if score @s monster.skill.casting matches 1.. \
    as @e[sort=arbitrary,distance=..20,tag=monsters.soul_sharpshooter.ghost.act,type=interaction] at @s \
    if data entity @s interaction.timestamp run \
function monsters:chapter_2/soul_sharpshooter/2/key/remove/1

execute \
    if score @s monster.skill.casting matches 1.. run \
particle ominous_spawning ~ ~0.5 ~ 0.5 1 0.5 0 5 normal @a

execute \
    if score @s monster.skill.casting matches 1.. run \
particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 1 normal @a

execute \
    if score @s monster.skill.casting matches 100.. run \
function monsters:chapter_2/soul_sharpshooter/cast/end