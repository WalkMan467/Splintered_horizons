execute if score @s monster.skill.casting matches 1 run function monsters:chapter_1.walkman/3/0
execute if score @s monster.skill.casting matches 20 run function monsters:chapter_1.walkman/3/1
execute if score @s monster.skill.casting matches 30..40 run function monsters:chapter_1.walkman/3/2
execute if score @s monster.skill.casting matches 30 as @e[tag=chapter_1.walkman.3.skill] at @s run function monsters:chapter_1.walkman/3/3
execute if score @s monster.skill.casting matches 40.. as @e[tag=chapter_1.walkman.3.skill] at @s run function monsters:chapter_1.walkman/3/4

execute if score @s monster.skill.casting matches 100 run function monsters:chapter_1.walkman/cast/end