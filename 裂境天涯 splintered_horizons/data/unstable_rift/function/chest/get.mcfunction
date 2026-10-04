# ===================================================
# 裂境 寶箱 取得物品 / rift chest get item

    ## Guide [ function unstable_rift:chest/get ] >>> 裂境 寶箱 取得物品 / rift chest get item
    ## Guide [ function unstable_rift:chest/place ] >>> 裂境 寶箱 放置並註冊 / rift chest place and register
    ## Guide [ function unstable_rift:chest/detect ] >>> 裂境 寶箱 手放偵測 / rift chest hand-place detection

# ===================================================

# 就是一個改過名字的普通箱子 —— 裂境寶箱的身分不靠物品認，
# 靠的是放下來那一格 8 格內有沒有生怪磚重建點（見 unstable_rift:chest/ray/hit）
#
# 所以拿原版箱子放在生怪磚旁邊也會生效，這個物品只是建圖時好認


give @s chest[item_name={"bold":true,"color":"dark_purple","fallback":"裂境寶箱","italic":false,"translate":"block.unstable_rift.chest"}] 1
