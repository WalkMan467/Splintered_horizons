
## ----- 重製 ----- ##
scoreboard players reset @s monster.skill.casting

# 標籤
tag @s remove chapter_1.walkman.1
tag @s remove chapter_1.walkman.2
tag @s remove chapter_1.walkman.3
tag @s remove chapter_1.walkman.4

tag @s remove cast


# 隨機技能CD

execute store result score @s monster.skill.cast.cd run random value 150..250
execute store result score @s monster.skill.rdm.skill run random value 2..4