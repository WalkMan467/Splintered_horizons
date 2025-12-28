scoreboard players add @s particle.ink_painting_expansion 1


execute \
    if score @s particle.ink_painting_expansion matches 1..10 run \
particle dust{color:[0.000,0.000,0.000],scale:2} ~ ~ ~ 0 0 0 0 0 normal

execute \
    if score @s particle.ink_painting_expansion matches 10..15 run \
particle dust_color_transition{from_color:[0.012,0.000,0.000],to_color:[0.910,0.910,0.910],scale:2} ~ ~ ~ 0 0 0 0 0 normal

execute \
    if score @s particle.ink_painting_expansion matches 15..20 run \
particle dust{color:[1.000,1.000,1.000],scale:1.5} ~ ~ ~ 0 0 0 0 0 normal


execute \
    unless block ~ ~-0.5 ~ #air \
    unless entity @s[tag=ground] run \
function particle:ink_painting_expansion/ink/in_ground