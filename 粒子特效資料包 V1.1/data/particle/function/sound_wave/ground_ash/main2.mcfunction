# timer
scoreboard players add @s particle.sound_wave 1

# speed

execute \
    if score @s particle.sound_wave matches ..10 run \
tp @s ^ ^ ^-0.8

execute \
    if score @s particle.sound_wave matches 4 run \
function particle:sound_wave/ground_ash/deformation/1


execute \
    if score @s particle.sound_wave matches 10 run \
function particle:sound_wave/ground_ash/deformation/2

execute at @s \
    unless block ~ ~ ~ air run \
tp @s ~ ~1 ~


execute at @s \
    if block ~ ~-1 ~ air run \
tp @s ~ ~-1 ~

# particle

execute \
    if score @s particle.sound_wave matches 0..10 run \
particle minecraft:note ~ ~-0.625 ~ 0.5 0.375 0.5 1 1 normal

execute store result score #rdm global.main run random value 0..1

execute \
    if score @s particle.sound_wave matches 0..10 \
    unless score #particle.sound_wave.color particle matches 1.. \
    if score #rdm global.main matches 1 run \
particle dust_color_transition{from_color:[0.031,1.000,0.643],to_color:[0.051,1.000,0.431],scale:1} ~ ~ ~ 0.5 0 0.5 0 20 normal

execute \
    if score @s particle.sound_wave matches 10 \
    unless score #particle.sound_wave.color particle matches 1.. run \
particle dust_color_transition{from_color:[0.031,1.000,0.643],scale:3,to_color:[0.051,1.000,0.431]} ~ ~ ~ 0.3 0 0.3 0 2 normal


execute \
    if score @s particle.sound_wave matches 0..10 \
    if score #particle.sound_wave.color particle matches 1 \
    if score #rdm global.main matches 1 run \
particle dust_color_transition{from_color:[0.039,0.337,0.933],scale:1.0,to_color:[1.000,0.000,0.831]} ~ ~ ~ 0.5 0 0.5 0 20 normal

execute \
    if score @s particle.sound_wave matches 10 \
    if score #particle.sound_wave.color particle matches 1 run \
particle dust_color_transition{from_color:[0.039,0.337,0.933],scale:3,to_color:[1.000,0.000,0.831]} ~ ~ ~ 0.3 0 0.3 0 2 normal

execute \
    if score @s particle.sound_wave matches 0..10 \
    if score #particle.sound_wave.color particle matches 2 \
    if score #rdm global.main matches 1 run \
particle dust_color_transition{from_color:[1.000,0.039,0.039],scale:1.0,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.5 0 0.5 0 20 normal

execute \
    if score @s particle.sound_wave matches 10 \
    if score #particle.sound_wave.color particle matches 2 run \
particle dust_color_transition{from_color:[1.000,0.039,0.039],scale:3,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.3 0 0.3 0 2 normal

# reset

execute \
    if score @s particle.sound_wave matches 15.. run \
kill @s