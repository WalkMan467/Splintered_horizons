# ===================================================
# 天導神弓箭矢 清除 / heavenly guiding arrow clear

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/clear ] >>> 天導神弓箭矢 清除 / heavenly guiding arrow clear
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/use ] >>> 天導神弓箭矢 magic circle 觸發 / heavenly guiding arrow magic circle activate
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/1 ] >>> 天導神弓箭矢 magic circle holy fire 階段 1 / heavenly guiding arrow magic circle holy fire step 1
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/main ] >>> 天導神弓箭矢 主迴圈 / heavenly guiding arrow loop

# ===================================================

execute \
    on origin \
    if entity @s[type=player] run \
tag @s add temp

# execute \
#     unless entity @n[distance=..16,type=!#dummy_mob,type=!#arrows,type=!player] run \
#     return run \
# data remove storage temp arrow

data modify storage temp arrow.componments set from entity @s
data remove storage temp arrow.componments.Rotation

execute \
    on origin \
    if entity @s[type=player] run \
tag @s remove temp

execute \
    unless entity @s[tag=weapon.heavenly_guiding_bow.arrow.holy_fire] \
    as @n[distance=..16,type=!#dummy_mob,type=!#arrows,type=!player] at @s run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/use

execute \
    if entity @s[tag=weapon.heavenly_guiding_bow.arrow.holy_fire] \
    as @n[distance=..16,type=!#dummy_mob,type=!#arrows,type=!player] at @s run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/1

playsound minecraft:entity.enderman.teleport voice @a ~ ~ ~ 2 1

particle end_rod ~ ~ ~ 0 0 0 0.1 5 force @a

kill @s