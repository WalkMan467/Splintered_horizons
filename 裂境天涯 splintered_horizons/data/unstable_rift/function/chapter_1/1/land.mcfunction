# ===================================================
# 破碎之城 降落點 / broken city landing spots

    ## Guide [ function unstable_rift:chapter_1/1/land ] >>> 破碎之城 降落點 / broken city landing spots
    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/config ] >>> 破碎之城 參數 / broken city config
    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:main/back/record ] >>> 紀錄進入前的座標 / record the position before entering

# ===================================================

# 執行者 : 玩家
#
# 每次進來擲一次 1..8，落在對應的點
# 這支是區域專屬的：main/in 只負責叫它，要固定點還是隨機表由各區域自己決定
#
# execute in 會一併換維度，tp 只給座標是不換維度的

execute \
    store result score @s unstable_rift.player.land run \
random value 1..5

execute \
    if score @s unstable_rift.player.land matches 1 \
    in minecraft:the_end run \
tp @s -2164 61 5857 -90 0

execute \
    if score @s unstable_rift.player.land matches 2 \
    in minecraft:the_end run \
tp @s -2047 69 5890 110 0

execute \
    if score @s unstable_rift.player.land matches 3 \
    in minecraft:the_end run \
tp @s -2049 71 5814 65 -6

execute \
    if score @s unstable_rift.player.land matches 4 \
    in minecraft:the_end run \
tp @s -2041 21 5863 135 -10

execute \
    if score @s unstable_rift.player.land matches 5 \
    in minecraft:the_end run \
tp @s -2122 103 5893 108 7

scoreboard players reset @s unstable_rift.player.land
