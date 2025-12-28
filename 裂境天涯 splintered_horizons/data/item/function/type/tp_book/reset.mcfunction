tag @s add temp

execute \
    as @e[sort=arbitrary,tag=!temp,tag=item.tp_book.point,type=item_display] at @s \
    if score @s item.tp_book.player_id = @p[sort=arbitrary,tag=temp] player.id run \
kill @s[tag=item.tp_book.point,type=item_display]

tag @s remove temp

scoreboard players reset @s item.tp_book.point.x.temp
scoreboard players reset @s item.tp_book.point.y.temp
scoreboard players reset @s item.tp_book.point.z.temp