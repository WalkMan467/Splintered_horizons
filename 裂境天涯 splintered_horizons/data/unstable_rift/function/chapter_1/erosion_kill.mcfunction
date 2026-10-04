# ===================================================
# 第一章的擊殺扣除 / chapter 1 kill deduction

    ## Guide [ function unstable_rift:main/erosion/kill/any ] >>> 擊殺 普通怪物 / normal kill
    ## Guide [ function unstable_rift:chapter_1/erosion_kill ] >>> 第一章的擊殺扣除 / chapter 1 kill deduction
    ## Guide [ function unstable_rift:main/erosion/sub ] >>> 扣除侵蝕度 / subtract erosion

# ===================================================

# 執行者 : 擊殺的玩家
#
# 跟 chapter_1/loop 一樣：先跑自己的 config 再把通用邏輯叫起來。
# 加一區就多兩行

# 破碎之城 / broken city

function unstable_rift:chapter_1/1/config
function unstable_rift:main/erosion/sub with storage unstable_rift:main args
