# ===================================================
# 深淵射手 本體 冷卻檢查 / explosion arrow skeleton self cooldown check

    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/main.monster ] >>> 深淵射手 本體 冷卻檢查 / explosion arrow skeleton self cooldown check
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/main ] >>> 深淵射手 主程式 / explosion arrow skeleton main
    ## Guide [ function monsters:chapter_1/explosion_arrow_skeleton/cast/cast ] >>> 深淵射手 施法 開始 / explosion arrow skeleton cast begin

# ===================================================

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_1/explosion_arrow_skeleton/cast/cast