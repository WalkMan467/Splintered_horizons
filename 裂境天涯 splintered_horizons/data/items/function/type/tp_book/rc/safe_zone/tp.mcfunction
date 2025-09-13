function items:type/tp_book/rc/safe_zone/save_pos

$tp @s $(x) $(y) $(z) $(facing_x) $(facing_y)

$summon area_effect_cloud $(x) $(y) $(z) {custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:6000,Tags:["player.backup.pos","summon"]}
scoreboard players operation @n[tag=summon,tag=player.backup.pos] player.id = @p player.id
scoreboard players display name @n[tag=summon,tag=player.backup.pos] player.id ["[玩家] ",{"selector": "@p"},"位置備份"]


data remove storage item.tp_book.point temp