# ===================================================
# 裂境 周圍掃描 X 迴圈 / scan x loop

    ## Guide [ function unstable_rift:util/scan/x ] >>> 裂境 周圍掃描 X 迴圈 / scan x loop
    ## Guide [ function unstable_rift:util/scan/use ] >>> 裂境 周圍掃描 入口 / neighbourhood scan entry
    ## Guide [ function unstable_rift:util/scan/y ] >>> 裂境 周圍掃描 Y 迴圈 / scan y loop

# ===================================================

# 每一層 X 先把 Y 跑完，再把自己往 +X 推一格
#
# 下面的 ~1 是相對「這一次呼叫的位置」，巢狀的 Y / Z 用的是各自的 execute 分支，
# 不會污染這裡的座標
#
# scan.hit 一旦被 scan/hit 設成 1 就不再往下推，剩下的格子直接不掃


scoreboard players set #unstable_rift.scan.y global.main 11

function unstable_rift:util/scan/y

scoreboard players remove #unstable_rift.scan.x global.main 1

execute \
    if score #unstable_rift.scan.hit global.main matches 0 \
    if score #unstable_rift.scan.x global.main matches 1.. \
    positioned ~1 ~ ~ run \
function unstable_rift:util/scan/x
