clear @s

execute \
    if score #weapons:monument/area_1 global.main matches 1.. run \
function item:get/main/tp_book


execute \
    if score #in_safe_zone.ml global.main matches 1 run \
scoreboard players operation @s item.tp_book.point.x = @s item.tp_book.point.x.temp

execute \
    if score #in_safe_zone.ml global.main matches 1 run \
scoreboard players operation @s item.tp_book.point.y = @s item.tp_book.point.y.temp

execute \
    if score #in_safe_zone.ml global.main matches 1 run \
scoreboard players operation @s item.tp_book.point.z = @s item.tp_book.point.z.temp

execute \
    if score #in_safe_zone.ml global.main matches 1 run \
scoreboard players set @s item.tp_book.point.area 1

give @s wooden_sword[enchantments={"minecraft:sharpness":2,"minecraft:unbreaking":2}] 1
give @s wooden_pickaxe[enchantments={"minecraft:efficiency":2,"minecraft:unbreaking":1}] 1
give @s apple 12
give @s crafting_table 1

scoreboard players reset @s player.give.item.delay