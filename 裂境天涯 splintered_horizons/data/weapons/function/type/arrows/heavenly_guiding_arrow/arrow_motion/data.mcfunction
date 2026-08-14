# ===================================================
# 天導神弓箭矢 arrow motion 資料 / heavenly guiding arrow arrow motion data

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/data ] >>> 天導神弓箭矢 arrow motion 資料 / heavenly guiding arrow arrow motion data
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/setup ] >>> 天導神弓箭矢 arrow motion 初始化 / heavenly guiding arrow arrow motion setup
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/transform ] >>> 天導神弓箭矢 magic circle transform / heavenly guiding arrow magic circle transform

# ===================================================

$summon arrow ^ ^ ^-0.1 $(componments)

execute \
    as @n[distance=..1.5,type=#arrows,tag=!weapon.heavenly_guiding_bow.arrow.2] at @s run \
function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/setup

# data remove storage temp arrow