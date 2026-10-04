# ===================================================
# 裂境 寶箱 解除註冊 / unregister the rift chest

    ## Guide [ function unstable_rift:chest/remove ] >>> 裂境 寶箱 解除註冊 / unregister the rift chest
    ## Guide [ function unstable_rift:chest/register ] >>> 裂境 寶箱 註冊 / register the rift chest

# ===================================================

# 在寶箱那一格執行，把紀錄點 marker 清掉
# 解除之後那個箱子就是普通箱子：不累積分數、開了也不會出戰利品、不跟著刷新
# 方塊本身不動，要拆自己 setblock


execute align xyz positioned ~0.5 ~0.5 ~0.5 run \
kill @e[tag=unstable_rift.chest.point,distance=..0.5,sort=arbitrary,type=marker]

    # Example:
# execute in minecraft:the_end positioned 10000 60 10000 run function unstable_rift:chest/remove
