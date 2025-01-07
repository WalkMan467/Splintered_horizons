# timer
scoreboard players add @s particle.void_wave 1

# speed
execute if score @s particle.void_wave matches ..15 run tp @s ^ ^ ^-0.85

execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute at @s if block ~ ~1 ~ air run tp @s ~ ~1 ~

# reset
execute if score @s particle.void_wave matches 20.. run kill @s