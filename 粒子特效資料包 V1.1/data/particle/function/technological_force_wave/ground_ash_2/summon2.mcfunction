
scoreboard players add #temp_2 global.main 20

# summon

summon minecraft:block_display ~ ~ ~ {interpolation_duration:1,teleport_duration:1,Tags:[fx.technological_force_wave.ga2,summon],brightness:{block:15,sky:15},block_state:{Name:"minecraft:air"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[-0.5f,-0.5f,-0.5f]}}

tp @n[tag=summon,tag=fx.technological_force_wave.ga2,type=block_display] ~ ~ ~ ~ ~

tag @n[tag=summon,tag=fx.technological_force_wave.ga2,type=block_display] remove summon

# loop
execute if score #temp_2 global.main matches ..360 rotated ~20 ~ run function particle:technological_force_wave/ground_ash_2/summon2
