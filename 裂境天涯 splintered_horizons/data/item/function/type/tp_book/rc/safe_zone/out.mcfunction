scoreboard players set @s player.spawnpoint.dimension 0
scoreboard players operation @s player.spawnpoint.pos.x = @s item.tp_book.point.x
scoreboard players operation @s player.spawnpoint.pos.y = @s item.tp_book.point.y
scoreboard players operation @s player.spawnpoint.pos.z = @s item.tp_book.point.z

function item:type/tp_book/rc/cancel
execute if score #in_safe_zone.ml global.main matches 0 run function item:type/tp_book/rc/safe_zone/load_pos
function item:type/tp_book/rc/safe_zone/save_pos

execute in minecraft:overworld if score #in_safe_zone.ml global.main matches 0 run function item:type/tp_book/rc/safe_zone/tp with storage item.tp_book.point temp
execute if score #in_safe_zone.ml global.main matches 1 run function players:tp_to_safe_area/use
scoreboard players set @s item.tp_book.point.area 2