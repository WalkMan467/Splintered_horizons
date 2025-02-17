# 存到記分板

execute store result score @s item.tp_book.point.x run data get entity @s Pos[0]
execute store result score @s item.tp_book.point.y run data get entity @s Pos[1]
execute store result score @s item.tp_book.point.z run data get entity @s Pos[2]

execute store result score @s item.tp_book.point.facing.x run data get entity @s Rotation[0]
execute store result score @s item.tp_book.point.facing.y run data get entity @s Rotation[1]