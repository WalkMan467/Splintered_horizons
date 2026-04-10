scoreboard players add @s particle 3

execute \
    if score @s particle matches 90.. run \
    return run \
scoreboard players reset @s particle

execute \
    if predicate {condition:"minecraft:random_chance",chance:0.75} run \
particle dust{color:[0.000,0.000,0.000],scale:2} ^ ^ ^8 0.1 0.1 0.1 0 1 normal

execute \
    if predicate {condition:"minecraft:random_chance",chance:0.5} run \
particle dust_color_transition{to_color:[1.000,0.000,0.000],from_color:[0.750,0.000,0.000],scale:2} ^ ^ ^6 0.25 0.25 0.25 0 1 normal

execute \
    positioned ~ ~1 ~ \
    rotated ~3 ~3 run \
function particle:fsc/energy_convergence/fx