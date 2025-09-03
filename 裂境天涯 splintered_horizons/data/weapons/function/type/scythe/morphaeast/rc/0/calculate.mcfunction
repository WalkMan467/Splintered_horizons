scoreboard players operation #health player.max_health = @s player.health
scoreboard players operation #temp player.max_health = @s player.max_health

# 最大血量 - 當前血量計算差值，之後 x1.5 倍做為最終真實傷害

scoreboard players operation #temp player.max_health -= #health player.max_health

scoreboard players set #math player.max_health 8
scoreboard players operation #temp player.max_health *= #math player.max_health