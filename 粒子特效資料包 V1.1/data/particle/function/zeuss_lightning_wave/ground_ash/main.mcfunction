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

execute store result score #rdm global.main run random value 0..1

execute \
    if score #rdm global.main matches 1 \
    if score @s particle.zeuss_lightning_wave matches 0..8 run \
particle dust_color_transition{from_color:[1.000,0.039,0.039],scale:1.0,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.5 0 0.5 0 20 normal

# reset

execute \
    if score @s particle.zeuss_lightning_wave matches 15.. run \
function particle:zeuss_lightning_wave/ground_ash/end