scoreboard players add #particle.space_crack particle 3

particle minecraft:end_rod ^ ^ ^8 ^ ^-100000 ^-1000000 0.0000030 0 normal


execute rotated ~3 0 \
    if score #particle.space_crack particle matches ..360 run \
function particle:space_crack/range