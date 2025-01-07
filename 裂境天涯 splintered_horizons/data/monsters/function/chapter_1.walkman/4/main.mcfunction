execute if score @s monster.skill.casting matches 1 run function monsters:chapter_1.walkman/4/0
execute if score @s monster.skill.casting matches 20 run function monsters:chapter_1.walkman/4/1
execute if score @s monster.skill.casting matches 20 as @e[tag=chapter_1.walkman.4.clock.pos] at @s run function monsters:chapter_1.walkman/4/2

execute if score @s monster.skill.casting matches 100 run function monsters:chapter_1.walkman/cast/end