# timer
scoreboard players add @s particle.ink_painting_expansion 1

# speed
execute if score @s particle.ink_painting_expansion matches ..12 run tp @s ^ ^ ^0.8
execute at @s unless block ~ ~ ~ #penetrate run tp @s ~ ~0.5 ~
execute at @s if block ~ ~-0.5 ~ #penetrate run tp @s ~ ~-0.5 ~

# particle
execute if score @s particle.ink_painting_expansion matches 0..6 run particle dust_color_transition{from_color:[0.000,0.000,0.000],to_color:[1.0,1.0,1.0],scale:2.5} ~ ~ ~ 0.25 0 0.25 0 8 normal
execute if score @s particle.ink_painting_expansion matches 6..12 run particle dust_color_transition{from_color:[1.000,1.000,1.000],to_color:[0.0,0.0,0.0],scale:2.5} ~ ~ ~ 0.25 0 0.25 0 5 normal
execute if score @s particle.ink_painting_expansion matches 13.. run particle dust_color_transition{from_color:[0.000,0.000,0.000],to_color:[1.0,1.0,1.0],scale:4} ~ ~ ~ 0.25 0 0.25 0 2 normal

execute if score @s particle.ink_painting_expansion matches 0..6 run particle minecraft:dust_pillar{block_state:black_wool} ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
execute if score @s particle.ink_painting_expansion matches 6..12 run particle minecraft:dust_pillar{block_state:gray_wool} ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal

execute if score @s particle.ink_painting_expansion matches 13..21 run particle minecraft:dust_pillar{block_state:black_wool} ~ ~ ~ 0.5 0.5 0.5 0.1 20 normal
execute if score @s particle.ink_painting_expansion matches 21..29 run particle minecraft:dust_pillar{block_state:gray_wool} ~ ~ ~ 0.5 0.5 0.5 0.1 20 normal
execute if score @s particle.ink_painting_expansion matches 29..37 run particle minecraft:dust_pillar{block_state:light_gray_wool} ~ ~ ~ 0.5 0.5 0.5 0.1 20 normal
execute if score @s particle.ink_painting_expansion matches 37..42 run particle minecraft:dust_pillar{block_state:white_wool} ~ ~ ~ 0.5 0.5 0.5 0.1 20 normal


# reset
execute if score @s particle.ink_painting_expansion matches 42.. run function particle:ink_painting_expansion/ground_ash/end