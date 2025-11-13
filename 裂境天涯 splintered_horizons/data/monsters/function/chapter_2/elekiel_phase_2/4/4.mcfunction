bossbar set minecraft:chapter_2.elekiel_phase_2.4 players @a[distance=..60]

scoreboard players add #chapter_2.elekiel_phase_2.4 monster.elekiel_phase_2.skill.2.casting 1

execute store result bossbar chapter_2.elekiel_phase_2.4 value run scoreboard players get #chapter_2.elekiel_phase_2.4 monster.elekiel_phase_2.skill.2.casting