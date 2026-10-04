# ===================================================
# 天導神弓箭矢 magic circle holy fire 階段 2 / heavenly guiding arrow magic circle holy fire step 2

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/2 ] >>> 天導神弓箭矢 magic circle holy fire 階段 2 / heavenly guiding arrow magic circle holy fire step 2
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/setup ] >>> 天導神弓箭矢 magic circle 初始化 / heavenly guiding arrow magic circle setup
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/shoot ] >>> 天導神弓箭矢 magic circle holy fire shoot / heavenly guiding arrow magic circle holy fire shoot

# ===================================================

effect give @s slowness 1 255 true

execute \
    store result score #rdm global.main run \
random value 1..8

tag @s add weapon.heavenly_guiding_bow.arrow.magic_circle.target

execute \
    if score #rdm global.main matches 1 run \
summon minecraft:item_display ~ ~5 ~-4 {start_interpolation:1,Glowing:1b,Tags:["weapon.heavenly_guiding_bow.arrow.magic_circle","weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire","summon"],Rotation:[90.0,55.3],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/heavenly_guiding_arrow/magic_circle"}, count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    if score #rdm global.main matches 2 run \
summon minecraft:item_display ~ ~5 ~4 {start_interpolation:1,Glowing:1b,Tags:["weapon.heavenly_guiding_bow.arrow.magic_circle","weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire","summon"],Rotation:[90.0,55.3],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/heavenly_guiding_arrow/magic_circle"}, count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    if score #rdm global.main matches 3 run \
summon minecraft:item_display ~4 ~5 ~ {start_interpolation:1,Glowing:1b,Tags:["weapon.heavenly_guiding_bow.arrow.magic_circle","weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire","summon"],Rotation:[90.0,55.3],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/heavenly_guiding_arrow/magic_circle"}, count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    if score #rdm global.main matches 4 run \
summon minecraft:item_display ~-4 ~5 ~ {start_interpolation:1,Glowing:1b,Tags:["weapon.heavenly_guiding_bow.arrow.magic_circle","weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire","summon"],Rotation:[90.0,55.3],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/heavenly_guiding_arrow/magic_circle"}, count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    if score #rdm global.main matches 5 run \
summon minecraft:item_display ~-4 ~5 ~-4 {start_interpolation:1,Glowing:1b,Tags:["weapon.heavenly_guiding_bow.arrow.magic_circle","weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire","summon"],Rotation:[90.0,55.3],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/heavenly_guiding_arrow/magic_circle"}, count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    if score #rdm global.main matches 6 run \
summon minecraft:item_display ~4 ~5 ~4 {start_interpolation:1,Glowing:1b,Tags:["weapon.heavenly_guiding_bow.arrow.magic_circle","weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire","summon"],Rotation:[90.0,55.3],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/heavenly_guiding_arrow/magic_circle"}, count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    if score #rdm global.main matches 7 run \
summon minecraft:item_display ~4 ~5 ~-4 {start_interpolation:1,Glowing:1b,Tags:["weapon.heavenly_guiding_bow.arrow.magic_circle","weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire","summon"],Rotation:[90.0,55.3],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/heavenly_guiding_arrow/magic_circle"}, count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    if score #rdm global.main matches 8 run \
summon minecraft:item_display ~-4 ~5 ~4 {start_interpolation:1,Glowing:1b,Tags:["weapon.heavenly_guiding_bow.arrow.magic_circle","weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire","summon"],Rotation:[90.0,55.3],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/heavenly_guiding_arrow/magic_circle"}, count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    as @n[sort=arbitrary,distance=..10,tag=summon,tag=weapon.heavenly_guiding_bow.arrow.magic_circle,type=item_display] at @s run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/setup

tag @s remove weapon.heavenly_guiding_bow.arrow.magic_circle.target