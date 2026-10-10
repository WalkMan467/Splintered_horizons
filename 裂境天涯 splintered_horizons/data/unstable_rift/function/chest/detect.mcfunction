# ===================================================
# 裂境 寶箱 手放偵測 / rift chest hand-place detection

    ## Guide [ function unstable_rift:chest/detect ] >>> 裂境 寶箱 手放偵測 / rift chest hand-place detection
    ## Guide [ function unstable_rift:chest/ray/use ] >>> 裂境 寶箱 視線搜尋 入口 / rift chest line-of-sight entry
    ## Guide [ function unstable_rift:util/scan/use ] >>> 裂境 周圍掃描 入口 / neighbourhood scan entry
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 執行者是玩家，由 advancement unstable_rift:chest/placed 觸發
#
# 放下的單箱一律註冊，「是不是裂境寶箱」留到開箱結算那一刻才判
# （chest/open/settle 會看 8 格內有沒有生怪磚重建點），
# 這樣放置順序就不影響結果
#
# 跟生怪磚一樣兩條路都走：視線射線蓋遠距離，11x11x11 掃描不吃視角補漏接


advancement revoke @s only unstable_rift:chest/placed

scoreboard players set #unstable_rift.chest.ray.mode global.main 1

function unstable_rift:chest/ray/use

# 保險：不管射線中沒中，都掃一次周圍

scoreboard players set #unstable_rift.scan.mode global.main 2

function unstable_rift:util/scan/use
