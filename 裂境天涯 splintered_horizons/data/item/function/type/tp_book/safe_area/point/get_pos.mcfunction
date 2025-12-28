tag @s add item.tp_book.player.actived


execute \
    store result storage temp tp_book.point.x int 0.001 run \
scoreboard players get @s item.tp_book.point.x.temp

execute \
    store result storage temp tp_book.point.y int 0.001 run \
scoreboard players get @s item.tp_book.point.y.temp

execute \
    store result storage temp tp_book.point.z int 0.001 run \
scoreboard players get @s item.tp_book.point.z.temp

function item:type/tp_book/safe_area/point/tp with storage temp tp_book.point