# ===================================================
# 裂境 寶箱 取得物品 / rift chest get item

    ## Guide [ function unstable_rift:chest/get ] >>> 裂境 寶箱 取得物品 / rift chest get item
    ## Guide [ function unstable_rift:chest/place ] >>> 裂境 寶箱 放置並註冊 / rift chest place and register
    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score

# ===================================================

# 就是一個改過名字的普通箱子 —— 裂境寶箱的身分不靠物品認
#
# 判定是在「開箱結算的那一刻 8 格內有沒有生怪磚重建點」（見 chest/open/settle）。
# 放置的時候一律註冊，所以放箱子跟放生怪磚誰先誰後都沒差
#
# 也就是說拿原版箱子擺在生怪磚旁邊一樣生效，這個物品只是建圖時好認


give @s chest[item_name={"bold":true,"color":"dark_purple","fallback":"裂境寶箱","italic":false,"translate":"block.unstable_rift.chest"}] 1