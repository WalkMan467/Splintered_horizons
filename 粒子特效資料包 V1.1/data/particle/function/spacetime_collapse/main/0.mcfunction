scoreboard players add @s particle.spacetime_collapse.sound 1
particle wax_on ~ ~ ~ 1 1 1 0 5 force @a

execute \
    if score @s particle.spacetime_collapse.timer matches ..15 \
    if score @s particle.spacetime_collapse.sound matches 5 run \
function particle:spacetime_collapse/main/1

execute \
    if score @s particle.spacetime_collapse.timer matches 15.. \
    if score @s particle.spacetime_collapse.sound matches 2 run \
function particle:spacetime_collapse/main/2