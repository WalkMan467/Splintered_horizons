scoreboard players add #particle.spacetime_collapse.range particle 3

particle wax_on ^ ^0.5 ^1 ^ ^ ^1000000 0.0001 0 force

execute rotated ~3 0 \
    if score #particle.spacetime_collapse.range particle matches ..360 run \
function particle:spacetime_collapse/main/4