tp @n[type=item,predicate=sys:monument_point/objective_item/2] @p
data modify entity @n[type=item,predicate=sys:monument_point/objective_item/2] PickupDelay set value 0

execute at 0000000d-0000-0001-0000-000100000001 positioned ^ ^ ^4 run summon minecraft:item_display ~ ~ ~ {UUID:[I; 13,3,1,1],Tags:["sys.monument_point.sword","sys.monument_point.main","sys.monument_point.grass"],brightness: {block: 15, sky: 15}, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:sword/entangling_vine_of_despair/1"}, count: 1, id: "minecraft:iron_sword"}, teleport_duration: 1, transformation: {left_rotation: [-0.38268346f, 0.9238795f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.5f, 2.5000005f, 2.5000002f], translation: [-1.7881393E-7f, 0.49999994f, 1.4901154E-7f]},view_range:1}

playsound minecraft:entity.ender_eye.death voice @a ^ ^ ^-1 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ^ ^ ^-1 1 0.5
playsound minecraft:entity.firework_rocket.blast voice @a ^ ^ ^-1 1 1
playsound minecraft:ui.toast.challenge_complete voice @a ^ ^ ^-1 1 1

particle minecraft:end_rod ^ ^ ^-1 0 0 0 0.25 20 normal @a
particle sonic_boom ^ ^ ^-1 0 0 0 1 1 normal @a

title @a title {"translate":"tips.area_2.title","color": "green"}
title @a subtitle {"translate":"tips.area_2.subtitle","color": "green"}
title @a times 20 60 20