# 計時玩家的計時器 (每 x 秒會造成傷害 可以用太陽印記抵銷)
# @s = 玩家
execute if entity @s[gamemode=spectator,tag=!animation] run return 0

execute if score @s monster.broken_moon.skill.4.player_timer matches 0.. run function monsters:chapter_2/broken_moon/4/player/effect

execute unless score @s monster.broken_moon.skill.4.player_timer matches ..0 run return 0


# Run

scoreboard players reset @s monster.broken_moon.skill.4.player_timer

playsound minecraft:entity.warden.sonic_boom voice @a ~ ~0.5 ~ 1 1.5
playsound minecraft:entity.lightning_bolt.thunder voice @a ~ ~0.5 ~ 1 2

playsound minecraft:block.beacon.deactivate voice @a ~ ~0.5 ~ 1 1
playsound minecraft:block.beacon.deactivate voice @a ~ ~0.5 ~ 1 1

say death.4.skill