# ===================================================
# 天導神弓箭矢 arrow motion 初始化 / heavenly guiding arrow arrow motion setup

    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/setup ] >>> 天導神弓箭矢 arrow motion 初始化 / heavenly guiding arrow arrow motion setup
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/1 ] >>> 天導神弓箭矢 arrow motion 階段 1 / heavenly guiding arrow arrow motion step 1
    ## Guide [ function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/data ] >>> 天導神弓箭矢 arrow motion 資料 / heavenly guiding arrow arrow motion data

# ===================================================

tag @s add weapon.heavenly_guiding_bow.arrow.2
tag @s remove weapon.heavenly_guiding_bow.arrow

data modify entity @s NoGravity set value 1b
data modify entity @s Glowing set value 1b

scoreboard players set @s duration 20

rotate @s facing entity @n[sort=arbitrary,distance=..15,tag=weapon.heavenly_guiding_bow.arrow.magic_circle.target,type=!#minecraft:dummy_mob,type=!#arrows,type=!player] feet

data modify entity @s item.components."minecraft:custom_data" set value {type:"arrow",rarity:"epic",id:"heavenly_guiding_arrow",ground_detect:1b}

function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/1 {speed:2}

tag @s remove summon