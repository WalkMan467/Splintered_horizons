# ===================================================
# 裂境 寶箱 加分與連結線 / credit the kill and draw the link

    ## Guide [ function unstable_rift:chest/credit/apply ] >>> 裂境 寶箱 加分與連結線 / credit the kill and draw the link
    ## Guide [ function unstable_rift:chest/credit/kill ] >>> 裂境 寶箱 擊殺加分 / credit a kill to the nearest chest
    ## Guide [ function unstable_rift:chest/credit/trail ] >>> 裂境 寶箱 連結線 / draw the trail to the chest
    ## Guide [ function unstable_rift:chest/tier ] >>> 裂境 寶箱 隱藏分換算等級 / hidden score to loot tier

# ===================================================

# 執行者是吃到這筆分的寶箱紀錄點，位置還在怪死掉的那一格
#
# chest/credit/kill 是 at @s as @n 進來的 —— at 先跑，所以位置留在屍體那邊，
# 執行者才換成寶箱。連結線要從屍體畫到箱子，剛好兩邊都在手上


scoreboard players operation @s unstable_rift.chest.score += #unstable_rift.chest.credit global.main

## ----- 連結線 ----- ##

# 跟原版吱嘎核心連到嘎嘎的那條線是同一個粒子（minecraft:trail），
# 粒子會從生成點飄到 target，所以從屍體往箱子畫就是「這筆分進了那個箱子」
#
# 顏色照加分之後的 tier，玩家不用看數字也知道這箱養到哪一階了：
# t1 灰 / t2 綠 / t3 青 / t4 金

function unstable_rift:chest/tier

data modify storage unstable_rift:chest credit.color set value 10329495

execute \
    if score #unstable_rift.chest.tier global.main matches 2 run \
data modify storage unstable_rift:chest credit.color set value 5635925

execute \
    if score #unstable_rift.chest.tier global.main matches 3 run \
data modify storage unstable_rift:chest credit.color set value 5636095

execute \
    if score #unstable_rift.chest.tier global.main matches 4 run \
data modify storage unstable_rift:chest credit.color set value 16755200

# trail 的 target 只吃絕對座標，寫不了 ~ ~ ~，所以先把紀錄點的 Pos 搬進 storage
# 再用巨集展開。紀錄點就生在那一格的正中心，所以粒子會收在箱子中間

data modify storage unstable_rift:chest credit.target set from entity @s Pos

function unstable_rift:chest/credit/trail with storage unstable_rift:chest credit

data remove storage unstable_rift:chest credit
