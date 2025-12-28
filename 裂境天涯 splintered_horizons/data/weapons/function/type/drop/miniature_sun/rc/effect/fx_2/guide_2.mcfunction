
execute \
    as @e[distance=..5,type=!#minecraft:dummy_mob] run \
damage @s 3 on_fire


execute \
    positioned ^ ^ ^1.25 run \
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1.5,to_color:[1.000,0.333,0.000]} ~ ~ ~ 0 0 0 1 0 normal @a

execute \
    positioned ^ ^ ^0.4 run \
particle flame ~ ~ ~ ^ ^ ^1000000 0.00000015 0 normal @a

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