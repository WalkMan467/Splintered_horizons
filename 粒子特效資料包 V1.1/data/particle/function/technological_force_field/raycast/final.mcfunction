scoreboard players reset #particle.technological_force_field main.raycast

execute as @n[tag=particle.technological_force_field.main,type=area_effect_cloud] if score @s particle.technological_force_field.line matches 0 run kill @s
execute as @n[tag=particle.technological_force_field.main,type=area_effect_cloud] if score @s particle.technological_force_field.line matches 1.. run function particle:technological_force_field/raycast/line