tag @s[tag=sys.environmental_mechanism.chapter_1.gravity.point.actived,type=marker] remove sys.environmental_mechanism.chapter_1.gravity.point.actived

execute \
    align xyz \
    positioned ~0.5 ~0.5 ~0.5 run \
summon minecraft:item_display ~ ~ ~ {Tags:["sys.environmental_mechanism.chapter_1.gravity"],brightness: {block: 15, sky: 15}, glow_color_override: 697855, interpolation_duration: 1, item: {components: {"minecraft:item_model": "minecraft:fx/gravity_disturbance_area/1"}, count: 1, id: "minecraft:poisonous_potato"}, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 49.999992f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute \
    align xyz \
    positioned ~-7 ~-25 ~-7 run \
playsound minecraft:block.beacon.deactivate voice @a[dx=14,dy=50,dz=14] ~ ~1 ~ 1 1

schedule function sys:environmental_mechanism/chapter_1/gravity_disturbance_area/main 1t