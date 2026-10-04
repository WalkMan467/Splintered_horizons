# ===================================================
# 天導神弓箭矢 arrow motion 階段 1 / heavenly guiding arrow arrow motion step 1

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/1 ] >>> 天導神弓箭矢 arrow motion 階段 1 / heavenly guiding arrow arrow motion step 1
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/2 ] >>> 天導神弓箭矢 arrow motion 階段 2 / heavenly guiding arrow arrow motion step 2
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/setup ] >>> 天導神弓箭矢 arrow motion 初始化 / heavenly guiding arrow arrow motion setup

# ===================================================

$execute \
    at @s \
    facing entity @n[sort=arbitrary,distance=..1.5,tag=temp,type=item_display] eyes run \
function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/2 {speed:$(speed)}