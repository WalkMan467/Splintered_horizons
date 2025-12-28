rotate @s ~3 0


execute \
    store result score #weapon.miniature_sun.probability particle run \
random value 0..100


execute \
    if score #weapon.miniature_sun.probability particle matches 0..5 run \
particle flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0 normal @a

execute \
    if score #weapon.miniature_sun.probability particle matches 0..5 run \
particle minecraft:trial_spawner_detection ^ ^ ^5 0.1 0 0.1 0 1 normal @a

execute \
    if score #weapon.miniature_sun.probability particle matches 0..15 run \
particle small_flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0 force @a

execute \
    if score #weapon.miniature_sun.probability particle matches 0..50 run \
particle minecraft:small_flame ^ ^ ^5 0 0 0 0 1 force @a