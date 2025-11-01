scoreboard players add @s monster.elekiel_phase_2.skill.4.casting 1

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 1 run function monsters:chapter_2/elekiel_phase_2/4/0

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 100 as @p[tag=monster.elekiel_phase_2.4.effect.target] at @s run function monsters:chapter_2/elekiel_phase_2/4/2

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 120 as @a[distance=..60] at @s run function monsters:chapter_2/elekiel_phase_2/4/3

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 220 as @a[distance=..60] at @s run function monsters:chapter_2/elekiel_phase_2/4/4

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 260.. run function monsters:chapter_2/elekiel_phase_2/4/end