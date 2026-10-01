# ===================================================
# 第一章每 tick 一次 / chapter 1 once per tick

    ## Guide [ function unstable_rift:chapter_1/tick ] >>> 第一章每 tick 一次 / chapter 1 once per tick
    ## Guide [ function unstable_rift:main/tick ] >>> 裂隙每 tick 一次 / rift once per tick
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/summon ] >>> 召喚 亞斯 / summon stormpromax
    ## Guide [ function unstable_rift:chapter_1/1/stormpromax/main ] >>> 亞斯 排程 / stormpromax scheduler

# ===================================================

# 破碎之城的 BOSS / broken city boss
#
# 亞斯是手動召喚的，所以這裡不看玩家在不在裂隙狀態，只看「BOSS 在場」與
# 「有人靠得夠近」。範圍 80 格對齊 main.boss 掛血條的 @a[distance=..80]。
#
# 距離一定要從 BOSS 身上量：這支函數是 main:tick 叫的，沒有位置上下文，
# 直接寫 @a[distance=..80] 會變成從世界原點算，永遠不成立。
#
# 兩個選擇器都 limit=1 + arbitrary，找到一個就停，不要整張圖掃完。

execute \
    as @e[tag=stormpromax,limit=1,sort=arbitrary,type=zombie] at @s \
    if entity @a[limit=1,sort=arbitrary,distance=..80] run \
function unstable_rift:chapter_1/1/stormpromax/main
