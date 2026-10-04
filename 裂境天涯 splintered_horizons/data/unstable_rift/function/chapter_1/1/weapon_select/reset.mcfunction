# ===================================================
# 收掉座位等下一輪 / clear the pedestals for the next round

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/reset ] >>> 收掉座位等下一輪 / clear the pedestals for the next round
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/reset/kill ] >>> 殺掉展示實體 / kill the display entities
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll ] >>> 骰 3 把防身武器 / roll the three starter weapons

    ## 由 unstable_rift:chapter_1/loop 在房間裡沒人的時候呼叫
    ## 把展示實體與骰出來的三把一起清掉，下一個進來的玩家就會重新骰

# ===================================================

function unstable_rift:chapter_1/1/weapon_select/reset/kill

data remove storage unstable_rift:chapter_1.1 weapon_select
