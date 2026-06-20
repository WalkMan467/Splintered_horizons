execute \
    positioned 10055 123 10310 \
    as @n[sort=arbitrary,tag=aj.amysis.root,distance=..3,type=item_display] run \
function aj:amysis/remove/this


execute \
    in minecraft:overworld run \
summon minecraft:block_display 9971.5 55.0 10322.5 {UUID:[I;3213213,234221,-4214123,2431321],teleport_duration:59,Rotation:[-90.0f,-5.0f],Tags:["cutscene.opening.2"],block_state: {Name: "minecraft:air"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}

scoreboard players set 0031079d-0003-92ed-ffbf-b29500251959 duration 290

execute \
    as 0031079d-0003-92ed-ffbf-b29500251959 at @s run \
tp @s ~-2.5 ~ ~ ~ 5

forceload remove 9820 10137

schedule function cutscene:opening/3/use 10s