# ===================================================
# 裂境 寶箱 debug 文字 / write the debug text

    ## Guide [ function unstable_rift:chest/debug/text ] >>> 裂境 寶箱 debug 文字 / write the debug text
    ## Guide [ function unstable_rift:chest/debug/loop ] >>> 裂境 寶箱 debug 顯示 / rift chest debug display
    ## Guide [ function unstable_rift:chest/debug/summon ] >>> 裂境 寶箱 debug 文字牌 / summon the debug label

# ===================================================

# 執行者是寶箱上方的 debug 文字牌


# 每 tick 續命 10
#
# 創造模式玩家走開、或是切回生存，就沒人再刷新這個分數，
# main:duration/main 會把它扣到 -1 然後 kill 掉 ——
# 這樣就不用自己拿一個大半徑去追「哪一塊牌子該被清掉」

scoreboard players set @s duration 10

# 戰利品表路徑照 chest/<stage>/t<tier> 拼，跟 chest/open/tier/* 真的 loot 的那條一樣：
# stage 來自看牌子的那個玩家身上的區域標籤，tier 由 chest/tier 從隱藏分換算
#
# 「生怪磚 無」的時候整支 settle 會 return，那條路徑是不會用到的

$data modify entity @s text set value {"text":"","extra":[{"text":"[裂境寶箱 DEBUG]\n","color":"light_purple","bold":true},{"text":"隱藏分 ","color":"gray"},{"text":"$(score)","color":"yellow"},{"text":"  →  t$(tier)\n","color":"gray"},{"text":"unstable_rift:chest/$(stage)/t$(tier)\n","color":"aqua"},$(opened),{"text":"   生怪磚 ","color":"gray"},$(spawner)]}
