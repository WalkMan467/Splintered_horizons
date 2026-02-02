
# main

execute \
    as @e[distance=0..,tag=fx.sound_wave.main,type=marker] at @s run \
function particle:sound_wave/main.main

# ground ash

execute \
    as @e[distance=0..,tag=fx.sound_wave.ga,type=item_display] at @s run \
function particle:sound_wave/ground_ash/main

execute \
    as @e[distance=0..,tag=fx.sound_wave.ga2,type=item_display] at @s run \
function particle:sound_wave/ground_ash/main2