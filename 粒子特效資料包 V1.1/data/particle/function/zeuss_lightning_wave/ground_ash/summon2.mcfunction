
scoreboard players add #temp global.main 12

# summon

summon minecraft:item_display ~ ~ ~ {Tags:[fx.zeuss_lightning_wave.ga,summon],brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {color: "yellow", italic: 0b, text: "item/sound_wave_red"}, "minecraft:item_model": "minecraft:sound_wave_red"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 4.0f, 2.0f], translation: [0.0f, 0.5f, 0.0f]}}

tp @e[tag=summon,sort=nearest,limit=1] ~ ~ ~ ~ ~

tag @e[tag=summon,limit=2] remove summon

# loop

execute \
    if score #temp global.main matches ..360 rotated ~12 ~ run \
function particle:zeuss_lightning_wave/ground_ash/summon2
