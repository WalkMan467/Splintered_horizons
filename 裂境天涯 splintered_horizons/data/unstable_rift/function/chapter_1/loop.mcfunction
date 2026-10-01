# ===================================================
# 第一章的裂隙 / chapter 1 rifts

    ## Guide [ function unstable_rift:chapter_1/loop ] >>> 第一章的裂隙 / chapter 1 rifts
    ## Guide [ function unstable_rift:main/loop ] >>> 裂隙主迴圈 / rift main loop
    ## Guide [ function unstable_rift:main/detect ] >>> 裂隙進出偵測 / rift enter-exit detection
    ## Guide [ function unstable_rift:main/timer/use ] >>> 倒數計時 / countdown tick

# ===================================================

# 執行者 : 玩家
#
# 每一區都是「先跑自己的 config，再把通用邏輯叫起來」。
# 加一區就多三行，邏輯本體不用動。

# 破碎之城 / broken city

function unstable_rift:chapter_1/1/config
function unstable_rift:main/detect with storage unstable_rift:main args
function unstable_rift:main/timer/use with storage unstable_rift:main args
