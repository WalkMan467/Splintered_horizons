execute if score @s monster.skill.freeze matches 0.. run function monsters:chapter_2/forest_messenger/1/1
execute if score @s monster.skill.freeze matches 0.. run return 0

execute if score @s monster.skill.casting matches 1 run function monsters:chapter_2/forest_messenger/1/0
execute if score @s monster.skill.casting matches 1.. run function monsters:chapter_2/forest_messenger/1/detect

execute if score @s monster.skill.casting matches 200.. run function monsters:chapter_2/forest_messenger/1/1