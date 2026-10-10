# ===================================================
# 裂境 寶箱 戰利品 t2 / rift chest loot t2

    ## Guide [ function unstable_rift:chest/open/tier/2 ] >>> 裂境 寶箱 戰利品 t2 / rift chest loot t2
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 清一輪的標準回報（穩定階段約 3~6 殺）
#
# 表是 chest/<stage>/t2，stage 由 settle 從 storage 傳進來：
# 0 穩定 / 1 鬆動 / 2 錯位 / 3 崩解 / 4 吞噬
#
# loot insert 會像漏斗一樣從第一格開始塞，不是原版那種散開排法。
# 要散開就得改用方塊實體的 LootTable 欄位，但那要等下一次開箱才會展開，
# 玩家這一次會看到空箱子，所以這裡用 insert


$loot insert ~ ~ ~ loot unstable_rift:chest/$(stage)/t2

playsound minecraft:block.chest.open voice @a ~ ~ ~ 1 1
playsound minecraft:block.amethyst_block.chime voice @a ~ ~ ~ 0.8 1.2
particle minecraft:enchant ~ ~1 ~ 0.4 0.4 0.4 1 30 force @a
