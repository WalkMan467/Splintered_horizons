# ===================================================
# 進入破碎之城 / enter the broken city

    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/config ] >>> 破碎之城 參數 / broken city config
    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:main/back/record ] >>> 紀錄進入前的座標 / record the position before entering
    ## Guide [ function unstable_rift:main/back/use ] >>> 傳送回進入前的座標 / teleport back to the recorded position

# ===================================================
# 執行者 : 玩家
#
# 完整的入口手動下這一行就會走完整套流程：
#   記座標 → 傳送進去 → 上標籤 → 存背包並清空 → 開始倒數
#
# 少了標籤與倒數，人傳過去之後就沒有任何東西會把他帶回來，
# 所以這兩件事不能留在生態域判定那條路上

function unstable_rift:chapter_1/1/config
function unstable_rift:main/in with storage unstable_rift:main args
