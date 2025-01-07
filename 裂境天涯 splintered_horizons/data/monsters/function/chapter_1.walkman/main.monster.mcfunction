scoreboard players remove @s chapter_1.walkman.1 1
# =====================================================

# 施法
execute if score @s monster.skill.cast.cd matches ..0 run function monsters:chapter_1.walkman/cast/cast
execute if score @s chapter_1.walkman.1 matches ..0 run function monsters:chapter_1.walkman/1/use

execute store result bossbar minecraft:chapter_1.walkman value run data get entity @s Health

bossbar set minecraft:chapter_1.walkman players @a[distance=..60]


execute unless entity @p[distance=..60,gamemode=!spectator] run function monsters:chapter_1.walkman/void