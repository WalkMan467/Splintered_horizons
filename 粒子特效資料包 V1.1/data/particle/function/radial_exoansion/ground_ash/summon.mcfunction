tag @s remove summon

scoreboard players add @s particle 10

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

# summon

summon minecraft:armor_stand ^ ^ ^0.1 {Tags:[particle.radial_exoansion,particle.radial_exoansion.ga,summon]}

tag @s add temp

execute \
    as @n[sort=arbitrary,distance=..2,tag=particle.radial_exoansion.ga,tag=summon,type=armor_stand] at @s run \
function particle:radial_exoansion/ground_ash/setup

tag @s remove temp

# loop

execute \
    rotated ~10 ~ run \
function particle:radial_exoansion/ground_ash/summon