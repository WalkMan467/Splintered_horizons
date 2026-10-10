# ===================================================
# 裂境 寶箱 結算 / settle the hidden score

    ## Guide [ function unstable_rift:chest/open/settle ] >>> 裂境 寶箱 結算 / settle the hidden score
    ## Guide [ function unstable_rift:chest/open/detect ] >>> 裂境 寶箱 開箱偵測 / rift chest open detection
    ## Guide [ function unstable_rift:chest/open/no_spawner ] >>> 裂境 寶箱 沒有生怪磚 / no spawner in range
    ## Guide [ function unstable_rift:chest/credit/kill ] >>> 裂境 寶箱 擊殺加分 / credit a kill to the nearest chest
    ## Guide [ function unstable_rift:chest/tier ] >>> 裂境 寶箱 隱藏分換算等級 / hidden score to loot tier

# ===================================================

# 執行者是寶箱的紀錄點 marker，位置就是寶箱那一格


# 告訴 chest/open/detect 射線有中，它就不用再跑退路

scoreboard players set #unstable_rift.chest.open.hit global.main 1

# 8 格內沒有生怪磚重建點就不是裂境寶箱，不出戰利品
#
# 這條判定原本在放置的時候做，搬到這裡是為了讓「先放箱子還是先放生怪磚」
# 不影響結果 —— 箱子一律註冊，等到真的要出戰利品的那一刻才看它旁邊有沒有生怪磚
#
# 刻意不標記成已開：之後把生怪磚補在旁邊，再開一次就會正常結算
#
# no_spawner 只是給建圖的人一行提示，免得「安靜的全空」被當成壞掉

execute \
    unless entity @e[tag=unstable_rift.spawner.point,distance=..8,limit=1,sort=arbitrary,type=marker] \
    run return run \
function unstable_rift:chest/open/no_spawner

tag @s add unstable_rift.chest.opened

# 沒有分數的 marker 補 0，不然下面四條 matches 全不成立，一件東西都不會出

execute \
    unless score @s unstable_rift.chest.score matches -2147483648..2147483647 run \
scoreboard players set @s unstable_rift.chest.score 0

# 侵蝕階段寫進 storage，tier 那四支要靠它選表（chest/<stage>/t<tier>）
# 階段是 chest/open/detect 從開箱玩家身上的區域標籤認出來的

execute \
    store result storage unstable_rift:chest settle.stage int 1 run \
scoreboard players get #unstable_rift.chest.stage global.main

# 門檻搬到 unstable_rift:chest/tier 去了，要調平衡改那支
#
# debug 顯示跟擊殺連結線的顏色也都讀同一支，門檻各寫一份的話調平衡一定會漏掉某一邊
#
# t1 是保底不是獎勵，但它不空 —— chest/<stage>/t1 的續航與箭兩個 pool 都是必出。
# 開起來全空只會是上面那條生怪磚判定擋掉的，不會是表的問題
#
# 階段的放大是靠「高階更容易開到高 tier」，不是靠把表的內容撐大，
# 所以 chest/<stage>/t4 從穩定到吞噬只放大約 1.8 倍

function unstable_rift:chest/tier

execute \
    if score #unstable_rift.chest.tier global.main matches 1 run \
function unstable_rift:chest/open/tier/1 with storage unstable_rift:chest settle

execute \
    if score #unstable_rift.chest.tier global.main matches 2 run \
function unstable_rift:chest/open/tier/2 with storage unstable_rift:chest settle

execute \
    if score #unstable_rift.chest.tier global.main matches 3 run \
function unstable_rift:chest/open/tier/3 with storage unstable_rift:chest settle

execute \
    if score #unstable_rift.chest.tier global.main matches 4 run \
function unstable_rift:chest/open/tier/4 with storage unstable_rift:chest settle
