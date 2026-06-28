
# main

execute \
    as @a at @s \
    as @e[sort=arbitrary,distance=..60,tag=fx.sound_wave.main,type=marker] at @s run \
function particle:sound_wave/main.main

execute \
    as @a at @s \
    as @e[distance=..60,tag=fx.sound_wave.ga,type=item_display] at @s run \
function particle:sound_wave/ground_ash/main

schedule function particle:sound_wave/main 1t