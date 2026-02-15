scoreboard players add #weapon.flame_of_finality.blade particle 3

particle minecraft:flame ^ ^ ^ ^ ^ ^1000000 0.0000005 0 force

execute \
    rotated ~3 0 \
    if score #weapon.flame_of_finality.blade particle matches ..360 run \
function weapons:type/scythe/flame_of_finality/lc/3/particle