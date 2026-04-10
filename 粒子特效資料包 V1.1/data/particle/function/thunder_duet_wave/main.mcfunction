
# main

execute \
    as @e[distance=0..,tag=fx.thunder_duet_wave.main,type=marker] at @s run \
function particle:thunder_duet_wave/main.main

# ground ash

execute \
    as @e[distance=0..,tag=fx.thunder_duet_wave.ga,type=item_display] at @s run \
function particle:thunder_duet_wave/ground_ash/main

execute \
    as @e[distance=0..,tag=fx.thunder_duet_wave.ga2,type=item_display] at @s run \
function particle:thunder_duet_wave/ground_ash/main2