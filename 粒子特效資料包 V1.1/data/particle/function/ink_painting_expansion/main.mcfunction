
# main
execute as @e[type=marker,tag=fx.ipe.main] at @s run function particle:ink_painting_expansion/main.main

# ground ash
execute as @e[type=block_display,tag=fx.ipe.ga] at @s run function particle:ink_painting_expansion/ground_ash/main

# air ash
execute as @e[type=text_display,tag=fx.ipe.aa] at @s run function particle:ink_painting_expansion/air_ash/main

# ink particle
execute as @e[type=item,tag=ink_painting_expansion.ink] at @s run function particle:ink_painting_expansion/ink/main