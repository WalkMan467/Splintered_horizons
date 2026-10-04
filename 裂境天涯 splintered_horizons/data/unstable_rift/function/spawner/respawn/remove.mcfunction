# ===================================================
# 裂境 生怪磚 解除註冊 / unstable rift spawner unregister

    ## Guide [ function unstable_rift:spawner/respawn/remove ] >>> 裂境 生怪磚 解除註冊 / unstable rift spawner unregister
    ## Guide [ function unstable_rift:spawner/respawn/register ] >>> 裂境 生怪磚 註冊重建點（預設 300s）/ register the rebuild point (default 300s)

# ===================================================

# 在生怪磚那一格執行，把重建點 marker 清掉
# 解除註冊之後那顆生怪磚被破壞就不會再回來了（方塊本身不動，要拆自己 setblock）


execute align xyz positioned ~0.5 ~0.5 ~0.5 run \
kill @e[tag=unstable_rift.spawner.point,distance=..0.5,sort=arbitrary,type=marker]

    # Example:
# execute in minecraft:the_end positioned 10000 60 10000 run function unstable_rift:spawner/respawn/remove
