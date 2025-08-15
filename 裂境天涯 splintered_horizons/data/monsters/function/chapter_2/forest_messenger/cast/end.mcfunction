
## ----- 重製 ----- ##
scoreboard players reset @s monster.skill.casting

# 標籤
tag @s remove chapter_2.forest_messenger.1

# 隨機技能CD

execute store result score @s monster.skill.cast.cd run random value 160..260