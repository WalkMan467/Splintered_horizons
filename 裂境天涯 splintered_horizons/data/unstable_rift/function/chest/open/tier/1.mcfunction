# ===================================================
# 裂境 寶箱 戰利品 t1 / rift chest loot t1

    ## Guide [ function unstable_rift:chest/open/tier/1 ] >>> 裂境 寶箱 戰利品 t1 / rift chest loot t1
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 保底：完全沒擊殺或殺得很少
#
# loot insert 會像漏斗一樣從第一格開始塞，不是原版那種散開排法。
# 要散開就得改用方塊實體的 LootTable 欄位，但那要等下一次開箱才會展開，
# 玩家這一次會看到空箱子，所以這裡用 insert


loot insert ~ ~ ~ loot unstable_rift:chest/t1

playsound minecraft:block.chest.open voice @a ~ ~ ~ 1 0.8
particle minecraft:smoke ~ ~0.8 ~ 0.3 0.2 0.3 0.01 15 force @a
