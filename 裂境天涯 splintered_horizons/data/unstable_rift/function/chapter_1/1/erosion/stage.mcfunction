# ===================================================
# 破碎之城 階段效果 / broken city stage effects

    ## Guide [ function unstable_rift:main/erosion/change ] >>> 跨階段 / cross a stage threshold
    ## Guide [ function unstable_rift:chapter_1/1/erosion/stage ] >>> 破碎之城 階段效果 / broken city stage effects

# ===================================================

# 參數 : area | path
#
# 由 main/erosion/change 在跨越門檻時叫一次，升階降階都會進來。
# 血條顏色與標題是通用的，已經在 change 做掉了，這裡只放空間本身的變化。

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 0 run \
function unstable_rift:chapter_1/1/erosion/0

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 1 run \
function unstable_rift:chapter_1/1/erosion/1

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 2 run \
function unstable_rift:chapter_1/1/erosion/2

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 3 run \
function unstable_rift:chapter_1/1/erosion/3

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main matches 4 run \
function unstable_rift:chapter_1/1/erosion/4
