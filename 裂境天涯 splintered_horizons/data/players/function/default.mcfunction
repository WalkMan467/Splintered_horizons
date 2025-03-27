give @s wooden_sword 1
give @s wooden_pickaxe 1
give @s apple 12

function players:scoreboard

scoreboard players set @s item.tp_book.point.x 0
scoreboard players set @s item.tp_book.point.y 60
scoreboard players set @s item.tp_book.point.z 0
scoreboard players set @s item.tp_book.point.facing.x 0
scoreboard players set @s item.tp_book.point.facing.y 0

spawnpoint @s 39 64 10
tp @s 39 64 10 90 0

team join team.player @a

scoreboard players add @a death_count 0

advancement revoke @a only weapons:monument/area_1
advancement grant @a only weapons:monument/icon