# @s = 4 技能出現的怪物
# 設置怪物標籤與屬性

tag @s add monster.segrina.skill.4.monster

data modify entity @s DeathLootTable set value "-"
data modify entity @s Glowing set value 1b
attribute @s minecraft:max_health modifier add 1 -0.5 add_multiplied_base
attribute @s minecraft:armor modifier add 1 -0.5 add_multiplied_base

scoreboard players set @s duration 600