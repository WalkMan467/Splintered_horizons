# timer
scoreboard players add @s particle.zeuss_lightning_wave 1

# speed

execute \
    if score @s particle.zeuss_lightning_wave matches ..8 run \
tp @s ^ ^ ^1

execute \
    if score @s particle.zeuss_lightning_wave matches 2 run \
function particle:zeuss_lightning_wave/ground_ash/deformation/1

execute \
    if score @s particle.zeuss_lightning_wave matches 8 run \
function particle:zeuss_lightning_wave/ground_ash/deformation/2

execute at @s \
    unless block ~ ~ ~ #penetrate run \
tp @s ~ ~0.5 ~


execute at @s \
    if block ~ ~-0.5 ~ #penetrate run \
tp @s ~ ~-0.5 ~

# particle

execute store result score #rdm global.main run random value 0..100

execute \
    if score @s particle.zeuss_lightning_wave matches 0..8 \
    if score #rdm global.main matches 0..25 run \
particle dust_color_transition{from_color:[1.000,0.039,0.039],scale:1.5,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.3 0 0.3 0 10 normal

execute \
    if score @s particle.zeuss_lightning_wave matches 0..8 \
    if score #rdm global.main matches 25..100 run \
particle dust_color_transition{from_color:[1.000,0.039,0.039],scale:1.5,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.3 0 0.3 0 10 normal @a[sort=arbitrary,scores={player.setting.reduce_particles=0}]

# reset

execute \
    if score @s particle.zeuss_lightning_wave matches 15.. run \
function particle:zeuss_lightning_wave/ground_ash/end