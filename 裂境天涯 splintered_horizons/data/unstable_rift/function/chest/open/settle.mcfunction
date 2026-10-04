# ===================================================
# 裂境 寶箱 結算 / settle the hidden score

    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score
    ## Guide [ function unstable_rift:chest/ray/hit ] >>> 裂境 寶箱 視線找到了 / the chest was found
    ## Guide [ function unstable_rift:chest/credit/kill ] >>> 裂境 寶箱 擊殺加分 / credit a kill to the nearest chest
    ## Guide [ function unstable_rift:chest/refresh ] >>> 裂境 寶箱 刷新 / refresh the rift chest

# ===================================================

# 執行者是寶箱的紀錄點 marker，位置就是寶箱那一格


tag @s add unstable_rift.chest.opened

# 沒有分數的 marker 補 0，不然下面四條 matches 全不成立，一件東西都不會出

execute \
    unless score @s unstable_rift.chest.score matches -2147483648..2147483647 run \
scoreboard players set @s unstable_rift.chest.score 0

# 門檻就是下面這四行，要調平衡改這裡
#
# 單隻怪的 reward_points 是侵蝕階段 1 的 8~15 到階段 5 的 45~70，
# 一顆生怪磚的 MaxNearbyEntities 預設 6，所以大概是：
#   階段 1 清光一輪 ≈ 70 分 -> t2
#   階段 5 清三隻 ≈ 150 分 -> t3，四隻以上 -> t4
# 侵蝕度越高、同樣的擊殺數拿到越好的箱子，這是刻意的

execute \
    if score @s unstable_rift.chest.score matches ..29 run \
function unstable_rift:chest/open/tier/1

execute \
    if score @s unstable_rift.chest.score matches 30..79 run \
function unstable_rift:chest/open/tier/2

execute \
    if score @s unstable_rift.chest.score matches 80..179 run \
function unstable_rift:chest/open/tier/3

execute \
    if score @s unstable_rift.chest.score matches 180.. run \
function unstable_rift:chest/open/tier/4
