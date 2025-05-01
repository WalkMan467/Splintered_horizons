execute as @a at @s if score @s particle.lightning.continuous matches 1.. facing ~ ~-90 ~ positioned ~ ~15 ~ run function particle:lightning/bolt_start

execute as @a at @s if score @s particle.lightning.continuous matches 1.. run scoreboard players remove @s particle.lightning.continuous 1

schedule function particle:lightning/continuous 1t