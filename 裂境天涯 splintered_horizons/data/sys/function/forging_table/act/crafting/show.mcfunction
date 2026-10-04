# ===================================================
# 鍛造台 配方清單 繪製 / forging table recipe list render

    ## Guide [ function sys:forging_table/act/crafting/show ] >>> 鍛造台 配方清單 繪製 / forging table recipe list render
    ## Guide [ function sys:forging_table/act/crafting ] >>> 鍛造台 配方清單 入口 / forging table recipe list entry
    ## Guide [ function sys:forging_table/act/crafting/entry ] >>> 鍛造台 配方清單 單項 / forging table recipe list item
    ## Guide [ function sys:forging_table/act/crafting/footer ] >>> 鍛造台 配方清單 分頁列 / forging table recipe list pager

    ## 執行者 : 玩家
    ## 配方越解越多整張清單就會把上面的字擠出聊天欄，所以改成一頁 4 個配方
    ## 翻頁就是把頁碼改掉再整張重畫一次，不用去記上一次印了甚麼

# ===================================================

# 先用空行把舊的清單推出聊天欄，不然翻頁會跟上一頁疊在一起

tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]

tellraw @s [{"font":"minecraft:default","translate":"tips.sys.forging_table.crafting.title","fallback":"目前可以合成的配方:","color":"white"}]

# 一頁 4 個配方 ; offset = (頁碼 - 1) * 4

scoreboard players set #per sys.forging_table.index 4
scoreboard players set #index sys.forging_table.index 0

scoreboard players operation #offset sys.forging_table.index = @s sys.forging_table.page
scoreboard players remove #offset sys.forging_table.index 1
scoreboard players operation #offset sys.forging_table.index *= #per sys.forging_table.index

# 配方清單 ; 這裡的順序就是玩家看到的順序，沒解鎖的不計數也不印

function sys:forging_table/act/crafting/entry {id:"wind_sword"}

execute \
    if score #sys.forging_table.nightfall sys.forging_table.recipes matches 1.. run \
function sys:forging_table/act/crafting/entry {id:"nightfall"}

execute \
    if score #sys.forging_table.twilight_wind sys.forging_table.recipes matches 1.. run \
function sys:forging_table/act/crafting/entry {id:"twilight_wind"}

function sys:forging_table/act/crafting/entry {id:"morning_light"}

execute \
    if score #sys.forging_table.rock_crushing_greatsword sys.forging_table.recipes matches 1.. run \
function sys:forging_table/act/crafting/entry {id:"rock_crushing_greatsword"}

function sys:forging_table/act/crafting/entry {id:"armor_of_the_coiled_rock"}

function sys:forging_table/act/crafting/entry {id:"coiled_rock_helmet"}

execute \
    if score #sys.forging_table.windriders_legplates sys.forging_table.recipes matches 1.. run \
function sys:forging_table/act/crafting/entry {id:"windriders_legplates"}

execute \
    if score #sys.forging_table.swift_boots sys.forging_table.recipes matches 1.. run \
function sys:forging_table/act/crafting/entry {id:"swift_boots"}

execute \
    if score #sys.forging_table.tai_chis_shadow sys.forging_table.recipes matches 1.. run \
function sys:forging_table/act/crafting/entry {id:"tai_chis_shadow"}

execute \
    if score #sys.forging_table.earthquake_axe sys.forging_table.recipes matches 1.. run \
function sys:forging_table/act/crafting/entry {id:"earthquake_axe"}

execute \
    if score #sys.forging_table.blackhole_boots sys.forging_table.recipes matches 1.. run \
function sys:forging_table/act/crafting/entry {id:"blackhole_boots"}

execute \
    if score #sys.forging_table.soul_tree_pickaxe sys.forging_table.recipes matches 1.. run \
function sys:forging_table/act/crafting/entry {id:"soul_tree_pickaxe"}

execute \
    if score #sys.forging_table.finality_pickaxe sys.forging_table.recipes matches 1.. run \
function sys:forging_table/act/crafting/entry {id:"finality_pickaxe"}

# 總頁數 = (配方總數 + 3) / 4 ; 記分板是整數除法，加 3 就是往上取整

scoreboard players operation #max sys.forging_table.index = #index sys.forging_table.index
scoreboard players add #max sys.forging_table.index 3
scoreboard players operation #max sys.forging_table.index /= #per sys.forging_table.index

# 存一份在玩家身上，按箭頭時才知道能不能再翻

scoreboard players operation @s sys.forging_table.page.max = #max sys.forging_table.index

function sys:forging_table/act/crafting/footer
