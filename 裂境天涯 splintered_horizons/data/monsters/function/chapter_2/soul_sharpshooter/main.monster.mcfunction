# ===================================================
# 魂之神射手 本體 冷卻檢查 / soul sharpshooter self cooldown check

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/main.monster ] >>> 魂之神射手 本體 冷卻檢查 / soul sharpshooter self cooldown check
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/main ] >>> 魂之神射手 主程式 / soul sharpshooter main
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/cast/cast ] >>> 魂之神射手 施法 開始 隨機選技 / soul sharpshooter cast begin
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_2/soul_sharpshooter/cast/cast