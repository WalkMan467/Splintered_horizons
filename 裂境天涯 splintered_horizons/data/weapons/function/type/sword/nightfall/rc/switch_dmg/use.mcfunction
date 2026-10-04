# ===================================================
# 劍 夜幕 右鍵 switch dmg 觸發 / sword nightfall right click switch dmg activate

    ## Guide [ function weapons:type/sword/nightfall/rc/switch_dmg/use ] >>> 劍 夜幕 右鍵 switch dmg 觸發 / sword nightfall right click switch dmg activate
    ## Guide [ function weapons:type/sword/nightfall/rc/use ] >>> 劍 夜幕 右鍵 觸發 / sword nightfall right click activate
    ## Guide [ function weapons:type/sword/nightfall/rc/switch_dmg/calculate ] >>> 劍 夜幕 右鍵 switch dmg / sword nightfall right click switch dmg

# ===================================================

# 執行者 : 玩家
#
# 5 段傷害由 weapons:type/core/player 每 tick 扣一次數，
# 這裡只負責開計數與回血
#
# 回血用 instant_health : 原版只能回 4 / 8 / 16，回不出 5，
# 而 /data modify entity 對玩家是被禁止的，所以取 4

tag @s add nightfall.user
scoreboard players set @s weapon.nightfall.effect.switch_dmg_count 5

effect give @s instant_health 1 0 true
