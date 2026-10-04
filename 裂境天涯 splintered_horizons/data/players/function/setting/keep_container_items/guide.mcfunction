# 執行者 : 開啟這個設定的玩家
#
# minecraft.mined:<方塊> 是原生統計，玩家打掉該方塊的當下就會 +1，不需要掃描
# 偵測到之後交給 detect 去算出「被打掉的那格座標」

execute \
    if score @s sys.mined.chest matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.trapped_chest matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.barrel matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.hopper matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.dropper matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.dispenser matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.furnace matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.blast_furnace matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.smoker matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.brewing_stand matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.crafter matches 1.. run \
function players:setting/keep_container_items/detect

execute \
    if score @s sys.mined.chiseled_bookshelf matches 1.. run \
function players:setting/keep_container_items/detect

# 處理完把統計歸零，不然下一 tick 會重複觸發

function players:setting/keep_container_items/reset
