# ===================================================
# 裂境 生怪磚 召喚 深淵骷髏 / unstable rift spawner summon abyss skeleton

    ## Guide [ function unstable_rift:spawner/type/chapter_1/abyss_skeleton/summon ] >>> 裂境 生怪磚 召喚 深淵骷髏 / unstable rift spawner summon abyss skeleton
    ## Guide [ function unstable_rift:spawner/setup/guide ] >>> 裂境 生怪磚 召喚分派 / unstable rift spawner summon dispatch
    ## Guide [ function monsters:summon/chapter_1/abyss_skeleton ] >>> 召喚 深淵骷髏 / summon abyss skeleton

# ===================================================

# 這一層只負責「接線」，怪物資料一律放在 monsters:summon/ 底下
# 要加新怪就開 unstable_rift:spawner/type/<mob>/summon，裡面一行指到對應的召喚函式
# <mob> 就是 get / place 傳進去的 mob 參數
#
# 執行者是生怪磚生出來的銀魚，位置就是怪物要出現的位置
# 銀魚的 tp / kill 由 unstable_rift:spawner/setup/use 收尾，這裡不用處理


function monsters:summon/chapter_1/abyss_skeleton
