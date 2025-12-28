# timer
scoreboard players add @s particle.ruins_of_the_finality_rupture 1

# speed

execute \
    if score @s particle.ruins_of_the_finality_rupture matches ..12 run \
tp @s ^ ^ ^0.8

execute at @s \
    unless block ~ ~ ~ air run \
tp @s ~ ~1 ~

execute at @s \
    if block ~ ~-1 ~ air run \
tp @s ~ ~-1 ~

# particle

execute \
    if score @s particle.ruins_of_the_finality_rupture matches 0..6 run \
particle dust_color_transition{from_color:[0.000,0.000,0.000],scale:4,to_color:[0.471,0.000,0.000]} ~ ~ ~ 0 0 0 1 0 normal

execute \
    if score @s particle.ruins_of_the_finality_rupture matches 6..12 run \
particle dust_color_transition{from_color:[0.831,0.000,0.000],scale:4,to_color:[0.631,0.000,0.000]} ~ ~ ~ 0 0 0 1 0 normal

execute \
    if score @s particle.ruins_of_the_finality_rupture matches 13.. run \
particle dust_color_transition{from_color:[0.631,0.000,0.000],scale:4,to_color:[0.020,0.000,0.000]} ~ ~ ~ 0 0 0 1 0 normal

execute \
    if score @s particle.ruins_of_the_finality_rupture matches 13.. run \
particle dust{color:[0.020,0.000,0.000],scale:4} ^ ^ ^-1 0.5 0.5 0.5 1 0 normal

# reset

execute \
    if score @s particle.ruins_of_the_finality_rupture matches 42.. run \
function particle:ruins_of_the_finality_rupture/ground_ash/end