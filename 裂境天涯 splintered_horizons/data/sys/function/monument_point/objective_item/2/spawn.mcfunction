tp @n[predicate=sys:monument_point/objective_item/2,distance=0..,type=item] @p
data modify entity @n[predicate=sys:monument_point/objective_item/2,distance=0..,type=item] PickupDelay set value 0

summon minecraft:item_display ~ ~ ~ {UUID:[I; 3212,3,1,1],Tags:["sys.monument_point.sword","sys.monument_point.rotate","sys.monument_point.main","sys.monument_point.grass"],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:sword/silvaverdis/0"}, count: 1, id: "minecraft:iron_sword"}, teleport_duration: 1, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0000005f, 2.0000002f], translation: [0.075f, 0.625f, 1.4901154E-7f]}}

playsound minecraft:entity.ender_eye.death voice @a ~ ~ ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~ ~ 1 0.5
playsound minecraft:entity.firework_rocket.blast voice @a ~ ~ ~ 1 1
playsound minecraft:ui.toast.challenge_complete voice @a ~ ~ ~ 1 1

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.25 20 normal @a
particle sonic_boom ~ ~ ~ 0 0 0 1 1 normal @a

title @a title {"translate":"tips.area_2.title","color": "green"}
title @a subtitle {"translate":"tips.area_2.subtitle","color": "green"}
title @a times 20 60 20

scoreboard players set #objective_item.2 global.main 1