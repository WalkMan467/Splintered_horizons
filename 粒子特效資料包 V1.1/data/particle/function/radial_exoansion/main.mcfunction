
# main

execute \
    as @a at @s \
    as @e[sort=arbitrary,distance=..60,tag=particle.radial_exoansion.main,type=marker] at @s run \
function particle:radial_exoansion/main.main

execute \
    as @a at @s \
    as @e[distance=..60,tag=particle.radial_exoansion.ga,type=armor_stand] at @s run \
function particle:radial_exoansion/ground_ash/main

schedule function particle:radial_exoansion/main 1t