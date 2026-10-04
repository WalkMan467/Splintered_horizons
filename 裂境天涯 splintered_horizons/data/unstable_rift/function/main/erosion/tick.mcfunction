# ===================================================
# 侵蝕度 每 tick / erosion tick

    ## Guide [ function unstable_rift:main/erosion/tick ] >>> 侵蝕度 每 tick / erosion tick
    ## Guide [ function unstable_rift:main/erosion/open ] >>> 開啟侵蝕度血條 / open the erosion bossbar
    ## Guide [ function unstable_rift:main/erosion/rise ] >>> 每秒上升 / rise once per second
    ## Guide [ function unstable_rift:main/erosion/display ] >>> 更新血條 / update the bossbar
    ## Guide [ function unstable_rift:main/erosion/stage ] >>> 算階段 / resolve the stage
    ## Guide [ function unstable_rift:main/erosion/reset ] >>> 區域清空歸零 / reset when the area empties

# ===================================================

# 參數 : area | path | erosion 開關 | erosion_max 上限
#
# 執行者 : 無（chapter_1/tick 一 tick 叫一次，不是每個玩家跑一遍）
#
# 侵蝕度是整個區域共用的一條，所以分數全掛在 global.main 的假玩家上：
#   #unstable_rift.<area>.erosion          目前值
#   #unstable_rift.<area>.erosion.rate     每秒上升量
#   #unstable_rift.<area>.erosion.elapsed  區域啟動後經過的 tick
#   #unstable_rift.<area>.erosion.tick     湊滿 20 tick 才上升一次
#   #unstable_rift.<area>.erosion.half     0/1 交替，倒數 1.5 倍速用
#   #unstable_rift.<area>.erosion.stage    目前階段 0~4

# 這行不能開頭加 $ —— 開頭是 $ 的行必須至少含一個 $(...)，
# 不然載入時會噴 No variables in macro，整支 function 都進不去
execute \
    unless data storage unstable_rift:main args{erosion_sys:1b} run \
return 0

# 要有人「正式開局」了侵蝕度才開始跑
#
# 不能只看 unstable_rift.<area> 標籤 —— 那個在 main/in 就上了，
# 人還在選武器房的時候標籤就有，侵蝕度會白跑掉 select_time 那幾分鐘。
# 倒數是 main/start 設的，所以 timer 有值才代表真的進戰場了
#
# 沒人符合就整個收掉，下一個開局的人從 0 開始

$execute \
    unless entity @a[tag=unstable_rift.$(area),scores={unstable_rift.timer=1..},limit=1] \
    run return run \
function unstable_rift:main/erosion/reset with storage unstable_rift:main args

$scoreboard players add #unstable_rift.$(area).erosion.elapsed global.main 1

# 第一 tick 才建血條，重複 add 會在 log 噴錯

$execute \
    if score #unstable_rift.$(area).erosion.elapsed global.main matches 1 run \
function unstable_rift:main/erosion/open with storage unstable_rift:main args

# 上升速率每 5 分鐘跳一階：2 / 4 / 6 / 8。不另開計時器，直接讀 elapsed
#
# 設計稿原本是 1 / 2 / 3 / 4（不殺怪約 10 分半滿表），實測太慢，
# 整組乘二改成現在這樣，不殺怪約 6 分 40 秒滿表。
# 擊殺扣除也一起乘二了，見 main/erosion/kill/*

$scoreboard players set #unstable_rift.$(area).erosion.rate global.main 2

$execute \
    if score #unstable_rift.$(area).erosion.elapsed global.main matches 6000.. run \
scoreboard players set #unstable_rift.$(area).erosion.rate global.main 4

$execute \
    if score #unstable_rift.$(area).erosion.elapsed global.main matches 12000.. run \
scoreboard players set #unstable_rift.$(area).erosion.rate global.main 6

$execute \
    if score #unstable_rift.$(area).erosion.elapsed global.main matches 18000.. run \
scoreboard players set #unstable_rift.$(area).erosion.rate global.main 8

# 0/1 交替。錯位階段的倒數要 1.5 倍速，整數 tick 做不出 0.5，
# 所以改成每隔一 tick 多扣 1，平均下來就是 1.5 倍

$scoreboard players add #unstable_rift.$(area).erosion.half global.main 1

$execute \
    if score #unstable_rift.$(area).erosion.half global.main matches 2.. run \
scoreboard players set #unstable_rift.$(area).erosion.half global.main 0

$scoreboard players add #unstable_rift.$(area).erosion.tick global.main 1

$execute \
    if score #unstable_rift.$(area).erosion.tick global.main matches 20.. run \
function unstable_rift:main/erosion/rise with storage unstable_rift:main args

# 血條與階段每 tick 都要更新 —— 擊殺隨時會把分數扣下去，
# 不能只在滿一秒的那一 tick 才算

function unstable_rift:main/erosion/display with storage unstable_rift:main args
function unstable_rift:main/erosion/stage with storage unstable_rift:main args
