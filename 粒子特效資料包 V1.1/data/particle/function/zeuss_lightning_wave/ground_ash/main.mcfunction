# timer
scoreboard players add @s particle.zeuss_lightning_wave 1

# speed

execute \
    if score @s particle.zeuss_lightning_wave matches ..8 run \
tp @s ^ ^ ^1

execute at @s \
    unless block ~ ~ ~ #penetrate run \
tp @s ~ ~0.5 ~


execute at @s \
    if block ~ ~-0.5 ~ #penetrate run \
tp @s ~ ~-0.5 ~

# particle

execute \
    if score @s particle.zeuss_lightning_wave matches 0..8 run \
particle minecraft:dust{color:[1.0, 0.0, 0.0], scale:2.0} ~ ~ ~ 0.5 0 0.5 0 2 normal @a

# reset

execute \
    if score @s particle.zeuss_lightning_wave matches 18.. run \
function particle:zeuss_lightning_wave/ground_ash/end