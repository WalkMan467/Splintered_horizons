# ===================================================
# 破碎之城 參數 / broken city config

    ## Guide [ function unstable_rift:chapter_1/1/config ] >>> 破碎之城 參數 / broken city config
    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:main/out ] >>> 離開裂隙 / leave the rift

# ===================================================
# 這一區的參數全在這裡，邏輯本體在 unstable_rift:main/ 底下。
#
# path     : 生態域與進度的路徑
# area     : 標籤、記分板、血條、storage 用的區域名
# time     : 待在裡面的 tick 數
# bag      : players:inventory 存背包的袋子名
# grace    : 被送出來之後的再進入寬限 tick
# title    : 血條標題的翻譯鍵
# 降落點不在這裡，在 unstable_rift:chapter_1/1/land
#
# 新增一個裂隙區域 = 複製 config / tp / in / out / land 五個檔，
# 加一組 advancement、一個生態域，再到 chapter_1/loop 補三行

data modify storage unstable_rift:main args set value {path:"chapter_1/1",area:"chapter_1.1",time:12000,bag:"overworld",grace:100,title:"unstable_rift.chapter_1.1.timer",fallback:"剩餘時間"}
