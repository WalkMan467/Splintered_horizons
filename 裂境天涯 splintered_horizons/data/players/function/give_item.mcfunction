clear @s
execute if score #weapons:monument/area_1 global.main matches 1.. run function items:get/main/tp_book

give @s wooden_sword[enchantments={"minecraft:sharpness":2,"minecraft:unbreaking":2}] 1
give @s wooden_pickaxe[enchantments={"minecraft:efficiency":2,"minecraft:unbreaking":1}] 1
give @s apple 12
give @s crafting_table 1

scoreboard players reset @s player.give.item.delay