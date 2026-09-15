# ===================================================
# 天導神弓 右鍵 效果 資料 / heavenly guiding bow right click effect data

    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/effect/data ] >>> 天導神弓 右鍵 效果 資料 / heavenly guiding bow right click effect data
    ## Guide [ function weapons:type/bow/heavenly_guiding_bow/rc/effect/detect ] >>> 天導神弓 右鍵 效果 偵測 / heavenly guiding bow right click effect detect

# ===================================================

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

data modify entity @s PierceLevel set value 99
data modify entity @s Glowing set value 1b
data modify entity @s NoGravity set value 1b
scoreboard players set @s duration 60

playsound minecraft:entity.breeze.deflect voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.breeze.shoot voice @a ~ ~1 ~ 1 1.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1
stopsound @a voice minecraft:block.amethyst_block.chime

tag @s add weapon.heavenly_guiding_bow.arrow

execute \
    on origin \
    unless score @s weapon.effect.holy_fire matches 1.. run \
return 0

tag @s add weapon.heavenly_guiding_bow.arrow.holy_fire