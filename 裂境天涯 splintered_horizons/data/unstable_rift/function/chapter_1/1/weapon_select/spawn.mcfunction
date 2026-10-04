# ===================================================
# 擺出 3 個座位 / place the three pedestals

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll ] >>> 骰 3 把防身武器 / roll the three starter weapons
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/spawn ] >>> 擺出 3 個座位 / place the three pedestals
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/spawn/slot ] >>> 擺出單一座位 / place one pedestal
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/reset ] >>> 收掉座位等下一輪 / clear the pedestals for the next round

    ## 三個座位固定在 the_end 的 5594 / 5590 / 5586 61 4396
    ## 要移位置改下面三段的 x 就好，y 與 z 寫在 spawn/slot 裡

# ===================================================

function unstable_rift:chapter_1/1/weapon_select/reset/kill

    # 1

    data modify storage unstable_rift:chapter_1.1 weapon_select.temp set from storage unstable_rift:chapter_1.1 weapon_select.slot_1
    data modify storage unstable_rift:chapter_1.1 weapon_select.temp.slot set value 1
    data modify storage unstable_rift:chapter_1.1 weapon_select.temp.x set value 5594

    function unstable_rift:chapter_1/1/weapon_select/spawn/slot with storage unstable_rift:chapter_1.1 weapon_select.temp

    # 2

    data modify storage unstable_rift:chapter_1.1 weapon_select.temp set from storage unstable_rift:chapter_1.1 weapon_select.slot_2
    data modify storage unstable_rift:chapter_1.1 weapon_select.temp.slot set value 2
    data modify storage unstable_rift:chapter_1.1 weapon_select.temp.x set value 5590

    function unstable_rift:chapter_1/1/weapon_select/spawn/slot with storage unstable_rift:chapter_1.1 weapon_select.temp

    # 3

    data modify storage unstable_rift:chapter_1.1 weapon_select.temp set from storage unstable_rift:chapter_1.1 weapon_select.slot_3
    data modify storage unstable_rift:chapter_1.1 weapon_select.temp.slot set value 3
    data modify storage unstable_rift:chapter_1.1 weapon_select.temp.x set value 5586

    function unstable_rift:chapter_1/1/weapon_select/spawn/slot with storage unstable_rift:chapter_1.1 weapon_select.temp

data remove storage unstable_rift:chapter_1.1 weapon_select.temp
