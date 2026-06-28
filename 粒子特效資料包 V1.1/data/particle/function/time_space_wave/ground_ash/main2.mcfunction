# timer
scoreboard players add @s particle.time_space_wave 1

# speed

execute \
    if score @s particle.time_space_wave matches ..10 run \
tp @s ^ ^ ^-0.8

execute \
    if score @s particle.time_space_wave matches 4 run \
function particle:time_space_wave/ground_ash/deformation/1

execute \
    if score @s particle.time_space_wave matches 15 run \
function particle:time_space_wave/ground_ash/deformation/2

execute at @s \
    unless block ~ ~ ~ #penetrate run \
tp @s ~ ~0.5 ~

# particle

execute \
    store result score #rdm global.main run \
random value 1..100

execute \
    if score @s particle.time_space_wave matches 0..10 \
    if score #rdm global.main matches 0..25 run \
particle minecraft:wax_on ~ ~ ~ 0.3 0.1 0.3 0 5 normal @a

execute \
    if score @s particle.time_space_wave matches 0..10 \
    if score #rdm global.main matches 25..100 run \
particle minecraft:wax_on ~ ~ ~ 0.3 0.1 0.3 0.5 20 normal @a[sort=arbitrary,scores={player.setting.reduce_particles=0}]

# reset

execute \
    if score @s particle.time_space_wave matches 20.. run \
kill @s