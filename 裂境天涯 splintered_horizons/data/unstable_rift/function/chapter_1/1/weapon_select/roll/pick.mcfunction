# ===================================================
# 從剩餘池抽 1 把 / take one out of the remaining pool

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll ] >>> 骰 3 把防身武器 / roll the three starter weapons
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll/pick ] >>> 從剩餘池抽 1 把 / take one out of the remaining pool
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll/take ] >>> 骰出 index / roll the index
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll/move ] >>> 把抽到的搬進 picked / move the pick into picked

    ## 先讀 pool 現在剩幾把再減 1 當 random 的上界，所以武器池加減數量不用改這裡

# ===================================================

execute \
    store result score #unstable_rift.chapter_1.1.weapon_select.max global.main run \
data get storage unstable_rift:chapter_1.1 weapon_select.pool

scoreboard players remove #unstable_rift.chapter_1.1.weapon_select.max global.main 1

execute \
    store result storage unstable_rift:chapter_1.1 weapon_select.max int 1 run \
scoreboard players get #unstable_rift.chapter_1.1.weapon_select.max global.main

function unstable_rift:chapter_1/1/weapon_select/roll/take with storage unstable_rift:chapter_1.1 weapon_select
