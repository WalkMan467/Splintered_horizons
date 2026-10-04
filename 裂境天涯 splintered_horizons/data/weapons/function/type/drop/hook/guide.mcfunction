# ===================================================
# 投擲 鉤爪 分派 / thrown hook dispatch

    ## Guide [ function weapons:type/drop/hook/guide ] >>> 投擲 鉤爪 分派 / thrown hook dispatch
    ## Guide [ function weapons:type/drop/hook/effect ] >>> 投擲 鉤爪 效果 / thrown hook effect
    ## Guide [ function weapons:type/drop/hook/loop ] >>> 投擲 鉤爪 迴圈 / thrown hook loop

# ===================================================


tp @s ^ ^ ^1 ~ ~
effect give @s slow_falling 2 255 true

particle minecraft:crit ~ ~ ~ 0 0 0 0 1 normal @a



execute at @s \
    positioned ^ ^ ^1 \
    if entity @n[distance=..2,type=interaction,tag=weapon.hook.target] run \
function weapons:type/drop/hook/effect


execute at @s \
    positioned ^ ^ ^1 \
    if block ~ ~ ~ barrier run \
kill @s

execute at @s \
    positioned ^ ^ ^1 \
    unless block ~ ~ ~ #penetrate run \
function weapons:type/drop/hook/effect


execute at @s \
    unless block ^ ^ ^1 #penetrate run \
kill @s