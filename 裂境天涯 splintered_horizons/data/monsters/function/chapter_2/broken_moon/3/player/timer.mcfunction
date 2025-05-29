# 計時玩家的計時器 (每 x 秒會造成傷害 可以用太陽印記抵銷)
# @s = 玩家
execute if entity @s[gamemode=spectator,tag=!animation] run return 0

execute unless score @s monster.broken_moon.skill.3.count matches 1.. run return 0

execute if score @s monster.broken_moon.skill.3.player_timer matches 0.. run function monsters:chapter_2/broken_moon/3/player/effect

execute if score @s monster.broken_moon.skill.3.player_timer matches 1.. if score @s monster.broken_moon.skill.3.count matches 1.. run return 0


scoreboard players remove @s monster.broken_moon.skill.3.count 1
scoreboard players operation @s monster.broken_moon.skill.3.player_timer = max monster.broken_moon.skill.3.player_timer


# Run

execute if score @s monster.broken_moon.skill.3.player_sun matches 1.. run tag @s add monster.broken_moon.skill.3.player_sun

playsound minecraft:entity.warden.sonic_boom voice @a ~ ~0.5 ~ 1 1.5
playsound minecraft:entity.lightning_bolt.thunder voice @a ~ ~0.5 ~ 1 2

playsound minecraft:block.beacon.deactivate voice @a ~ ~0.5 ~ 1 1
playsound minecraft:block.beacon.deactivate voice @a ~ ~0.5 ~ 1 1

execute if score @s monster.broken_moon.skill.3.count matches 1 run tag @s remove monster.broken_moon.skill.3.player_sun