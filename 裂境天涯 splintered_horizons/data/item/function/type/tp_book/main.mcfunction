schedule function item:type/tp_book/main 1t

scoreboard players reset #item.tp_book.fx particle

execute \
    as @e[sort=arbitrary,tag=item.tp_book.point,type=item_display] at @s run \
function item:type/tp_book/guide