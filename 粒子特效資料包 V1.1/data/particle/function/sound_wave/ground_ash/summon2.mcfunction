
scoreboard players add #particle.sound_wave.ground_ash global.main 12

# summon

execute \
    if score #particle.sound_wave.color particle matches 1 run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:1,start_interpolation:1,Tags:[fx.sound_wave,fx.sound_wave.ga,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_purple"}, "minecraft:item_model": "minecraft:sound_wave_purple"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

execute \
    if score #particle.sound_wave.color particle matches 2 run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:1,start_interpolation:1,Tags:[fx.sound_wave,fx.sound_wave.ga,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_red"}, "minecraft:item_model": "minecraft:sound_wave_red"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}
execute \
    unless score #particle.sound_wave.color particle matches 1.. run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:1,start_interpolation:1,Tags:[fx.sound_wave,fx.sound_wave.ga,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave"}, "minecraft:item_model": "minecraft:sound_wave"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

tp @e[tag=summon,sort=nearest,limit=1] ~ ~ ~ ~ ~

execute \
    if score #particle.sound_wave.color particle matches 1 run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:1,start_interpolation:1,Tags:[fx.sound_wave,fx.sound_wave.ga2,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_purple"}, "minecraft:item_model": "minecraft:sound_wave_purple"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

execute \
    if score #particle.sound_wave.color particle matches 2 run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:1,start_interpolation:1,Tags:[fx.sound_wave,fx.sound_wave.ga2,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_red"}, "minecraft:item_model": "minecraft:sound_wave_red"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

execute \
    unless score #particle.sound_wave.color particle matches 1.. run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:1,interpolation_duration:1,start_interpolation:1,Tags:[fx.sound_wave,fx.sound_wave.ga2,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave"}, "minecraft:item_model": "minecraft:sound_wave"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

tp @e[tag=summon,tag=fx.sound_wave.ga2,sort=nearest,limit=1] ~ ~ ~ ~180 ~

execute \
    as @e[sort=arbitrary,distance=..10,tag=fx.sound_wave,tag=summon,type=item_display] run \
tag @s remove summon

# loop

execute \
    if score #particle.sound_wave.ground_ash global.main matches ..360 rotated ~12 ~ run \
function particle:sound_wave/ground_ash/summon2