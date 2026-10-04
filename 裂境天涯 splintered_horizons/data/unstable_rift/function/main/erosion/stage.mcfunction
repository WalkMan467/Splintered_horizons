# ===================================================
# 算階段 / resolve the stage

    ## Guide [ function unstable_rift:main/erosion/tick ] >>> 侵蝕度 每 tick / erosion tick
    ## Guide [ function unstable_rift:main/erosion/stage ] >>> 算階段 / resolve the stage
    ## Guide [ function unstable_rift:main/erosion/change ] >>> 跨階段 / cross a stage threshold

# ===================================================

# 參數 : area | path
#
# 0 穩定 / 1 鬆動 / 2 錯位 / 3 崩解 / 4 吞噬
#
# 門檻寫死在 1000 制（250 / 500 / 750 / 1000）。config 的 erosion_max
# 改掉的話這裡要跟著改，不會自己按比例縮放。
#
# 算出來的新階段先放 #...erosion.stage.new，跟目前的比對過才觸發 change，
# 這樣開關撤離點、改倒數速度這種一次性的事不會每 tick 重跑

$scoreboard players set #unstable_rift.$(area).erosion.stage.new global.main 0

$execute \
    if score #unstable_rift.$(area).erosion global.main matches 250.. run \
scoreboard players set #unstable_rift.$(area).erosion.stage.new global.main 1

$execute \
    if score #unstable_rift.$(area).erosion global.main matches 500.. run \
scoreboard players set #unstable_rift.$(area).erosion.stage.new global.main 2

$execute \
    if score #unstable_rift.$(area).erosion global.main matches 750.. run \
scoreboard players set #unstable_rift.$(area).erosion.stage.new global.main 3

$execute \
    if score #unstable_rift.$(area).erosion global.main matches 1000.. run \
scoreboard players set #unstable_rift.$(area).erosion.stage.new global.main 4

$execute \
    if score #unstable_rift.$(area).erosion.stage global.main = #unstable_rift.$(area).erosion.stage.new global.main run \
return 0

$scoreboard players operation #unstable_rift.$(area).erosion.stage global.main = #unstable_rift.$(area).erosion.stage.new global.main

function unstable_rift:main/erosion/change with storage unstable_rift:main args
