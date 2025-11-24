scoreboard players set @s player.spawnpoint.dimension 0
scoreboard players operation @s player.spawnpoint.pos.x = @s item.tp_book.point.x
scoreboard players operation @s player.spawnpoint.pos.y = @s item.tp_book.point.y
scoreboard players operation @s player.spawnpoint.pos.z = @s item.tp_book.point.z

scoreboard players operation @s item.tp_book.point.x.temp = @s item.tp_book.point.x
scoreboard players operation @s item.tp_book.point.y.temp = @s item.tp_book.point.y
scoreboard players operation @s item.tp_book.point.z.temp = @s item.tp_book.point.z

function items:type/tp_book/rc/cancel

execute if entity @s[tag=item.tp_book.save.temp] run function items:type/tp_book/rc/safe_zone/save_pos
execute if entity @s[tag=item.tp_book.save.temp] run function items:type/tp_book/rc/safe_zone/load_pos
execute if entity @s[tag=item.tp_book.save.temp] run tag @s remove item.tp_book.save.temp


execute unless entity @s[tag=item.tp_book.save.temp] run function items:type/tp_book/rc/safe_zone/load_pos
execute unless entity @s[tag=item.tp_book.save.temp] run function items:type/tp_book/rc/safe_zone/save_pos

execute in minecraft:overworld run function items:type/tp_book/rc/safe_zone/tp with storage item.tp_book.point temp

scoreboard players set @s item.tp_book.point.area 1