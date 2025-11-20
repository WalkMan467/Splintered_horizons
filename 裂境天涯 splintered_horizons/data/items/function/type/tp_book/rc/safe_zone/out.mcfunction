scoreboard players set @s player.spawnpoint.dimension 0
scoreboard players operation @s player.spawnpoint.pos.x = @s item.tp_book.point.x
scoreboard players operation @s player.spawnpoint.pos.y = @s item.tp_book.point.y
scoreboard players operation @s player.spawnpoint.pos.z = @s item.tp_book.point.z

function items:type/tp_book/rc/cancel

function items:type/tp_book/rc/safe_zone/load_pos

execute in minecraft:overworld run function items:type/tp_book/rc/safe_zone/tp with storage item.tp_book.point temp

scoreboard players set @s item.tp_book.point.area 2
