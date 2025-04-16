function items:type/tp_book/rc/safe_zone/save_pos

$tp @s $(x) $(y) $(z) $(facing_x) $(facing_y)

$summon area_effect_cloud $(x) $(y) $(z) {Duration:6000,Tags:["player.backup.pos","summon"]}
scoreboard players operation @n[tag=summon,tag=player.backup.pos] player.id = @p player.id
scoreboard players display name @n[tag=summon,tag=player.backup.pos] player.id ["[玩家] ",{"selector": "@p"},"位置備份"]


execute if dimension minecraft:overworld run spawnpoint @s 38 64 11
execute if dimension world_area:main/safe_zone run spawnpoint @s 0 60 -2

data remove storage item.tp_book.point temp