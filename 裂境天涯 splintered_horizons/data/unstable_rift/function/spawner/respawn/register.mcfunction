# ===================================================
# 裂境 生怪磚 註冊重建點 / unstable rift spawner register rebuild point

    ## Guide [ function unstable_rift:spawner/respawn/register ] >>> 裂境 生怪磚 註冊重建點（預設 300s）/ register the rebuild point (default 300s)
    ## Guide [ function unstable_rift:spawner/respawn/register.guide ] >>> 裂境 生怪磚 註冊重建點 指定秒數 / register the rebuild point with a custom delay
    ## Guide [ function unstable_rift:spawner/place ] >>> 裂境 生怪磚 放置並註冊 / unstable rift spawner place and register

# ===================================================

# 在生怪磚那一格執行，預設 300 秒後重建
# 要改秒數就直接跑 register.guide


function unstable_rift:spawner/respawn/register.guide {seconds:300}

    # Example:
# execute in minecraft:the_end positioned 10000 60 10000 run function unstable_rift:spawner/respawn/register
