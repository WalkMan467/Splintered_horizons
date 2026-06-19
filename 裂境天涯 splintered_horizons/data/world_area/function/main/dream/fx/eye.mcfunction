# 9d704fe9-3125-4b35-a19a-9d2737f2deab
summon area_effect_cloud ~ ~ ~ {UUID:[I;-1653583895,824527669,-1583702745,938663595],custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1}

spreadplayers ~ ~ 0 1 false 9d704fe9-3125-4b35-a19a-9d2737f2deab

execute \
    as 9d704fe9-3125-4b35-a19a-9d2737f2deab at @s run \
tp @s ~ 60 ~

execute \
    at 9d704fe9-3125-4b35-a19a-9d2737f2deab run \
summon minecraft:item_display ~ ~ ~ {Tags:["summon","world_area.main.dream.fx.eye"],brightness: {block: 15, sky: 15},billboard: "center", interpolation_duration: 1, item: {count: 1, id: "minecraft:ender_eye",components:{"item_model":"eye_of_the_end"}}, teleport_duration: 10, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.375f, 0.375f, 0.375f], translation: [0.0f, 0.0f, 0.0f]}}

kill 9d704fe9-3125-4b35-a19a-9d2737f2deab

execute \
    as @e[sort=arbitrary,distance=..30,tag=summon,tag=world_area.main.dream.fx.eye,type=item_display] \
    store result score @s duration run \
random value 5..15

execute \
    as @n[sort=arbitrary,distance=..30,tag=summon,tag=world_area.main.dream.fx.eye,type=item_display] at @s run \
tp @s ~ ~0.25 ~

tag @e[sort=arbitrary,distance=..30,tag=summon,tag=world_area.main.dream.fx.eye,type=item_display] remove summon