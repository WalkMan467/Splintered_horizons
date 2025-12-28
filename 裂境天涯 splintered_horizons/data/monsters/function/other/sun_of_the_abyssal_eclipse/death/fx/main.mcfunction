scoreboard players add @s monster.sun_of_the_abyssal_eclipse.death.fx 1

execute store result score @s particle run \
random value 0..100


execute \
    if score @s particle matches 0..5 run \
particle flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0 normal @a

execute \
    if score @s particle matches 0..5 run \
particle minecraft:trial_spawner_detection ^ ^ ^5 0.1 0 0.1 0 1 normal @a

execute \
    if score @s particle matches 0..15 run \
particle small_flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0 force @a

execute \
    if score @s particle matches 0..50 run \
particle minecraft:small_flame ^ ^ ^5 0 0 0 0 1 force @a


execute rotated ~3 0 \
    if score @s monster.sun_of_the_abyssal_eclipse.death.fx matches ..360 run \
function monsters:other/sun_of_the_abyssal_eclipse/death/fx/main