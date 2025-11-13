# summon area_effect_cloud ~ ~ ~2 {Tags:["particle.technological_force_field.main","summon"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}
# summon area_effect_cloud ~ ~ ~-2 {Tags:["particle.technological_force_field.main","summon"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}
# summon area_effect_cloud ~2 ~ ~ {Tags:["particle.technological_force_field.main","summon"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}
# summon area_effect_cloud ~-2 ~ ~ {Tags:["particle.technological_force_field.main","summon"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

summon area_effect_cloud ~ ~ ~ {Tags:["particle.technological_force_field.main","summon"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}
execute if score @s particle.technological_force_field.line.color matches -2147483648..2147483647 run scoreboard players operation @n[type=area_effect_cloud,tag=particle.technological_force_field.main,tag=summon] particle.technological_force_field.line.color = @s particle.technological_force_field.line.color

execute as @e[tag=particle.technological_force_field.main,tag=summon,type=area_effect_cloud] at @s run function particle:technological_force_field/guide