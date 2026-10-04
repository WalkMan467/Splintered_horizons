# ===================================================
# 裂境 生怪磚 召喚 深淵骷髏 / unstable rift spawner summon abyss skeleton

    ## Guide [ function unstable_rift:spawner/type/chapter_1/abyss_skeleton/summon ] >>> 裂境 生怪磚 召喚 深淵骷髏 / unstable rift spawner summon abyss skeleton
    ## Guide [ function unstable_rift:spawner/setup/guide ] >>> 裂境 生怪磚 召喚分派 / unstable rift spawner summon dispatch
    ## Guide [ function unstable_rift:chapter_1/1/config ] >>> 破碎之城 參數 / broken city config
    ## Guide [ function unstable_rift:chapter_1/1/monsters/abyss_skeleton/summon ] >>> 破碎之城 召喚 深淵骷髏 / broken city summon abyss skeleton

# ===================================================

# 這一層只負責「接線」，怪物資料一律放在各區自己的 monsters/ 底下
# 要加新怪就開 unstable_rift:spawner/type/<mob>/summon，裡面指到對應的召喚函式
# <mob> 就是 get / place 傳進去的 mob 參數
#
# 執行者是生怪磚生出來的銀魚，位置就是怪物要出現的位置
# 銀魚的 tp / kill 由 unstable_rift:spawner/setup/use 收尾，這裡不用處理
#
# 跟 chapter_1/loop 一樣的做法：先跑自己的 config 把 storage args 補上，
# 再把召喚叫起來 —— 那隻的 setup 要吃 $(area) 才算得出侵蝕階段的加成
#
# args 是全裂隙共用的，但 spawner/main 排在 chapter_1/loop 後面，
# 這一 tick 之後沒人再讀它，下一 tick 的 chapter_1/loop 會重新設回去


function unstable_rift:chapter_1/1/config

function unstable_rift:chapter_1/1/monsters/abyss_skeleton/summon
