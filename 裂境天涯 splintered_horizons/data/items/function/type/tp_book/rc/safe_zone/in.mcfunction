function items:type/tp_book/rc/cancel
function items:type/tp_book/rc/safe_zone/load_pos

function items:type/tp_book/rc/safe_zone/save_pos

execute in minecraft:overworld run function items:type/tp_book/rc/safe_zone/tp with storage item.tp_book.point temp

scoreboard players set @s item.tp_book.point.area 1
