# ===================================================
# 劍 夜幕 被動 月蝕 命中 / sword nightfall passive lunar eclipse on hit

    ## Guide [ function weapons:type/sword/nightfall/passive/lunar_eclipse/hit ] >>> 劍 夜幕 被動 月蝕 命中 / sword nightfall passive lunar eclipse on hit
    ## Guide [ function weapons:type/sword/nightfall/passive/lunar_eclipse/add ] >>> 劍 夜幕 被動 月蝕疊加 / sword nightfall passive lunar eclipse add

# ===================================================

# 執行者 : 被夜幕打中的敵人
# 由附魔的 post_attack ( affected: victim ) 呼叫

scoreboard players set #count weapon.nightfall.lunar_eclipse 1

function weapons:type/sword/nightfall/passive/lunar_eclipse/add
