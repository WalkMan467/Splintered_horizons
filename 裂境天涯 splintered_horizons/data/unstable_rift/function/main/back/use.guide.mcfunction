# ===================================================
# 傳送巨集 / teleport macro

    ## Guide [ function unstable_rift:main/back/record ] >>> 紀錄進入前的座標 / record the position before entering
    ## Guide [ function unstable_rift:main/back/use ] >>> 傳送回進入前的座標 / teleport back to the recorded position
    ## Guide [ function unstable_rift:main/back/use.guide ] >>> 傳送巨集 / teleport macro
    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 傳送 / teleport into the broken city
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down

# ===================================================

# 參數 : dim 進入前的維度 | x y z 進入前的座標
#
# 寫法跟 players:void_protection/rollback/use.guide 一樣，
# 只是多一個 in $(dim) —— positioned 只換座標不換維度，
# 裂隙是跨維度的，少了它人會留在裂隙那個維度裡

$execute \
    in $(dim) positioned $(x) $(y) $(z) run \
tp @s ~ ~ ~
