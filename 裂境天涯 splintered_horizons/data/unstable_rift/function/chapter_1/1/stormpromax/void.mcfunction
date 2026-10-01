# ===================================================
# 亞斯 強制移除 / stormpromax force remove

    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/void ] >>> 亞斯 強制移除 / stormpromax force remove
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/kill ] >>> 亞斯 死亡收尾 / stormpromax on kill
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/summon ] >>> 召喚 亞斯 / summon stormpromax
    ## Guide [ function unstable_rift:chapter_1/tick ] >>> 第一章每 tick 一次 / chapter 1 once per tick

# ===================================================
# 不觸發死亡回調地把亞斯清掉，用於重置或除錯。
# 丟到 y -255（終界的 min_y 是 0）再 kill，這是這個資料包移除 BOSS 的慣用寫法。

tp @e[tag=stormpromax,type=zombie] ~ -255 ~
kill @e[tag=stormpromax,type=zombie]

function unstable_rift:chapter_1/1/stormpromax/kill
