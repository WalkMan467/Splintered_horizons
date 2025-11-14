
scoreboard players add #temp global.main 12

# summon


summon minecraft:block_display ~ ~ ~ {Tags:[fx.ipe.ga,summon],interpolation_duration:1,teleport_duration:1,brightness:{block:0,sky:0},block_state:{Name:"minecraft:black_concrete_powder"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.375f,1.0f,1.0f],translation:[-0.5f,-0.5f,-0.5f]}}
tp @n[tag=summon,tag=fx.ipe.ga,type=block_display] ~ ~ ~ ~ ~
tag @n[tag=summon,tag=fx.ipe.ga,type=block_display] remove summon

# loop
execute if score #temp global.main matches ..360 rotated ~12 ~ run function particle:ink_painting_expansion/ground_ash/summon2
