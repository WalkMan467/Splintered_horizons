scoreboard players add #weapon.flame_of_finality.blade particle 1

particle small_flame ^ ^ ^3 0.1 0.1 0.1 0 1 force

execute \
    rotated ~1 ~0.5 \
    if score #weapon.flame_of_finality.blade particle matches ..90 run \
function weapons:type/scythe/flame_of_finality/lc/blade_particle