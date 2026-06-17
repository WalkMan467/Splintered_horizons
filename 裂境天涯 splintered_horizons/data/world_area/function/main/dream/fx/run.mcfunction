scoreboard players add @s particle 5

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

execute \
    positioned ^ ^ ^0.25 run \
function world_area:main/dream/fx/summon

execute \
    rotated ~20 0 run \
function world_area:main/dream/fx/run