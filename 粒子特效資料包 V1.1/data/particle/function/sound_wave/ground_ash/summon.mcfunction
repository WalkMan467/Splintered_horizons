tag @s remove summon

scoreboard players add @s particle 10

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

# summon

execute \
    if score #particle.sound_wave.color particle matches 1 run \
summon minecraft:item_display ^ ^ ^0.1 {teleport_duration:1,interpolation_duration:1,start_interpolation:1,Tags:[fx.sound_wave,fx.sound_wave.ga,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_purple"}, "minecraft:item_model": "minecraft:sound_wave_purple"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

execute \
    if score #particle.sound_wave.color particle matches 2.. run \
summon minecraft:item_display ^ ^ ^0.1 {teleport_duration:1,interpolation_duration:1,start_interpolation:1,Tags:[fx.sound_wave,fx.sound_wave.ga,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_red"}, "minecraft:item_model": "minecraft:sound_wave_red"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

execute \
    unless score #particle.sound_wave.color particle matches 1.. run \
summon minecraft:item_display ^ ^ ^0.1 {teleport_duration:1,interpolation_duration:1,start_interpolation:1,Tags:[fx.sound_wave,fx.sound_wave.ga,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave"}, "minecraft:item_model": "minecraft:sound_wave"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

tag @s add temp

execute \
    as @n[sort=arbitrary,distance=..2,tag=fx.sound_wave.ga,tag=summon,type=item_display] at @s run \
function particle:sound_wave/ground_ash/setup

tag @s remove temp

# loop

execute \
    rotated ~10 ~ run \
function particle:sound_wave/ground_ash/summon