scoreboard players add #particle.grip_of_withering.passive.range particle 3

particle wax_on ^ ^0.5 ^1 ^ ^ ^1000000 0.0001 0 force

execute rotated ~3 0 \
    if score #particle.grip_of_withering.passive.range particle matches ..360 run \
function particle:type/expansion/grip_of_withering/passive/main/4