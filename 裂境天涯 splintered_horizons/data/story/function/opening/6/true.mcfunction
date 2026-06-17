scoreboard players set #story.opening.6_temp global.main 1
scoreboard players set story.opening.6 story.chapter_1 1


# cdded6a9-9832-41bb-9ed9-c3efcdca5e00
execute \
    in world_area:main/game_lobby \
    positioned 1575 77 8 \
    rotated 0 0 run \
summon interaction ~ ~ ~ {Tags:["story.opening.6.act"],UUID:[I;-841034071,-1741536837,-1629895697,-842375680]}

# 507bd62b-a686-440c-a1d4-db849c979003
execute \
    in world_area:main/game_lobby \
    positioned 1575 77.5 8 \
    rotated 0 0 run \
summon minecraft:block_display ~ ~ ~ {UUID:[I;1350293035,-1501150196,-1579885692,-1667788797],block_state: {Name: "minecraft:horn_coral", Properties: {waterlogged: "false"}}, brightness: {block: 15, sky: 15}, interpolation_duration: 1, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}


# FX & SFX
particle minecraft:sonic_boom 1575 77.5 8 0 0 0 1 1 force @a
playsound minecraft:item.trident.return voice @a 1575 77.5 8 1 1.5