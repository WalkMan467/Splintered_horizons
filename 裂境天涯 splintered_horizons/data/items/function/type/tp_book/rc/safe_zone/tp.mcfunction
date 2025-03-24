function items:type/tp_book/rc/safe_zone/save_pos

$tp @s $(x) $(y) $(z) $(facing_x) $(facing_y)

execute if dimension minecraft:overworld run spawnpoint @s 38 64 11
execute if dimension world_area:main/safe_zone run spawnpoint @s 0 60 -2

data remove storage item.tp_book.point temp