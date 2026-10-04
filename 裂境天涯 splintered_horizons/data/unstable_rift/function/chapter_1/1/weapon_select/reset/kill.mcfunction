# ===================================================
# 殺掉座位實體 / kill the pedestal entities

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/reset ] >>> 收掉座位等下一輪 / clear the pedestals for the next round
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/reset/kill ] >>> 殺掉座位實體 / kill the pedestal entities
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/spawn ] >>> 擺出 3 個座位 / place the three pedestals

# ===================================================

# interaction 跟武器掉落物都掛 weapon_select.entity，所以一次全殺乾淨
# spawn 開頭也會先跑這個，避免重複擺出座位
#
# execute in 不能省：@e 只搜當前維度，而這支的呼叫者不保證在終界 ——
# spawn 是在玩家還沒被傳進房間之前跑的，reset 是從 chapter_1/tick 跑的

execute \
    in minecraft:the_end run \
kill @e[tag=unstable_rift.chapter_1.1.weapon_select.entity]
