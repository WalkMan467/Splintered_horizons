# 開始玩家計時
# @s = 玩家
execute if entity @s[gamemode=spectator,tag=!animation] run return 0

scoreboard players set @s monster.broken_moon.skill.3.player_timer 5
scoreboard players set @s monster.broken_moon.skill.3.count 5