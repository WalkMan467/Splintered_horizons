
execute \
    as @p[sort=arbitrary,distance=..3,tag=!item.tp_book.safe_area.point.failure] run \
function item:type/tp_book/safe_area/point/failure
tag @a[sort=arbitrary,distance=3..,tag=item.tp_book.safe_area.point.failure] remove item.tp_book.safe_area.point.failure


execute \
    as @p[sort=arbitrary,distance=..3,tag=!item.tp_book.player.actived,tag=!item.tp_book.safe_area.point.failure] run \
function item:type/tp_book/safe_area/point/get_pos