# ===================================================
# 裂境 寶箱 視線搜尋 / trace the line of sight

    ## Guide [ function unstable_rift:chest/ray/step ] >>> 裂境 寶箱 視線搜尋 / trace the line of sight
    ## Guide [ function unstable_rift:chest/ray/use ] >>> 裂境 寶箱 視線搜尋 入口 / rift chest line-of-sight entry
    ## Guide [ function unstable_rift:chest/ray/hit ] >>> 裂境 寶箱 視線找到了 / the chest was found

# ===================================================

# 沿著玩家視線每次往前 0.1 格，最多 8 格，碰到第一個箱子就收工
#
# 這裡只認方塊是不是 minecraft:chest，「是不是裂境寶箱」留到 hit 再判


execute \
    if block ~ ~ ~ minecraft:chest \
    run return run \
function unstable_rift:chest/ray/hit

execute \
    if score #unstable_rift.chest.ray global.main matches ..0 run \
return 0

scoreboard players remove #unstable_rift.chest.ray global.main 1

execute positioned ^ ^ ^0.1 run \
function unstable_rift:chest/ray/step
