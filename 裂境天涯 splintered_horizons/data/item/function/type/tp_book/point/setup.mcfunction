scoreboard players operation @s item.tp_book.player_id = @p[tag=temp] player.id


execute store result score @s item.tp_book.point.x run \
data get entity @s Pos[0] 1000

execute store result score @s item.tp_book.point.y run \
data get entity @s Pos[1] 1000

execute store result score @s item.tp_book.point.z run \
data get entity @s Pos[2] 1000

scoreboard players operation @p[tag=temp] item.tp_book.point.x.temp = @s[tag=summon] item.tp_book.point.x
scoreboard players operation @p[tag=temp] item.tp_book.point.y.temp = @s[tag=summon] item.tp_book.point.y
scoreboard players operation @p[tag=temp] item.tp_book.point.z.temp = @s[tag=summon] item.tp_book.point.z

tag @s remove summon

particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.25 20 force @a
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~1 ~ 1 1
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a