# timer
scoreboard players add @s particle.void_wave 1

# speed

execute \
    if score @s particle.void_wave matches ..9 run \
tp @s ^ ^ ^0.85


execute \
    if score @s particle.void_wave matches 5 run \
data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 0.1f, 0.0f], translation: [0.0f, -0.5f, 0.0f]}}

# execute at @s \
    if block ~ ~-1 ~ air run \
tp @s ~ ~-1 ~
# execute at @s \
    if block ~ ~1 ~ air run \
tp @s ~ ~1 ~

# # particle
# execute \
    if score @s particle.void_wave matches 0.. run \
particle dust_color_transition{from_color:[0.039,0.337,0.933],scale:2,to_color:[1.000,0.000,0.831]} ~ ~ ~ 0.3 0 0.3 0 1 normal @a

# purple ash
scoreboard players operation #temp global.main = @s particle.void_wave
scoreboard players operation #temp global.main %= 4 particle.void_wave

# reset

execute \
    if score @s particle.void_wave matches 15.. run \
function particle:void_wave/ground_ash/end