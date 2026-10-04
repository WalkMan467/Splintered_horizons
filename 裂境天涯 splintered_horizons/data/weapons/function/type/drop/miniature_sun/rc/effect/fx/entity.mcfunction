# ===================================================
# 投擲 微型太陽 右鍵 效果 特效 entity / thrown miniature sun right click effect visuals entity

    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/fx/entity ] >>> 投擲 微型太陽 右鍵 效果 特效 entity / thrown miniature sun right click effect visuals entity
    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/fx/range ] >>> 投擲 微型太陽 右鍵 效果 特效 範圍 / thrown miniature sun right click effect visuals range
    ## Guide [ function weapons:type/drop/miniature_sun/rc/effect/fx/range_the_end ] >>> 投擲 微型太陽 右鍵 效果 特效 range the end / thrown miniature sun right click effect visuals range the end
    ## Guide [ function weapons:type/drop/miniature_sun/rc/main ] >>> 投擲 微型太陽 右鍵 主迴圈 / thrown miniature sun right click loop

# ===================================================

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