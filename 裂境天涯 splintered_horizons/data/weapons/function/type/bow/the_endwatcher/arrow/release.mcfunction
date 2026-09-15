# ===================================================
# 弓 終焉凝視者 箭矢 釋放累積傷害 / bow the endwatcher arrow release stored damage

    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/release ] >>> 弓 終焉凝視者 箭矢 釋放累積傷害 / bow the endwatcher arrow release stored damage
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/victim ] >>> 弓 終焉凝視者 箭矢 命中處理 / bow the endwatcher arrow victim

# ===================================================

# 執行者 : 被射中的敵人
# 傷害值由 arrow/release_calc 先算好寫進 storage

function weapons:type/bow/the_endwatcher/arrow/damage with storage weapons:the_endwatcher

particle dust{color:[0.808,0.000,0.000],scale:1.6} ~ ~1 ~ 0.4 0.6 0.4 0 30 normal @a
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 0.6 1.7
