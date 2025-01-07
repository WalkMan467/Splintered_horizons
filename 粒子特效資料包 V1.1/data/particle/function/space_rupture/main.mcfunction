
# main
execute as @e[type=marker,tag=fx.sr.main] at @s run function particle:space_rupture/main.main

# ground ash
execute as @e[type=text_display,tag=fx.sr.ga] at @s run function particle:space_rupture/ground_ash/main
execute as @e[type=text_display,tag=fx.sr.ga2] at @s run function particle:space_rupture/ground_ash/main2

# purple ash
execute as @e[type=block_display,tag=fx.sr.pa] at @s run function particle:space_rupture/purple_ash/main

# air ash
execute as @e[type=text_display,tag=fx.sr.aa] at @s run function particle:space_rupture/air_ash/main