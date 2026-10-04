# ===================================================
# 天導神弓箭矢 magic circle 初始化 / heavenly guiding arrow magic circle setup

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/setup ] >>> 天導神弓箭矢 magic circle 初始化 / heavenly guiding arrow magic circle setup
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/use ] >>> 天導神弓箭矢 magic circle 觸發 / heavenly guiding arrow magic circle activate
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/2 ] >>> 天導神弓箭矢 magic circle holy fire 階段 2 / heavenly guiding arrow magic circle holy fire step 2

# ===================================================

scoreboard players set @s duration 10

execute \
    unless entity @s[tag=weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire] run \
rotate @s facing entity @n[sort=arbitrary,distance=..15,tag=weapon.heavenly_guiding_bow.arrow.magic_circle.target,type=!#minecraft:dummy_mob,type=!#arrows,type=!player] feet

execute \
    if entity @s[tag=weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire] run \
rotate @s facing entity @n[sort=arbitrary,distance=..15,tag=weapon.heavenly_guiding_bow.arrow.magic_circle.target,type=#minecraft:dummy_mob] feet

tag @s remove summon