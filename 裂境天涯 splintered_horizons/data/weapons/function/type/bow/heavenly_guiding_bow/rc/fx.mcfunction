scoreboard players add @s particle 12

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

particle end_rod ~ ~1 ~ ^ ^ ^1000000 0.00000025 0 normal @a

execute \
    rotated ~12 0 run \
function weapons:type/bow/heavenly_guiding_bow/rc/fx