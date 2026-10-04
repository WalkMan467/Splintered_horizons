# ===================================================
# 裂境 寶箱 手放偵測 / rift chest hand-place detection

    ## Guide [ function unstable_rift:chest/detect ] >>> 裂境 寶箱 手放偵測 / rift chest hand-place detection
    ## Guide [ function unstable_rift:chest/ray/use ] >>> 裂境 寶箱 視線搜尋 入口 / rift chest line-of-sight entry
    ## Guide [ function unstable_rift:chest/register ] >>> 裂境 寶箱 註冊 / register the rift chest

# ===================================================

# 執行者是玩家，由 advancement unstable_rift:chest/placed 觸發
#
# advancement 只濾「放下的是 minecraft:chest」，所以在裂境外面放箱子也會跑一輪
# 射線。白跑 80 步而已，而且 hit 那邊要 8 格內有生怪磚才會真的註冊


advancement revoke @s only unstable_rift:chest/placed

scoreboard players set #unstable_rift.chest.ray.mode global.main 1

function unstable_rift:chest/ray/use
