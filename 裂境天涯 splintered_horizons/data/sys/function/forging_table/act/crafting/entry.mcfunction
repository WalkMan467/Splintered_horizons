# ===================================================
# 鍛造台 配方清單 單項 / forging table recipe list item

    ## Guide [ function sys:forging_table/act/crafting/entry ] >>> 鍛造台 配方清單 單項 / forging table recipe list item
    ## Guide [ function sys:forging_table/act/crafting/show ] >>> 鍛造台 配方清單 繪製 / forging table recipe list render

    ## 執行者 : 玩家
    ## 只有已解鎖的配方才會被呼叫到，所以計數器算出來的就是「玩家看得到的配方總數」
    ## 序號減掉這一頁的 offset 落在 1..4 才真的印，不在這一頁的只計數不印

# ===================================================

scoreboard players add #index sys.forging_table.index 1

scoreboard players operation #slot sys.forging_table.index = #index sys.forging_table.index
scoreboard players operation #slot sys.forging_table.index -= #offset sys.forging_table.index

# 巢狀巨集不吃行末反斜線續行，這行只能擠成一行

$execute if score #slot sys.forging_table.index matches 1..4 run function sys:forging_table/act/crafting/entry/$(id)
