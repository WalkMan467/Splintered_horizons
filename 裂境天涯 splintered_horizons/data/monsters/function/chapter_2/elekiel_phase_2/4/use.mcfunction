# 跟技能 2、3、4 綁定
scoreboard players reset skill.4 monster.elekiel_phase_2.cd
scoreboard players reset skill.3 monster.elekiel_phase_2.cd

tag @s add chapter_2.elekiel_phase_2.4
tag @s add chapter_2.elekiel_phase_2.3

execute unless score #player.count global.main matches 2.. run return 0

scoreboard players set skill.2 monster.elekiel_phase_2.cd 20