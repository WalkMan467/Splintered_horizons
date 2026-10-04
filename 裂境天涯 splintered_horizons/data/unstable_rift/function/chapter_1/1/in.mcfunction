# ===================================================
# 進入破碎之城 進度觸發 / broken city advancement hook

    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/config ] >>> 破碎之城 參數 / broken city config
    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift

# ===================================================
# 由 advancement unstable_rift:chapter_1/1/in 的 rewards 觸發
#
# 進度的 rewards 不能帶參數，所以這層薄包裝省不掉；
# 實際的流程全部在 tp 裡，手動下指令走的是同一條路

function unstable_rift:chapter_1/1/tp