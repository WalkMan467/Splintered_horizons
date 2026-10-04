# ===================================================
# 裂隙每 tick 一次 / rift once per tick

    ## Guide [ function unstable_rift:main/tick ] >>> 裂隙每 tick 一次 / rift once per tick
    ## Guide [ function unstable_rift:main/loop ] >>> 裂隙主迴圈（每位玩家）/ rift main loop (per player)
    ## Guide [ function unstable_rift:chapter_1/tick ] >>> 第一章每 tick 一次 / chapter 1 once per tick

# ===================================================

# main/loop 是 as @a at @s 跑的，每個玩家都會跑一遍
# BOSS 這種一 tick 只該處理一次的東西放這裡，不然多人時會跑幾遍
#
# 由 main:tick 呼叫，排在 monsters:guide 後面 —— monsters:main 每 tick 會用
# cast.at 重算 monster.skill.cast.cd，main.boss 要讀到的是這一 tick 的新值

function unstable_rift:chapter_1/tick
