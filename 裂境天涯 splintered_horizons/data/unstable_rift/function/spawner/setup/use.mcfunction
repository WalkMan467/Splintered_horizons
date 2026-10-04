# ===================================================
# 裂境 生怪磚 召喚處理 / unstable rift spawner summon handler

    ## Guide [ function unstable_rift:spawner/setup/use ] >>> 裂境 生怪磚 召喚處理 / unstable rift spawner summon handler
    ## Guide [ function unstable_rift:spawner/setup/guide ] >>> 裂境 生怪磚 召喚分派 / unstable rift spawner summon dispatch
    ## Guide [ function unstable_rift:spawner/main ] >>> 裂境 生怪磚 主程式 / unstable rift spawner main

# ===================================================

# 執行者是生怪磚生出來的銀魚
# 在銀魚的位置召喚對應怪物，然後把銀魚丟到虛空殺掉（跟 spawner:setup/use 同一套做法）


function unstable_rift:spawner/setup/guide with entity @s data

data modify entity @s DeathLootTable set value "-"
tp @s ~ -255 ~
kill @s
