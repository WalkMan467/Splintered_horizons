# ===================================================
# 鍛造台 配方清單 分頁列 / forging table recipe list pager

    ## Guide [ function sys:forging_table/act/crafting/footer ] >>> 鍛造台 配方清單 分頁列 / forging table recipe list pager
    ## Guide [ function sys:forging_table/act/crafting/show ] >>> 鍛造台 配方清單 繪製 / forging table recipe list render
    ## Guide [ function sys:forging_table/act/crafting/page/prev ] >>> 鍛造台 配方清單 上一頁 / forging table recipe list previous page
    ## Guide [ function sys:forging_table/act/crafting/page/next ] >>> 鍛造台 配方清單 下一頁 / forging table recipe list next page

    ## 執行者 : 玩家
    ## 到頭或到底的那一邊箭頭變深灰色，而且不掛 click_event，點了也不會有反應
    ## 四種組合各印一行，條件互斥所以一次只會中一個

# ===================================================

tellraw @s [{"text":"\n"}]

# 只有一頁 : 兩邊都不給點

execute \
    if score @s sys.forging_table.page matches ..1 \
    if score @s sys.forging_table.page >= #max sys.forging_table.index run \
tellraw @s [{"text":"⬅","color":"dark_gray","bold":true},{"text":"  |  ","color":"dark_gray","bold":false},{"translate":"tips.sys.forging_table.crafting.page","fallback":"第 %1$s / %2$s 頁","color":"white","bold":true,"with":[{"score":{"name":"@s","objective":"sys.forging_table.page"}},{"score":{"name":"#max","objective":"sys.forging_table.index"}}]},{"text":"  |  ","color":"dark_gray","bold":false},{"text":"➡","color":"dark_gray","bold":true}]

# 第一頁，後面還有 : 只給下一頁

execute \
    if score @s sys.forging_table.page matches ..1 \
    unless score @s sys.forging_table.page >= #max sys.forging_table.index run \
tellraw @s [{"text":"⬅","color":"dark_gray","bold":true},{"text":"  |  ","color":"dark_gray","bold":false},{"translate":"tips.sys.forging_table.crafting.page","fallback":"第 %1$s / %2$s 頁","color":"white","bold":true,"with":[{"score":{"name":"@s","objective":"sys.forging_table.page"}},{"score":{"name":"#max","objective":"sys.forging_table.index"}}]},{"text":"  |  ","color":"dark_gray","bold":false},{"text":"➡","color":"dark_green","bold":true,"click_event":{"action":"run_command","command":"/trigger player.detect.click_event.trigger set 32"},"hover_event":{"action":"show_text","value":[{"translate":"tips.sys.forging_table.crafting.next_page","fallback":"下一頁","color":"white"}]}}]

# 最後一頁 : 只給上一頁

execute \
    if score @s sys.forging_table.page matches 2.. \
    if score @s sys.forging_table.page >= #max sys.forging_table.index run \
tellraw @s [{"text":"⬅","color":"dark_green","bold":true,"click_event":{"action":"run_command","command":"/trigger player.detect.click_event.trigger set 31"},"hover_event":{"action":"show_text","value":[{"translate":"tips.sys.forging_table.crafting.prev_page","fallback":"上一頁","color":"white"}]}},{"text":"  |  ","color":"dark_gray","bold":false},{"translate":"tips.sys.forging_table.crafting.page","fallback":"第 %1$s / %2$s 頁","color":"white","bold":true,"with":[{"score":{"name":"@s","objective":"sys.forging_table.page"}},{"score":{"name":"#max","objective":"sys.forging_table.index"}}]},{"text":"  |  ","color":"dark_gray","bold":false},{"text":"➡","color":"dark_gray","bold":true}]

# 中間的頁 : 兩邊都給點

execute \
    if score @s sys.forging_table.page matches 2.. \
    unless score @s sys.forging_table.page >= #max sys.forging_table.index run \
tellraw @s [{"text":"⬅","color":"dark_green","bold":true,"click_event":{"action":"run_command","command":"/trigger player.detect.click_event.trigger set 31"},"hover_event":{"action":"show_text","value":[{"translate":"tips.sys.forging_table.crafting.prev_page","fallback":"上一頁","color":"white"}]}},{"text":"  |  ","color":"dark_gray","bold":false},{"translate":"tips.sys.forging_table.crafting.page","fallback":"第 %1$s / %2$s 頁","color":"white","bold":true,"with":[{"score":{"name":"@s","objective":"sys.forging_table.page"}},{"score":{"name":"#max","objective":"sys.forging_table.index"}}]},{"text":"  |  ","color":"dark_gray","bold":false},{"text":"➡","color":"dark_green","bold":true,"click_event":{"action":"run_command","command":"/trigger player.detect.click_event.trigger set 32"},"hover_event":{"action":"show_text","value":[{"translate":"tips.sys.forging_table.crafting.next_page","fallback":"下一頁","color":"white"}]}}]
