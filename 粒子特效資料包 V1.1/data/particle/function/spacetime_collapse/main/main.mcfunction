scoreboard players add @s particle.spacetime_collapse.timer 1

tag @s add particle.spacetime_collapse.temp

execute \
    as @a[sort=arbitrary,tag=!particle.spacetime_collapse.temp] at @s \
    if score @s player.id = @n[tag=particle.spacetime_collapse.temp,type=block_display] particle.spacetime_collapse.id run \
tag @s add particle.spacetime_collapse.temp

execute \
    at @p[tag=particle.spacetime_collapse.temp] run \
tp @s ~ ~1 ~

execute \
    if score @s particle.spacetime_collapse.timer matches 1 run \
function particle:spacetime_collapse/bubble/use

execute \
    if score @s particle.spacetime_collapse.timer matches 1 run \
function particle:spacetime_collapse/sword/use

execute \
    if score @s particle.spacetime_collapse.timer matches 1 run \
function particle:spacetime_collapse/sword/invert

execute \
    if score @s particle.spacetime_collapse.timer matches ..24 run \
function particle:spacetime_collapse/main/0

execute \
    if score @s particle.spacetime_collapse.timer matches 27 run \
function particle:spacetime_collapse/main/3


tag @s remove particle.spacetime_collapse.temp
tag @p[tag=particle.spacetime_collapse.temp] remove particle.spacetime_collapse.temp