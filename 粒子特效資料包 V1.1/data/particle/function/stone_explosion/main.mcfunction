
# main
execute as @e[type=marker,tag=fx.gz.main] at @s run function particle:stone_explosion/main.main

# ground ash
execute as @e[tag=fx.gz.ga] at @s run function particle:stone_explosion/ground_ash/main
execute as @e[tag=fx.gz.ga2] at @s run function particle:stone_explosion/ground_ash/main2