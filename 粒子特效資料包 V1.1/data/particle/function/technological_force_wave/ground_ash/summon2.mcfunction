
scoreboard players add #temp global.main 6

# summon

summon minecraft:block_display ~ ~ ~ {interpolation_duration:1,teleport_duration:1,Tags:[fx.technological_force_wave.ga,summon],brightness:{block:15,sky:15},block_state:{Name:"minecraft:yellow_stained_glass"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[-0.5f,-0.5f,-0.5f]}}

tp @n[tag=summon,tag=fx.technological_force_wave.ga,type=block_display] ~ ~ ~ ~ ~

tag @n[tag=summon,tag=fx.technological_force_wave.ga,type=block_display] remove summon

# loop
execute if score #temp global.main matches ..360 rotated ~6 ~ run function particle:technological_force_wave/ground_ash/summon2