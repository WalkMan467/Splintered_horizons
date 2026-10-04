# ===================================================
# 投擲 鉤爪 迴圈 / thrown hook loop

    ## Guide [ function weapons:type/drop/hook/loop ] >>> 投擲 鉤爪 迴圈 / thrown hook loop
    ## Guide [ function weapons:type/drop/hook/guide ] >>> 投擲 鉤爪 分派 / thrown hook dispatch
    ## Guide [ function weapons:type/drop/hook/rc/use ] >>> 投擲 鉤爪 右鍵 觸發 / thrown hook right click activate

# ===================================================

# 鉤子導向

execute \
    as @e[type=item_display,tag=hook.effect] at @s run \
function weapons:type/drop/hook/guide


execute \
    if entity @n[type=item_display,tag=hook.effect] run \
schedule function weapons:type/drop/hook/loop 1t