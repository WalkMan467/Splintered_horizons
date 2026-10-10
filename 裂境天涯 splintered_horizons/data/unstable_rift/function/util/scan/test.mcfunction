# ===================================================
# 裂境 周圍掃描 單格判定 / scan one cell

    ## Guide [ function unstable_rift:util/scan/test ] >>> 裂境 周圍掃描 單格判定 / scan one cell
    ## Guide [ function unstable_rift:util/scan/z ] >>> 裂境 周圍掃描 Z 迴圈 / scan z loop
    ## Guide [ function unstable_rift:util/scan/hit ] >>> 裂境 周圍掃描 命中 / scan hit

# ===================================================

# 執行位置是這一格的角落（上層已經 align 過），所以要判定實體就得先推到 ~0.5 的中心
#
# 兩條分支都帶「已經有紀錄點就跳過」—— 掃描會把半徑內每一顆都看過一遍，
# 沒有這道保護的話會把鄰居已經註冊好的生怪磚重新註冊（重置倒數），
# 或是把鄰居寶箱的紀錄點殺掉重建


## ----- mode 1：裂境生怪磚 ----- ##

# SpawnData.entity.data.mob 是這套生怪磚的身分證，原版生怪磚沒有這條路徑

execute \
    if score #unstable_rift.scan.mode global.main matches 1 \
    if data block ~ ~ ~ SpawnData.entity.data.mob \
    positioned ~0.5 ~0.5 ~0.5 \
    unless entity @e[tag=unstable_rift.spawner.point,distance=..0.5,limit=1,sort=arbitrary,type=marker] run \
function unstable_rift:util/scan/hit


## ----- mode 2：裂境寶箱 ----- ##

# 跟 chest/ray/hit 一樣：單箱一律註冊，不看附近有沒有生怪磚
# 單箱的限制交給 chest/register 判，規則只寫在一個地方

execute \
    if score #unstable_rift.scan.mode global.main matches 2 \
    if block ~ ~ ~ minecraft:chest \
    positioned ~0.5 ~0.5 ~0.5 \
    unless entity @e[tag=unstable_rift.chest.point,distance=..0.5,limit=1,sort=arbitrary,type=marker] run \
function unstable_rift:util/scan/hit
