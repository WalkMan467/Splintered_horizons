# 鉤子設定
summon item_display ~ ~4 ~ {Tags:["sys.zipline_platform","sys.zipline_platform.spawn"],brightness: {block: 15, sky: 15}, interpolation_duration: 20, item: {components: {"minecraft:item_model": "minecraft:iron_hoe"}, count: 1, id: "minecraft:iron_sword"}, teleport_duration: 1, transformation: {left_rotation: [-0.59636784f, 0.37992817f, 0.59636784f, -0.37992817f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1f, 1f, 1f], translation: [0.0f, 0.0f, 0.0f]}}
scoreboard players operation @n[distance=0..,tag=sys.zipline_platform.spawn,type=item_display] sys.zipline_platform.id = #sys.zipline_platform.user.id sys.zipline_platform.id


execute \
    as @n[tag=sys.zipline_platform.spawn,distance=0..,type=item_display] run \
rotate @s ~ ~

function sys:zipline_platform/loop

execute \
    as @n[tag=sys.zipline_platform.spawn,distance=0..,type=item_display] at @s run \
function sys:zipline_platform/effect