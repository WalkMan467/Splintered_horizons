
# main

execute \
    as @e[type=marker,tag=fx.rotf.main] at @s run \
function particle:ruins_of_the_finality_rupture/main.main

# ground ash

execute \
    as @e[type=text_display,tag=fx.rotf.ga] at @s run \
function particle:ruins_of_the_finality_rupture/ground_ash/main

execute \
    as @e[type=text_display,tag=fx.rotf.ga2] at @s run \
function particle:ruins_of_the_finality_rupture/ground_ash/main2

# air ash

execute \
    as @e[type=text_display,tag=fx.rotf.aa] at @s run \
function particle:ruins_of_the_finality_rupture/air_ash/main

# eye

execute \
    as @e[tag=fx.rotf.eye,type=item_display] \
    if score @s duration matches 10 run \
data merge entity @s {start_interpolation: 5, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}