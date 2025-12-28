
execute \
    store result score #particle.technological_force_field main.raycast run \
random value 2..15

summon area_effect_cloud ~ ~ ~ {Tags:["particle.technological_force_field.raycast","summon"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}
scoreboard players operation @n[type=area_effect_cloud,tag=particle.technological_force_field.raycast,tag=summon] particle.technological_force_field.line.color = @n[type=area_effect_cloud,tag=particle.technological_force_field.main,tag=summon] particle.technological_force_field.line.color

tp @n[type=area_effect_cloud,tag=particle.technological_force_field.raycast] ~ ~ ~ ~ ~


execute \
    as @n[type=area_effect_cloud,tag=particle.technological_force_field.raycast,tag=summon] at @s run \
function particle:technological_force_field/raycast/detect
kill @n[type=area_effect_cloud,tag=particle.technological_force_field.raycast]