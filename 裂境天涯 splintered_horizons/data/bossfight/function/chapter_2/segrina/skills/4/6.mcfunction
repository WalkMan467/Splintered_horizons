# @s = 4 技能出現的怪物
# 設置怪物標籤與屬性

tag @s add monster.segrina.skill.4.monster

data modify entity @s DeathLootTable set value "-"
data modify entity @s Glowing set value 1b

scoreboard players set @s duration 600