# ===================================================
# 天導神弓箭矢 magic circle 主迴圈 / heavenly guiding arrow magic circle loop

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/main ] >>> 天導神弓箭矢 magic circle 主迴圈 / heavenly guiding arrow magic circle loop
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/transform ] >>> 天導神弓箭矢 magic circle transform / heavenly guiding arrow magic circle transform
    ## Guide [ function weapons:type/core/main_guide ] >>> 核心 main guide / core main guide

# ===================================================

execute \
    if score @s weapon.heavenly_guiding_bow.arrow.time matches 2 run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/transform

execute \
    if score @s weapon.heavenly_guiding_bow.arrow.time matches 10.. run \
    return run \
kill @s

scoreboard players add @s weapon.heavenly_guiding_bow.arrow.time 1