scoreboard players reset #item.tp_book.fx particle
function item:type/tp_book/fx


execute \
    if score #cutscene global.main matches 1.. run \
return 0


execute \
    if entity @s[tag=item.tp_book.player.point] run \
function item:type/tp_book/point/guide

execute \
    if entity 0001ddca-0040-4e95-0000-a49e00066e2d run \
function item:type/tp_book/safe_area/point/guide