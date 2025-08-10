execute if score @s monster.skill.casting matches 1 run function monsters:chapter_2/forest_afterimage/1/0
execute if score @s monster.skill.casting matches 1..20 run function monsters:chapter_2/forest_afterimage/1/1

execute if score @s monster.skill.casting matches 20.. run function monsters:chapter_2/forest_afterimage/1/2