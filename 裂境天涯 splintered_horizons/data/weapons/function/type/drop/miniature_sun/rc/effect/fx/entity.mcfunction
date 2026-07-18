rotate @s ~3 0


execute \
    store result score #weapon.miniature_sun.probability particle run \
random value 0..100


execute \
    if dimension minecraft:overworld \
    if score #weapon.miniature_sun.probability particle matches 0..5 run \
particle flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0 normal @a

execute \
    unless dimension minecraft:overworld \
    if score #weapon.miniature_sun.probability particle matches 0..5 run \
particle reverse_portal ~ ~ ~ ^ ^ ^1000000 0.00000025 0 normal @a

execute \
    if dimension minecraft:overworld \
    if score #weapon.miniature_sun.probability particle matches 0..5 run \
particle flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0 normal @a

execute \
    unless dimension minecraft:overworld \
    if score #weapon.miniature_sun.probability particle matches 0..5 run \
particle reverse_portal ~ ~ ~ ^ ^ ^1000000 0.00000025 0 normal @a

execute \
    if dimension minecraft:overworld \
    if score #weapon.miniature_sun.probability particle matches 0..5 run \
particle minecraft:trial_spawner_detection ^ ^ ^5 0.1 0 0.1 0 1 normal @a

execute \
    unless dimension minecraft:overworld \
    if score #weapon.miniature_sun.probability particle matches 0..5 run \
particle minecraft:trial_spawner_detection_ominous ^ ^ ^5 0.1 0 0.1 0 1 normal @a

execute \
    if dimension minecraft:overworld \
    if score #weapon.miniature_sun.probability particle matches 0..15 run \
particle small_flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0 force @a

execute \
    if dimension minecraft:overworld \
    if score #weapon.miniature_sun.probability particle matches 0..50 run \
function weapons:type/drop/miniature_sun/rc/effect/fx/range

execute \
    unless dimension minecraft:overworld \
    if score #weapon.miniature_sun.probability particle matches 0..50 run \
function weapons:type/drop/miniature_sun/rc/effect/fx/range_the_end