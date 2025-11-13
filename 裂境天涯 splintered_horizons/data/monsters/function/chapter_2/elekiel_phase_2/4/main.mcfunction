scoreboard players add @s monster.elekiel_phase_2.skill.4.casting 1

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 1 run function monsters:chapter_2/elekiel_phase_2/4/0

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 100 as @p[tag=monster.elekiel_phase_2.4.effect.target] at @s run function monsters:chapter_2/elekiel_phase_2/4/2

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 120 as @a[distance=..60] at @s run function monsters:chapter_2/elekiel_phase_2/4/3
execute if score @s monster.elekiel_phase_2.skill.4.casting matches 120..320 run function monsters:chapter_2/elekiel_phase_2/4/4

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 300 run function monsters:chapter_2/elekiel_phase_2/4/5

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 320 run function particle:technological_force_wave/use
execute if score @s monster.elekiel_phase_2.skill.4.casting matches 320 as @a[distance=..60] at @s run function monsters:chapter_2/elekiel_phase_2/4/6

execute if score @s monster.elekiel_phase_2.skill.4.casting matches 360.. run function monsters:chapter_2/elekiel_phase_2/4/end