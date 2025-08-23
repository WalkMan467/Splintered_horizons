# 施法
execute if score @s monster.skill.cast.cd matches ..0 run function monsters:chapter_2/elekiel/cast/cast

execute if score $monster.chapter_2.elekiel.3.cd monster.elekiel.skill matches 0.. run scoreboard players remove $monster.chapter_2.elekiel.3.cd monster.elekiel.skill 1

execute if score $monster.chapter_2.elekiel.3.cd monster.elekiel.skill matches 0 run function monsters:chapter_2/elekiel/3/summon