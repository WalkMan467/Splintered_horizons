scoreboard players add @s particle 3

particle dust_color_transition{from_color:[0.984,1.000,0.000],to_color:[1.000,0.600,0.000],scale:1.5} ^ ^ ^5 2 1 2 0 0 normal @a
particle minecraft:enchant ^ ^1 ^5 0.1 0.1 0.1 0 2 normal @a
particle minecraft:ominous_spawning ^ ^ ^2.5 ^ ^ ^1000000 0.0000025 0 force


execute rotated ~3 0 \
    if score @s particle matches ..360 run \
function weapons:type/arrows/damage_resonance_arrow/fx