# ===================================================
# 暴食者 受傷觸發 / gluttony on damaged

    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/main ] >>> 暴食者 主迴圈 / gluttony loop
    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/use ] >>> 暴食者 受傷觸發 / gluttony on damaged
    ## Guide [ function energy_infusion_stone:skills/armor/gluttony/lock ] >>> 壓回一半 / clamp to half

# ===================================================

# 執行者 : 穿戴者（附魔 post_attack 的 affected=victim）
#
# 扣飢餓是附魔那邊的 apply_exhaustion 做的，這裡只負責補滿血跟排鎖血。
#
# 玩家的 Health 不能用 data modify 寫，instant_health 又只能回 4 的倍數，
# 所以先 instant_health 補滿，再用 max_health 的 modifier 把血壓回一半。
#
# 壓回一半不能接在這支後面做 —— instant_health 不是當場結算的，
# 同一 tick 下 attribute 會先把低血量夾住，治療才補上來，結果是整條補滿。
# 所以這裡只寫倒數，實際壓血交給 lock，由 main 每 tick 減到零才呼叫
#
# 第一行先關守衛，免得同一 tick 內多個傷害來源各觸發一次。
# 下一 tick main 會重新算回來

scoreboard players set @s player.eis.gluttony.active 0

attribute @s max_health modifier add eis.gluttony.lock -0.5 add_multiplied_total
effect give @s instant_health 1 27 true

scoreboard players set @s player.eis.gluttony.lock 2
