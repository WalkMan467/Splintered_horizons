# ===================================================
# 深淵黑騎 本體 冷卻檢查 / abyssal black knight self cooldown check

    ## Guide [ function monsters:chapter_1/abyssal_black_knight/main.monster ] >>> 深淵黑騎 本體 冷卻檢查 / abyssal black knight self cooldown check
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/main ] >>> 深淵黑騎 主程式 / abyssal black knight main
    ## Guide [ function monsters:chapter_1/abyssal_black_knight/cast/cast ] >>> 深淵黑騎 施法 開始 / abyssal black knight cast begin

# ===================================================

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_1/abyssal_black_knight/cast/cast