# ===================================================
# 裂境 寶箱 戰利品 t4 / rift chest loot t4

    ## Guide [ function unstable_rift:chest/open/tier/4 ] >>> 裂境 寶箱 戰利品 t4 / rift chest loot t4
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 最高級。但吞噬階段 4 殺就到，所以內容要耐得住重複，不能放一次性的驚喜
#
# 表是 chest/<stage>/t4，stage 由 settle 從 storage 傳進來：
# 0 穩定 / 1 鬆動 / 2 錯位 / 3 崩解 / 4 吞噬
#
# loot insert 會像漏斗一樣從第一格開始塞，不是原版那種散開排法。
# 要散開就得改用方塊實體的 LootTable 欄位，但那要等下一次開箱才會展開，
# 玩家這一次會看到空箱子，所以這裡用 insert


$loot insert ~ ~ ~ loot unstable_rift:chest/$(stage)/t4

playsound minecraft:block.chest.open voice @a ~ ~ ~ 1 1
playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~ ~ 1 0.7
playsound minecraft:ui.toast.challenge_complete voice @a ~ ~ ~ 1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0.4 0.5 0.4 0.4 80 force @a
particle minecraft:end_rod ~ ~1 ~ 0.3 0.4 0.3 0.1 60 force @a
