# ===================================================
# 暴食者 壓回一半 / gluttony clamp to half

    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/main ] >>> 暴食者 主迴圈 / gluttony loop
    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/use ] >>> 暴食者 受傷觸發 / gluttony on damaged
    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/lock ] >>> 壓回一半 / clamp to half

# ===================================================

# 執行者 : 穿戴者（由 main 的鎖血倒數歸零時呼叫）
#
# modifier 加下去的當下原版就會把現在的血夾到新上限，所以下一行馬上移除 ——
# 上限回到原本的數字，血則留在一半不會跟著漲回去。
#
# 這樣不走傷害事件，不用擔心護甲、抗性、無敵幀、盾牌或擊退，
# 補滿要是沒生效也頂多鎖成當下血量的一半，不會像固定傷害那樣當場把人打死。
#
# 第一行先把倒數清掉，不然 main 看到 0 會每 tick 都叫一次

scoreboard players reset @s player.eis.gluttony.lock

attribute @s max_health modifier remove eis.gluttony.lock
