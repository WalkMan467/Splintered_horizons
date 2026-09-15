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

# 只補導引需要的欄位，不要整包 set value 覆蓋
# 覆蓋會把特殊箭矢自己的 id 洗掉，害它的 advancement 條件不成立、命中效果整組不觸發

data modify entity @s item.components."minecraft:custom_data".heavenly_guiding set value 1b
data modify entity @s item.components."minecraft:custom_data".ground_detect set value 1b


# 原版箭沒有這些欄位才補，特殊箭矢一律保留自己的
# id 是 ground_detect/run 的 $(id) 派送用的，不能是空的

execute \
    unless data entity @s item.components."minecraft:custom_data".type run \
data modify entity @s item.components."minecraft:custom_data".type set value "arrow"

execute \
    unless data entity @s item.components."minecraft:custom_data".rarity run \
data modify entity @s item.components."minecraft:custom_data".rarity set value "epic"

execute \
    unless data entity @s item.components."minecraft:custom_data".id run \
data modify entity @s item.components."minecraft:custom_data".id set value "heavenly_guiding_arrow"

function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/1 {speed:2}

tag @s remove summon