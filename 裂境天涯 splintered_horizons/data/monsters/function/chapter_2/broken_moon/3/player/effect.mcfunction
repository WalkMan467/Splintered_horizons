# 計時後每 1 秒執行一次
# @s = 玩家


scoreboard players remove @s monster.broken_moon.skill.3.player_timer 1

playsound minecraft:block.note_block.hat voice @a ~ ~0.5 ~ 1 0.5


execute unless entity @s[tag=monster.broken_moon.skill.3.player_sun] run return 0
execute unless score @s monster.broken_moon.skill.3.player_sun matches 1.. run return 0
execute if score @s monster.broken_moon.skill.3.player_timer matches 0 run return 0
damage @s 5 armors:type/black_hole/damage
playsound minecraft:entity.player.hurt_on_fire voice @a ~ ~0.5 ~ 1 0.5
playsound minecraft:entity.player.hurt_on_fire voice @a ~ ~0.5 ~ 1 0.5