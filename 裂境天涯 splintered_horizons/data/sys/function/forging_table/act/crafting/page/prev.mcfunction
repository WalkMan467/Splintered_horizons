# ===================================================
# 鍛造台 配方清單 上一頁 / forging table recipe list previous page

    ## Guide [ function sys:forging_table/act/crafting/page/prev ] >>> 鍛造台 配方清單 上一頁 / forging table recipe list previous page
    ## Guide [ function sys:forging_table/act/crafting/show ] >>> 鍛造台 配方清單 繪製 / forging table recipe list render

    ## 由 players:detect/click_event_trigger 的 31 呼叫
    ## 已經在第 1 頁就直接走人，箭頭本來也是灰的點不到，這裡只是保險

# ===================================================

execute \
    unless score @s sys.forging_table.page matches 2.. run \
return 0

scoreboard players remove @s sys.forging_table.page 1

playsound minecraft:item.book.page_turn voice @s ~ ~1 ~ 1 0.75

function sys:forging_table/act/crafting/show
