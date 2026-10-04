# ===================================================
# 投擲 微型太陽 右鍵 效果 fx 2 guide 2 / thrown miniature sun right click effect fx 2 guide 2

    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/fx_2/guide_2 ] >>> 投擲 微型太陽 右鍵 效果 fx 2 guide 2 / thrown miniature sun right click effect fx 2 guide 2
    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/fx_2/use ] >>> 投擲 微型太陽 右鍵 效果 fx 2 觸發 / thrown miniature sun right click effect fx 2 activate

# ===================================================


execute \
    as @e[distance=..5,type=!#minecraft:dummy_mob,type=!player] run \
damage @s 3 on_fire

execute \
    as @e[distance=..5,type=!#minecraft:dummy_mob,type=!player] run \
effect give @s minecraft:slowness 2 2 false

execute \
    if dimension minecraft:overworld \
    positioned ^ ^ ^1.25 run \
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1.5,to_color:[1.000,0.333,0.000]} ~ ~ ~ 0 0 0 1 0 normal @a

execute \
    unless dimension minecraft:overworld \
    positioned ^ ^ ^1.25 run \
particle dust_color_transition{from_color:[0.800,0.000,1.000],to_color:[0.000,0.051,0.035],scale:1.5} ~ ~ ~ 0 0 0 1 0 normal @a

execute \
    if dimension minecraft:overworld \
    positioned ^ ^ ^0.4 run \
particle flame ~ ~ ~ ^ ^ ^1000000 0.00000015 0 normal @a

execute \
    unless dimension minecraft:overworld \ 
    positioned ^ ^ ^0.4 run \
particle reverse_portal ~ ~ ~ ^ ^ ^1000000 0.00000015 0 normal @a

scoreboard players add x particle 15
scoreboard players set rot_y particle 0

execute \
    if score x particle matches 360.. run \
scoreboard players set rot_y particle 1

execute \
    if score x particle matches 360.. run \
scoreboard players add y particle 15

execute \
    if score x particle matches 360.. run \
scoreboard players set x particle 0

execute \
    if score y particle matches ..90 \
    if score rot_y particle matches 0 rotated ~15 ~ run \
function weapons:type/drop/miniature_sun/rc/effect/fx_2/guide_2

execute \
    if score y particle matches ..90 \
    if score rot_y particle matches 1 rotated ~15 ~15 run \
function weapons:type/drop/miniature_sun/rc/effect/fx_2/guide_2