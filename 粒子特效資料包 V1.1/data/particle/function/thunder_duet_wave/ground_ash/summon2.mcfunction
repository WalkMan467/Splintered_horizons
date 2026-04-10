
scoreboard players add #particle.thunder_duet_wave.ground_ash global.main 12

# summon

execute \
    if score #particle.thunder_duet_wave.color particle matches 1 run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:2,interpolation_duration:1,start_interpolation:1,Tags:[fx.thunder_duet_wave,fx.thunder_duet_wave.ga,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_purple"}, "minecraft:item_model": "minecraft:sound_wave_purple"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

execute \
    if score #particle.thunder_duet_wave.color particle matches 2.. run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:2,interpolation_duration:1,start_interpolation:1,Tags:[fx.thunder_duet_wave,fx.thunder_duet_wave.ga,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_red"}, "minecraft:item_model": "minecraft:sound_wave_red"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}
execute \
    unless score #particle.thunder_duet_wave.color particle matches 1.. run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:2,interpolation_duration:1,start_interpolation:1,Tags:[fx.thunder_duet_wave,fx.thunder_duet_wave.ga,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave"}, "minecraft:item_model": "minecraft:sound_wave"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

tp @n[distance=0..,tag=fx.thunder_duet_wave.ga,tag=summon,type=item_display] ~ ~ ~ ~ ~

execute \
    if score #particle.thunder_duet_wave.color particle matches 1 run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:2,interpolation_duration:1,start_interpolation:1,Tags:[fx.thunder_duet_wave,fx.thunder_duet_wave.ga2,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_purple"}, "minecraft:item_model": "minecraft:sound_wave_purple"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

execute \
    if score #particle.thunder_duet_wave.color particle matches 2.. run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:2,interpolation_duration:1,start_interpolation:1,Tags:[fx.thunder_duet_wave,fx.thunder_duet_wave.ga2,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_red"}, "minecraft:item_model": "minecraft:sound_wave_red"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

execute \
    unless score #particle.thunder_duet_wave.color particle matches 1.. run \
summon minecraft:item_display ~ ~ ~ {teleport_duration:2,interpolation_duration:1,start_interpolation:1,Tags:[fx.thunder_duet_wave,fx.thunder_duet_wave.ga2,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave"}, "minecraft:item_model": "minecraft:sound_wave"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, -0.1375f, 0.0f]}}

tp @n[distance=0..,tag=fx.thunder_duet_wave.ga2,tag=summon,type=item_display] ~ ~ ~ ~180 ~

execute \
    as @e[sort=arbitrary,distance=..10,tag=fx.thunder_duet_wave,tag=summon,type=item_display] run \
tag @s remove summon

# loop

execute \
    if score #particle.thunder_duet_wave.ground_ash global.main matches ..360 rotated ~12 ~ run \
function particle:thunder_duet_wave/ground_ash/summon2