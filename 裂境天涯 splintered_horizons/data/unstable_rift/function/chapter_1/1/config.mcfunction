# ===================================================
# 破碎之城 參數 / broken city config

    ## Guide [ function unstable_rift:chapter_1/1/config ] >>> 破碎之城 參數 / broken city config
    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:main/out ] >>> 離開裂隙 / leave the rift

# ===================================================
# 這一區的參數全在這裡，邏輯本體在 unstable_rift:main/ 底下
#
# path          : 生態域與進度的路徑
# area          : 標籤、記分板、血條、storage 用的區域名
# time          : 待在裡面的 tick 數
# bag           : players:inventory 存背包的袋子名
# grace         : 被送出來之後的再進入寬限 tick
# title         : 血條標題的翻譯鍵
# weapon_select : 開了就先進選武器房 3 選 1，按下確定才正式開局
# select_time   : 選武器的逾時 tick，沒選就還背包送回去
# erosion_sys   : 是否啟用侵蝕系統
# erosion_max   : 侵蝕度上限。階段門檻寫死在 1000 制，改這個要連
#                 main/erosion/stage 的 250 / 500 / 750 / 1000 一起改
# 降落點不在這裡，在 unstable_rift:chapter_1/1/land
# 選武器房的座標也不在這裡，在 unstable_rift:chapter_1/1/weapon_select/tp
#
# 新增一個裂隙區域 = 複製 config / tp / in / out / land
# 加一組 advancement、一個生態域，再到 chapter_1/loop 補四行
#
# 要選武器房就多加 weapon_select 跟 select_time 兩個參數，
# 再複製一份 weapon_select/ 改座標與武器池

data modify storage unstable_rift:main args set value {path:"chapter_1/1",area:"chapter_1.1",time:24000,bag:"overworld",grace:200,title:"unstable_rift.chapter_1.1.timer",fallback:"剩餘時間",weapon_select:1b,select_time:6000,erosion_sys:1b,erosion_max:1000}
