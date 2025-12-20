scoreboard players operation @s item.tp_book.point.x.temp = @n[distance=..5,tag=item.tp_book.player.point,type=item_display] item.tp_book.point.x
scoreboard players operation @s item.tp_book.point.y.temp = @n[distance=..5,tag=item.tp_book.player.point,type=item_display] item.tp_book.point.y
scoreboard players operation @s item.tp_book.point.z.temp = @n[distance=..5,tag=item.tp_book.player.point,type=item_display] item.tp_book.point.z

function players:stop_animation
tp @s 762 145 969 0 0

tag @s remove item.tp_book.player.actived