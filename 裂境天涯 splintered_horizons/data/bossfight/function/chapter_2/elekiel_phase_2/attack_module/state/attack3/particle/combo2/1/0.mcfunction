scoreboard players add @s particle 2

execute \
    if score @s particle matches 68.. run \
    return run \
scoreboard players reset @s particle

particle dust{color:[0.000,0.000,0.000],scale:0.75} ^ ^ ^2 0 0 0 0 0 force
particle dust{color:[1.000,0.800,0.000],scale:0.75} ^ ^ ^1.9 0 0 0 0 0 force
particle dust{color:[1.000,0.800,0.000],scale:0.75} ^ ^ ^1.8 0 0 0 0 0 force
particle dust{color:[1.000,0.800,0.000],scale:0.75} ^ ^ ^1.7 0 0 0 0 0 force
particle dust{color:[1.000,0.800,0.000],scale:0.75} ^ ^ ^1.6 0 0 0 0 0 force
particle dust{color:[1.000,0.800,0.000],scale:0.75} ^ ^ ^1.5 0 0 0 0 0 force
particle dust{color:[1.000,0.800,0.000],scale:0.75} ^ ^ ^1.4 0 0 0 0 0 force
particle dust{color:[1.000,0.800,0.000],scale:0.75} ^ ^ ^1.3 0 0 0 0 0 force
particle dust{color:[1.000,0.800,0.000],scale:0.75} ^ ^ ^1.2 0 0 0 0 0 force
particle dust{color:[1.000,0.800,0.000],scale:0.75} ^ ^ ^1.1 0 0 0 0 0 force
particle dust{color:[1.000,0.800,0.000],scale:0.75} ^ ^ ^1 0 0 0 0 0 force

execute \
    rotated ~-2 ~0.5 run \
function bossfight:chapter_2/elekiel_phase_2/attack_module/state/attack3/particle/combo2/1/0