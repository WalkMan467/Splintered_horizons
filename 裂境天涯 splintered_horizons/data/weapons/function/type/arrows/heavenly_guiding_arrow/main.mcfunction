# ===================================================
# 天導神弓箭矢 主迴圈 / heavenly guiding arrow loop

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/main ] >>> 天導神弓箭矢 主迴圈 / heavenly guiding arrow loop
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/clear ] >>> 天導神弓箭矢 清除 / heavenly guiding arrow clear
    ## Guide [ function weapons:type/core/main_guide ] >>> 核心 main guide / core main guide

# ===================================================

execute \
    if score @s weapon.heavenly_guiding_bow.arrow.time matches 5.. run \
    return run \
function weapons:type/arrows/heavenly_guiding_arrow/clear

scoreboard players add @s weapon.heavenly_guiding_bow.arrow.time 1