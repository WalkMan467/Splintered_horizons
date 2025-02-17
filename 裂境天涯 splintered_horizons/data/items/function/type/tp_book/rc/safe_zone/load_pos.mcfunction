# 調用先前紀錄的位置

    # 記分板 轉換成 storage
execute store result storage item.tp_book.point temp.x int 1 run scoreboard players get @s item.tp_book.point.x
execute store result storage item.tp_book.point temp.y int 1 run scoreboard players get @s item.tp_book.point.y
execute store result storage item.tp_book.point temp.z int 1 run scoreboard players get @s item.tp_book.point.z
execute store result storage item.tp_book.point temp.facing_x int 1 run scoreboard players get @s item.tp_book.point.facing.x
execute store result storage item.tp_book.point temp.facing_y int 1 run scoreboard players get @s item.tp_book.point.facing.y
