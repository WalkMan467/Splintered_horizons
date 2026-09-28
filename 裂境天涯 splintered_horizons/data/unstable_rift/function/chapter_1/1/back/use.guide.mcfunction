# ===================================================
# 傳送巨集 / teleport macro

    ## Guide [ function unstable_rift:chapter_1/1/back/use ] >>> 傳送回進入前的座標 / teleport back to the recorded position
    ## Guide [ function unstable_rift:chapter_1/1/back/record ] >>> 紀錄進入前的座標 / record the position before entering

# ===================================================

# 參數 : x y z 進入前的座標
#
# 走 `positioned` 再 `tp ~ ~ ~`，跟 players:void_protection/rollback/use.guide 同一套寫法

$execute \
    positioned $(x) $(y) $(z) run \
tp @s ~ ~ ~
