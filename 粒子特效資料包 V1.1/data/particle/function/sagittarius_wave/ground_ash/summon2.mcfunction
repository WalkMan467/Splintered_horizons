
scoreboard players add #temp global.main 12

# summon

summon minecraft:block_display ~ ~ ~ {Tags:[fx.sagittarius_wave.ga,summon],brightness: {block: 8, sky: 8}, fall_distance: 0.0d, block_state: {Name:"minecraft:ice"}, teleport_duration:2,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.5f, 0.5f], translation: [-0.5f, 0.0f, -0.5f]}}

tp @n[tag=summon,distance=..3,tag=fx.sagittarius_wave.ga,type=block_display] ~ ~ ~ ~ ~

tag @n[tag=summon,distance=..3,tag=fx.sagittarius_wave.ga,type=block_display] remove summon

# loop
execute if score #temp global.main matches ..360 rotated ~12 ~ run function particle:sagittarius_wave/ground_ash/summon2
