# 起飛然後鎖定
scoreboard players set @s monster.skill.casting 0
particle flash ~ ~0.5 ~ 0 0 0 0 1 normal @a[scores={main.light_sensitivity=0}]

tp @s ~ ~5 ~
attribute @s movement_speed modifier add monsters.broken_moon.1 -1 add_multiplied_base
attribute @s jump_strength modifier add monsters.broken_moon.1 -1 add_multiplied_base
attribute @s gravity modifier add monsters.broken_moon.1 -1 add_multiplied_base

# 額外偵測系統 報數 (1 ~ 5) (根據魔力值決定是否大量使用)

# scoreboard players set @s monster.broken_moon.1.count 2
execute if score @s monster.broken_moon.passive matches 5.. store result score @s monster.broken_moon.1.count run random value 3..5
execute if score @s monster.broken_moon.passive matches ..5 store result score @s monster.broken_moon.1.count run random value 1..3

# 隨機目標 (玩家)
tag @r add monsters.broken_moon.1.target