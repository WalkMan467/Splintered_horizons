# 施法
execute if score @s monster.skill.cast.cd matches ..0 run function monsters:chapter_2/forest_messenger/cast/cast

execute if entity @p[distance=..5] run function monsters:chapter_2/forest_messenger/melee/use
execute unless entity @p[distance=..5] run function monsters:chapter_2/forest_messenger/remote/use