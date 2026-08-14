# ===================================================
# 天導神弓箭矢 magic circle holy fire shoot / heavenly guiding arrow magic circle holy fire shoot

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/shoot ] >>> 天導神弓箭矢 magic circle holy fire shoot / heavenly guiding arrow magic circle holy fire shoot
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/2 ] >>> 天導神弓箭矢 magic circle holy fire 階段 2 / heavenly guiding arrow magic circle holy fire step 2
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/main ] >>> 天導神弓箭矢 magic circle holy fire 主迴圈 / heavenly guiding arrow magic circle holy fire loop

# ===================================================

execute \
    unless score @s weapon.heavenly_guiding_bow.arrow.count matches 3.. run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/2

execute \
    unless score @s weapon.heavenly_guiding_bow.arrow.count matches 3.. run \
scoreboard players set @s weapon.heavenly_guiding_bow.arrow.time 0

execute \
    unless score @s weapon.heavenly_guiding_bow.arrow.count matches 3.. run \
    return run \
scoreboard players add @s weapon.heavenly_guiding_bow.arrow.count 1

kill @s