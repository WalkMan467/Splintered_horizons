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
# 「有人靠得夠近」範圍 80 格對齊 main.boss 掛血條的 @a[distance=..80]
#
# 距離一定要從 BOSS 身上量：這支函數是 main:tick 叫的，沒有位置上下文，
# 直接寫 @a[distance=..80] 會變成從世界原點算，永遠不成立
#
# 兩個選擇器都 limit=1 + arbitrary，找到一個就停，不要整張圖掃完

execute \
    as @e[tag=stormpromax,limit=1,sort=arbitrary,type=zombie] at @s \
    if entity @a[limit=1,sort=arbitrary,distance=..80] run \
function unstable_rift:chapter_1/1/stormpromax/main

# 破碎之城的選武器房 / broken city weapon select room
#
# 房間裡沒人就收掉三個座位與骰出來的三把，下一個進來的玩家才會重新骰
# 離線的人不在 @a 裡，所以斷線卡在房間的情況也會被這條收掉
#
# 放在 tick 不放 loop：這是全場共用的狀態，一 tick 只該判斷一次
#
# in minecraft:the_end 不能省：@e 只搜當前維度，這支是 main:tick 叫的，
# 執行維度是主世界

execute \
    in minecraft:the_end \
    if entity @e[tag=unstable_rift.chapter_1.1.weapon_select.act,limit=1,sort=arbitrary,type=interaction] \
    unless entity @a[tag=unstable_rift.chapter_1.1.weapon_select,limit=1] run \
function unstable_rift:chapter_1/1/weapon_select/reset

# 侵蝕度 / erosion
#
# 一條侵蝕度是整個區域共用的，所以放 tick 不放 loop —— loop 是
# as @a at @s 跑的，多人時會一 tick 上升好幾次

function unstable_rift:chapter_1/1/config
function unstable_rift:main/erosion/tick with storage unstable_rift:main args
