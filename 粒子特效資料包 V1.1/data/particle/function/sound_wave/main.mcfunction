
# main
execute as @e[type=marker,tag=fx.sound_wave.main] at @s run function particle:sound_wave/main.main

# ground ash
execute as @e[tag=fx.sound_wave.ga] at @s run function particle:sound_wave/ground_ash/main
execute as @e[tag=fx.sound_wave.ga2] at @s run function particle:sound_wave/ground_ash/main2