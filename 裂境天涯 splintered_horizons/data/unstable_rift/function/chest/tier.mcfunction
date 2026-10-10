# ===================================================
# 裂境 寶箱 隱藏分換算等級 / hidden score to loot tier

    ## Guide [ function unstable_rift:chest/tier ] >>> 裂境 寶箱 隱藏分換算等級 / hidden score to loot tier
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score
    ## Guide [ function unstable_rift:chest/debug/loop ] >>> 裂境 寶箱 debug 顯示 / rift chest debug display
    ## Guide [ function unstable_rift:chest/credit/apply ] >>> 裂境 寶箱 加分與連結線 / credit the kill and draw the link

# ===================================================

# 執行者是寶箱的紀錄點 marker
# 把它身上的隱藏分換算成 1~4，寫進 #unstable_rift.chest.tier global.main
#
# 門檻就是下面這四行，要調平衡改這裡 —— 開箱結算、debug 顯示、擊殺連結線的顏色
# 三邊都讀這支，各自再寫一份門檻的話調平衡一定會漏掉某一邊
#
# 單隻怪的 reward_points 是侵蝕階段 0 的 8~15 到階段 4 的 45~70，所以同一組門檻
# 在不同階段代表的擊殺數差很多：穩定要 16 殺才到 t4，吞噬 4 殺就到。
# 階段的放大是靠「高階更容易開到高 tier」，不是靠把表的內容撐大
#
# 預設 1 是保底：沒有分數的紀錄點 matches 的條件全不成立，所以保底直接寫在最上面


scoreboard players set #unstable_rift.chest.tier global.main 1

execute \
    if score @s unstable_rift.chest.score matches 30..79 run \
scoreboard players set #unstable_rift.chest.tier global.main 2

execute \
    if score @s unstable_rift.chest.score matches 80..179 run \
scoreboard players set #unstable_rift.chest.tier global.main 3

execute \
    if score @s unstable_rift.chest.score matches 180.. run \
scoreboard players set #unstable_rift.chest.tier global.main 4
