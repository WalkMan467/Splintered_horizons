# ===================================================
# 天導神弓箭矢 magic circle holy fire 主迴圈 / heavenly guiding arrow magic circle holy fire loop

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/main ] >>> 天導神弓箭矢 magic circle holy fire 主迴圈 / heavenly guiding arrow magic circle holy fire loop
    ## Guide [ function sys:dummy_mob/interface ] >>> dummy mob interface / dummy mob interface
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/shoot ] >>> 天導神弓箭矢 magic circle holy fire shoot / heavenly guiding arrow magic circle holy fire shoot
    ## Guide [ function weapons:type/core/main_guide ] >>> 核心 main guide / core main guide

# ===================================================

function sys:dummy_mob/interface

tp @s @n[distance=..16,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!#minecraft:dummy_mob,type=!player]

tag @e[distance=..16,tag=sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!#minecraft:dummy_mob,type=!player] remove sys.dummy_mob.interface

execute \
    if score @s weapon.heavenly_guiding_bow.arrow.time matches 6.. run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/shoot

scoreboard players add @s weapon.heavenly_guiding_bow.arrow.time 1