# ===================================================
# 裂境 寶箱 開箱偵測 / rift chest open detection

    ## Guide [ function unstable_rift:chest/open/detect ] >>> 裂境 寶箱 開箱偵測 / rift chest open detection
    ## Guide [ function unstable_rift:chest/ray/use ] >>> 裂境 寶箱 視線搜尋 入口 / rift chest line-of-sight entry
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 執行者是玩家，由 advancement unstable_rift:chest/opened 觸發
#
# default_block_use 是「對方塊做它的預設互動」—— 開箱子就是這個。
# 26.3 的 conditions 跟 placed_block 一樣只有 player 與 location
#
# 戰利品是這一刻才放進去的，GUI 已經開著的話玩家會看到物品長出來，
# 剛好就是結算的演出


advancement revoke @s only unstable_rift:chest/opened

scoreboard players set #unstable_rift.chest.ray.mode global.main 2

function unstable_rift:chest/ray/use
