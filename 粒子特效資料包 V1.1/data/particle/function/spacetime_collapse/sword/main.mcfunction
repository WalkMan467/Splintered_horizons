scoreboard players add @s particle.spacetime_collapse.timer 1

execute \
    if score @s particle.spacetime_collapse.timer matches 5 run \
function particle:spacetime_collapse/sword/0

execute \
    if score @s particle.spacetime_collapse.timer matches 20 run \
function particle:spacetime_collapse/sword/1

execute \
    if score @s particle.spacetime_collapse.timer matches 25 run \
function particle:spacetime_collapse/sword/2

execute \
    if score @s particle.spacetime_collapse.timer matches 27 run \
function particle:spacetime_collapse/sword/3

execute \
    if entity @s[tag=!invert] \
    if score @s particle.spacetime_collapse.timer matches ..15 \
    on passengers run \
rotate @s ~10 ~0.375

execute \
    if entity @s[tag=!invert] \
    if score @s particle.spacetime_collapse.timer matches ..15 run \
rotate @s ~10 ~0.375

execute \
    if entity @s[tag=!invert] \
    if score @s particle.spacetime_collapse.timer matches 15..24 \
    on passengers run \
rotate @s ~20 ~0.375

execute \
    if entity @s[tag=!invert] \
    if score @s particle.spacetime_collapse.timer matches 15..24 run \
rotate @s ~20 ~0.375

execute \
    if entity @s[tag=invert] \
    if score @s particle.spacetime_collapse.timer matches ..15 \
    on passengers run \
rotate @s ~-10 ~-0.375

execute \
    if entity @s[tag=invert] \
    if score @s particle.spacetime_collapse.timer matches ..15 run \
rotate @s ~-10 ~-0.375

execute \
    if entity @s[tag=invert] \
    if score @s particle.spacetime_collapse.timer matches 15..24 \
    on passengers run \
rotate @s ~-20 ~-0.375

execute \
    if entity @s[tag=invert] \
    if score @s particle.spacetime_collapse.timer matches 15..24 run \
rotate @s ~-20 ~-0.375