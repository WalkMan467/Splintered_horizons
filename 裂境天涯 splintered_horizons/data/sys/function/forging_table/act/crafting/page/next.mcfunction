# ===================================================
# 鍛造台 配方清單 下一頁 / forging table recipe list next page

    ## Guide [ function sys:forging_table/act/crafting/page/next ] >>> 鍛造台 配方清單 下一頁 / forging table recipe list next page
    ## Guide [ function sys:forging_table/act/crafting/show ] >>> 鍛造台 配方清單 繪製 / forging table recipe list render

    ## 由 players:detect/click_event_trigger 的 32 呼叫
    ## page.max 是上一次 show 算好存在玩家身上的總頁數，已經在最後一頁就直接走人

# ===================================================

execute \
    unless score @s sys.forging_table.page < @s sys.forging_table.page.max run \
return 0

scoreboard players add @s sys.forging_table.page 1

playsound minecraft:item.book.page_turn voice @s ~ ~1 ~ 1 0.75

function sys:forging_table/act/crafting/show
