# ===================================================
# 投擲 鉤爪 定位點 迴圈 / thrown hook point loop

    ## Guide [ function weapons:type/drop/hook/point/loop ] >>> 投擲 鉤爪 定位點 迴圈 / thrown hook point loop
    ## Guide [ function weapons:type/drop/hook/point/guide ] >>> 投擲 鉤爪 定位點 分派 / thrown hook point dispatch
    ## Guide [ function weapons:type/drop/hook/effect ] >>> 投擲 鉤爪 效果 / thrown hook effect

# ===================================================


execute \
    as @e[type=marker,tag=hook.effect.point] at @s run \
function weapons:type/drop/hook/point/guide


execute \
    if entity @n[type=marker,tag=hook.effect.point] run \
schedule function weapons:type/drop/hook/point/loop 1t