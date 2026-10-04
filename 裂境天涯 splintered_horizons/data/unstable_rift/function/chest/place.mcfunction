# ===================================================
# 裂境 寶箱 放置並註冊 / rift chest place and register

    ## Guide [ function unstable_rift:chest/place ] >>> 裂境 寶箱 放置並註冊 / rift chest place and register
    ## Guide [ function unstable_rift:chest/register ] >>> 裂境 寶箱 註冊 / register the rift chest
    ## Guide [ function unstable_rift:chest/get ] >>> 裂境 寶箱 取得物品 / rift chest get item

# ===================================================

# 執行位置就是箱子要放的那一格，所以要配 execute positioned 用
# 用指令建圖走這條，不靠視線
#
# facing 是 north / south / west / east


$setblock ~ ~ ~ minecraft:chest[facing=$(facing)]

function unstable_rift:chest/register

    # Example:
# execute in minecraft:the_end positioned 10000 60 10000 run function unstable_rift:chest/place {facing:"north"}
