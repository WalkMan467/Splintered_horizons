execute \
    positioned ^ ^ ^6 run \
particle dust_color_transition{from_color:[0.750,0.000,0.000],scale:2,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.5 0.5 0.5 1 2 normal @a

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


# execute \
#     if score y particle matches ..90 \
#     if score rot_y particle matches 0 \
#     rotated ~15 ~ run \
# function particle:fsc/fx_2/guide_2

# execute \
#     if score y particle matches ..90 \
#     if score rot_y particle matches 1 \
#     rotated ~15 ~15 run \
# function particle:fsc/fx_2/guide_2