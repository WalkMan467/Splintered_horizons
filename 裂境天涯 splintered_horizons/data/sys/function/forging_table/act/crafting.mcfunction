# ===================================================
# 鍛造台 配方清單 入口 / forging table recipe list entry

    ## Guide [ function sys:forging_table/act/crafting ] >>> 鍛造台 配方清單 入口 / forging table recipe list entry
    ## Guide [ function sys:forging_table/act/crafting/show ] >>> 鍛造台 配方清單 繪製 / forging table recipe list render
    ## Guide [ function sys:forging_table/act/run ] >>> 鍛造台 觸發 / forging table activate

    ## 由 players:detect/click_event_trigger 的 8 呼叫
    ## 從鍛造台點【查看合成配方】一律從第 1 頁開始，翻頁走 crafting/page/prev 與 crafting/page/next

# ===================================================

# 執行者 : 玩家

scoreboard players set @s sys.forging_table.page 1

function sys:forging_table/act/crafting/show
