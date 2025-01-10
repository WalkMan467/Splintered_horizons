# timer
scoreboard players add @s particle.void_wave 1

# speed
execute if score @s particle.void_wave matches ..9 run tp @s ^ ^ ^-0.85

execute if score @s particle.void_wave matches 5 run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 0.1f, 0.0f], translation: [0.0f, -0.5f, 0.0f]}}

# execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
# execute at @s if block ~ ~1 ~ air run tp @s ~ ~1 ~

# reset
execute if score @s particle.void_wave matches 15.. run kill @s