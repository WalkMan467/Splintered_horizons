# ===================================================
# 骰出 index / roll the index

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll/pick ] >>> 從剩餘池抽 1 把 / take one out of the remaining pool
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll/take ] >>> 骰出 index / roll the index
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll/move ] >>> 把抽到的搬進 picked / move the pick into picked

# ===================================================

$execute \
    store result storage unstable_rift:chapter_1.1 weapon_select.i int 1 run \
random value 0..$(max)

function unstable_rift:chapter_1/1/weapon_select/roll/move with storage unstable_rift:chapter_1.1 weapon_select
