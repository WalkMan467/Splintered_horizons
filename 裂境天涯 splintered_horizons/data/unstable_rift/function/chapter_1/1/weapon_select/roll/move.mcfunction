# ===================================================
# 把抽到的搬進 picked / move the pick into picked

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll/take ] >>> 骰出 index / roll the index
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll/move ] >>> 把抽到的搬進 picked / move the pick into picked

# ===================================================

$data modify storage unstable_rift:chapter_1.1 weapon_select.picked append from storage unstable_rift:chapter_1.1 weapon_select.pool[$(i)]

$data remove storage unstable_rift:chapter_1.1 weapon_select.pool[$(i)]
