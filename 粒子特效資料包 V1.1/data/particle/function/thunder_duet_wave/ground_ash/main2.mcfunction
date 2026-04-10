# timer
scoreboard players add @s particle.thunder_duet_wave 1

# speed

execute \
    if score @s particle.thunder_duet_wave matches ..6 run \
tp @s ^ ^ ^-0.8

execute \
    if score @s particle.thunder_duet_wave matches 1 run \
function particle:thunder_duet_wave/ground_ash/deformation/1

execute \
    if score @s particle.thunder_duet_wave matches 6 run \
function particle:thunder_duet_wave/ground_ash/deformation/2

execute at @s \
    unless block ~ ~ ~ #penetrate run \
tp @s ~ ~0.5 ~


execute at @s \
    if block ~ ~-0.5 ~ #penetrate run \
tp @s ~ ~-0.5 ~

# particle

execute \
    store result score #rdm global.main run \
random value 1..100

execute \
    if score @s particle.thunder_duet_wave matches 0..6 \
    if score #rdm global.main matches 0..25 run \
particle minecraft:note ~ ~-0.625 ~ 0.5 0.375 0.5 1 1 normal @a

execute \
    if score @s particle.thunder_duet_wave matches 0..6 \
    if score #rdm global.main matches 25..100 run \
particle minecraft:note ~ ~-0.625 ~ 0.5 0.375 0.5 1 1 normal @a[scores={player.setting.reduce_particles=0}]

execute \
    if score @s particle.thunder_duet_wave matches 0..6 \
    unless score #particle.thunder_duet_wave.color particle matches 1.. \
    if score #rdm global.main matches 0..25 run \
particle dust_color_transition{from_color:[0.031,1.000,0.643],scale:1.5,to_color:[0.051,1.000,0.431]} ~ ~ ~ 0.3 0 0.3 0 10 normal @a

execute \
    if score @s particle.thunder_duet_wave matches 0..6 \
    unless score #particle.thunder_duet_wave.color particle matches 1.. \
    if score #rdm global.main matches 25..100 run \
particle dust_color_transition{from_color:[0.031,1.000,0.643],scale:1,to_color:[0.051,1.000,0.431]} ~ ~ ~ 0.3 0 0.3 0 10 normal @a[sort=arbitrary,scores={player.setting.reduce_particles=0}]

execute \
    if score @s particle.thunder_duet_wave matches 0..6 \
    if score #particle.thunder_duet_wave.color particle matches 1 \
    if score #rdm global.main matches 0..25 run \
particle dust_color_transition{from_color:[0.039,0.337,0.933],scale:1.5,to_color:[1.000,0.000,0.831]} ~ ~ ~ 0.3 0 0.3 0 10 normal @a

execute \
    if score @s particle.thunder_duet_wave matches 0..6 \
    if score #particle.thunder_duet_wave.color particle matches 1 \
    if score #rdm global.main matches 25..100 run \
particle dust_color_transition{from_color:[0.039,0.337,0.933],scale:1,to_color:[1.000,0.000,0.831]} ~ ~ ~ 0.3 0 0.3 0 10 normal @a[sort=arbitrary,scores={player.setting.reduce_particles=0}]

execute \
    if score @s particle.thunder_duet_wave matches 0..6 \
    if score #particle.thunder_duet_wave.color particle matches 2.. \
    if score #rdm global.main matches 0..25 run \
particle dust_color_transition{from_color:[1.000,0.039,0.039],scale:1.5,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.3 0 0.3 0 10 normal

execute \
    if score @s particle.thunder_duet_wave matches 0..6 \
    if score #particle.thunder_duet_wave.color particle matches 2.. \
    if score #rdm global.main matches 25..100 run \
particle dust_color_transition{from_color:[1.000,0.039,0.039],scale:1,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.3 0 0.3 0 10 normal @a[sort=arbitrary,scores={player.setting.reduce_particles=0}]

# reset

execute \
    if score @s particle.thunder_duet_wave matches 6.. run \
kill @s