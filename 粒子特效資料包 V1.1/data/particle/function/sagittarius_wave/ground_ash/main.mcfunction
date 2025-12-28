# timer
scoreboard players add @s particle.sagittarius_wave 1

# speed

execute \
    if score @s particle.sagittarius_wave matches ..6 run \
tp @s ^ ^ ^1

execute at @s \
    unless block ~ ~ ~ #penetrate run \
tp @s ~ ~0.5 ~


execute at @s \
    if block ~ ~-0.5 ~ #penetrate run \
tp @s ~ ~-0.5 ~

# particle

execute \
    if score @s particle.sagittarius_wave matches 0..6 run \
particle dust_color_transition{from_color:[0.000,1.000,0.867],to_color:[0.749,1.000,0.969],scale:1.5} ~ ~ ~ 0.5 0 0.5 0 2 normal @a

# reset

execute \
    if score @s particle.sagittarius_wave matches 10.. run \
function particle:sagittarius_wave/ground_ash/end