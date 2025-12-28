summon minecraft:block_display ^ ^ ^ {Glowing:1b,glow_color_override: 16711680, start_interpolation: 5, interpolation_duration:5,Tags:["monsters.corroder.raycast","summon"],block_state: {Name: "minecraft:red_stained_glass"}, brightness: {block: 15, sky: 15}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [-0.375f, -0.375f, -0.5f]}}

summon minecraft:item_display ~ ~ ~ {Glowing:1b,Tags:["monsters.corroder.eye","summon"],glow_color_override: 16711680, brightness: {block: 15, sky: 15}, item: {components: {"minecraft:item_model": "minecraft:eye_of_the_end"}, count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}


execute \
    as @n[tag=monsters.corroder.raycast,tag=summon,type=block_display] run \
tp @s ~ ~ ~ facing ^ ^ ^1

execute \
    as @n[tag=monsters.corroder.eye,tag=summon,type=item_display] run \
tp @s ~ ~ ~ facing ^ ^ ^1

data merge entity @n[tag=monsters.corroder.raycast,tag=summon,type=block_display] {interpolation_duration:5,start_interpolation: 5, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.75f, 0.75f, 10.0f], translation: [-0.375f, -0.375f, -0.5f]}}
data merge entity @n[tag=monsters.corroder.eye,tag=summon,type=item_display] {interpolation_duration:5,start_interpolation: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}

scoreboard players set @n[tag=monsters.corroder.raycast,tag=summon,type=block_display] duration 60
scoreboard players set @n[tag=monsters.corroder.eye,tag=summon,type=item_display] duration 60

tag @n[tag=monsters.corroder.raycast,tag=summon,type=block_display] remove summon
tag @n[tag=monsters.corroder.eye,tag=summon,type=item_display] remove summon