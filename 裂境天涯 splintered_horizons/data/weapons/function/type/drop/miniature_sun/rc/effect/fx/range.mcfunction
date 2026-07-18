scoreboard players add @s particle 3

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

particle flame ^ ^-0.5 ^5 0 0 0 0 0 normal @a

execute \
    rotated ~3 0 run \
function weapons:type/drop/miniature_sun/rc/effect/fx/range