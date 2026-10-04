# ===================================================
# 第一章的裂隙 / chapter 1 rifts

    ## Guide [ function unstable_rift:chapter_1/loop ] >>> 第一章的裂隙 / chapter 1 rifts
    ## Guide [ function unstable_rift:main/loop ] >>> 裂隙主迴圈 / rift main loop
    ## Guide [ function unstable_rift:main/detect ] >>> 裂隙進出偵測 / rift enter-exit detection
    ## Guide [ function unstable_rift:main/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:main/weapon_select/use ] >>> 選武器逾時倒數 / weapon select timeout tick
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/act ] >>> 點到座位 / a pedestal got clicked

# ===================================================

# 執行者 : 玩家
#
# 每一區都是「先跑自己的 config，再把通用邏輯叫起來」
# 加一區就多三行，有選武器房的再多兩行，邏輯本體不用動

# 破碎之城 / broken city

function unstable_rift:chapter_1/1/config
function unstable_rift:main/detect with storage unstable_rift:main args
function unstable_rift:main/timer/use with storage unstable_rift:main args
function unstable_rift:main/weapon_select/use with storage unstable_rift:main args

# 選武器房的點擊偵測
#
# 只有正在選武器的人會跑，三個座位都在 16 格內，所以選擇器限範圍收掉全圖搜尋

execute \
    if entity @s[tag=unstable_rift.chapter_1.1.weapon_select] \
    as @e[tag=unstable_rift.chapter_1.1.weapon_select.act,distance=..16,type=interaction] at @s \
    if data entity @s interaction.timestamp run \
function unstable_rift:chapter_1/1/weapon_select/act