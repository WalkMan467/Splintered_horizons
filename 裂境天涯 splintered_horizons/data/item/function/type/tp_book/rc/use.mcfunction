
execute \
    if score @s player.click.interval matches 1.. run \
return 0
scoreboard players set @s player.click.interval 5


execute \
    unless score #safe_area.enter global.main matches 1.. run \
function item:type/tp_book/rc/failure

execute \
    unless score #safe_area.enter global.main matches 1.. run \
return 0


execute \
    if score #boss_area.chapter_2.elekiel global.main matches 1 run \
function item:type/tp_book/rc/disabled

execute \
    if score #boss_area.chapter_2.elekiel global.main matches 1 run \
return 0


execute \
    if score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1 run \
function item:type/tp_book/rc/disabled

execute \
    if score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1 run \
return 0


execute \
    if score @s player.disable.tp_book matches 1.. run \
function item:type/tp_book/rc/disabled

execute \
    if score @s player.disable.tp_book matches 1.. run \
return 0

tag @s add temp


execute \
    positioned ~ ~-1 ~ anchored eyes rotated ~ 0 \
    positioned ^ ^ ^5 run \
function item:type/tp_book/point/summon

tag @s remove temp
tag @n[sort=arbitrary,tag=temp,tag=item.tp_book.point,type=item_display] remove temp