# 施法
execute if score @s monster.skill.cast.cd matches ..0 run function monsters:chapter_2/forest_afterimage/cast/cast

execute if entity @p[distance=..5] run function monsters:chapter_2/forest_afterimage/melee/use
execute unless entity @p[distance=..5] run function monsters:chapter_2/forest_afterimage/remote/use