
# main

execute \
    as @e[sort=arbitrary,distance=0..,tag=fx.time_space_wave.main,type=marker] at @s run \
function particle:time_space_wave/main.main

execute \
    as @e[distance=0..,tag=fx.time_space_wave.ga,type=item_display] at @s run \
function particle:time_space_wave/ground_ash/main

schedule function particle:time_space_wave/main 1t