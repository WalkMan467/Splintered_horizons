
function story:chapter_2/stop

scoreboard players set #in_safe_zone.ml global.main 1

scoreboard players set story.chapter_2.in_safe_zone.ml story.chapter_2 1

execute \
    as @a run \
scoreboard players operation @s item.tp_book.point.x = @s item.tp_book.point.x.temp

execute \
    as @a run \
scoreboard players operation @s item.tp_book.point.y = @s item.tp_book.point.y.temp

execute \
    as @a run \
scoreboard players operation @s item.tp_book.point.z = @s item.tp_book.point.z.temp

execute \
    as @a run \
scoreboard players set @s item.tp_book.point.area 2

tag @s add item.tp_book.save.temp

scoreboard players set #safe_area.enter global.main 1

stopsound @a record minecraft:bgm.whitesand_fallen_kingdom
function cutscene:safe_area/use

schedule function story:chapter_2/in_safe_zone/1/1 1s