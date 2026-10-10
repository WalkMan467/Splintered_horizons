# ===================================================
# 裂境 寶箱 戰利品 t3 / rift chest loot t3

    ## Guide [ function unstable_rift:chest/open/tier/3 ] >>> 裂境 寶箱 戰利品 t3 / rift chest loot t3
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 刻意硬清的回報。穩定階段的天花板，要值得冒著侵蝕飆升留下來清場
#
# 表是 chest/<stage>/t3，stage 由 settle 從 storage 傳進來：
# 0 穩定 / 1 鬆動 / 2 錯位 / 3 崩解 / 4 吞噬
#
# loot insert 會像漏斗一樣從第一格開始塞，不是原版那種散開排法。
# 要散開就得改用方塊實體的 LootTable 欄位，但那要等下一次開箱才會展開，
# 玩家這一次會看到空箱子，所以這裡用 insert


$loot insert ~ ~ ~ loot unstable_rift:chest/$(stage)/t3

playsound minecraft:block.chest.open voice @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.activate voice @a ~ ~ ~ 0.7 1.4
particle minecraft:end_rod ~ ~1 ~ 0.3 0.3 0.3 0.06 40 force @a
particle minecraft:squid_ink ~ ~1 ~ 0.4 0.4 0.4 0.3 25 force @a
