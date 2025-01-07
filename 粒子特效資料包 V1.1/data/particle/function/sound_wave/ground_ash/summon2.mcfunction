
scoreboard players add #temp global.main 12

# summon

summon minecraft:item_display ~ ~ ~ {Tags:[fx.sound_wave.ga,summon],brightness: {block: 15, sky: 15}, item: {components: {"minecraft:custom_model_data": 39, "minecraft:custom_name": '{"color":"yellow","italic":false,"text":"item/sound_wave"}'}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 4.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}


tp @e[tag=summon,sort=nearest,limit=1] ~ ~ ~ ~ ~

summon minecraft:item_display ~ ~ ~ {Tags:[fx.sound_wave.ga2,summon],brightness: {block: 15, sky: 15}, item: {components: {"minecraft:custom_model_data": 39, "minecraft:custom_name": '{"color":"yellow","italic":false,"text":"item/sound_wave"}'}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 4.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}


tp @e[tag=summon,tag=fx.sound_wave.ga2,sort=nearest,limit=1] ~ ~ ~ ~180 ~
tag @e[tag=summon,limit=2] remove summon

# loop
execute if score #temp global.main matches ..360 rotated ~12 ~ run function particle:sound_wave/ground_ash/summon2
