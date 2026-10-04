# ===================================================
# 投擲 玻璃片 分派 / thrown broken glass dispatch

    ## Guide [ function weapons:type/drop/broken_glass/guide ] >>> 投擲 玻璃片 分派 / thrown broken glass dispatch
    ## Guide [ function weapons:type/drop/broken_glass/kill ] >>> 投擲 玻璃片 擊殺 / thrown broken glass on kill
    ## Guide [ function weapons:type/drop/broken_glass/effect ] >>> 投擲 玻璃片 效果 / thrown broken glass effect
    ## Guide [ function weapons:type/drop/broken_glass/loop ] >>> 投擲 玻璃片 迴圈 / thrown broken glass loop

# ===================================================

tp @s ^ ^ ^1

particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal @a


execute \
    positioned ~ ~-0.5 ~ \
    if entity @n[type=!player,type=!#minecraft:dummy_mob,distance=..1.5] run \
function weapons:type/drop/broken_glass/kill

execute \
    positioned ~ ~-0.5 ~ \
    as @n[type=!player,type=!#minecraft:dummy_mob,distance=..1.5] run \
function weapons:type/drop/broken_glass/effect


execute \
    unless block ~ ~ ~ #penetrate run \
function weapons:type/drop/broken_glass/kill