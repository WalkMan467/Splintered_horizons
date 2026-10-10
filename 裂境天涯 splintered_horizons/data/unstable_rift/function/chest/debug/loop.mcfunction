# ===================================================
# 裂境 寶箱 debug 顯示 / rift chest debug display

    ## Guide [ function unstable_rift:chest/debug/loop ] >>> 裂境 寶箱 debug 顯示 / rift chest debug display
    ## Guide [ function unstable_rift:chest/main ] >>> 裂境 寶箱 主程式 / rift chest main
    ## Guide [ function unstable_rift:chest/debug/summon ] >>> 裂境 寶箱 debug 文字牌 / summon the debug label
    ## Guide [ function unstable_rift:chest/debug/text ] >>> 裂境 寶箱 debug 文字 / write the debug text
    ## Guide [ function unstable_rift:chest/tier ] >>> 裂境 寶箱 隱藏分換算等級 / hidden score to loot tier

# ===================================================

# 執行者是寶箱的紀錄點 marker，位置就是寶箱那一格
# 由 unstable_rift:chest/main 從 8 格內的創造模式玩家身上帶進來


function unstable_rift:chest/tier

# 文字牌生在紀錄點往上一格
#
# 用 positioned ~ ~1 ~ 加 0.4 格的半徑認「自己的那一塊牌子」：
# 箱子可以緊鄰著放，牌子最近只差 1 格，抓太寬會認到隔壁那一塊

execute \
    positioned ~ ~1 ~ \
    unless entity @n[tag=unstable_rift.chest.debug,distance=..0.4,type=text_display] run \
function unstable_rift:chest/debug/summon

# 要顯示的東西先全部收進 storage —— 下面 as 成文字牌之後，
# 紀錄點的分數跟標籤就讀不到了

# 沒有分數的紀錄點 scoreboard players get 會失敗，store result 那時候會寫 0，
# 剛好就是我們要的保底

execute \
    store result storage unstable_rift:chest debug.score int 1 run \
scoreboard players get @s unstable_rift.chest.score

execute \
    store result storage unstable_rift:chest debug.stage int 1 run \
scoreboard players get #unstable_rift.chest.debug.stage global.main

execute \
    store result storage unstable_rift:chest debug.tier int 1 run \
scoreboard players get #unstable_rift.chest.tier global.main

# 開過的箱子這一輪結算完了，再殺也不會改它的內容，所以標紅

data modify storage unstable_rift:chest debug.opened set value {"color":"gray","text":"未開啟"}

execute \
    if entity @s[tag=unstable_rift.chest.opened] run \
data modify storage unstable_rift:chest debug.opened set value {"color":"red","text":"已開啟"}

# 8 格內沒有生怪磚重建點的話 chest/open/settle 會整支 return，
# 上面那條戰利品表路徑就等於騙人，所以這行要跟著顯示

data modify storage unstable_rift:chest debug.spawner set value {"color":"red","text":"無"}

execute \
    if entity @e[tag=unstable_rift.spawner.point,distance=..8,limit=1,sort=arbitrary,type=marker] run \
data modify storage unstable_rift:chest debug.spawner set value {"color":"green","text":"有"}

execute \
    positioned ~ ~1 ~ \
    as @n[tag=unstable_rift.chest.debug,distance=..0.4,type=text_display] run \
function unstable_rift:chest/debug/text with storage unstable_rift:chest debug
