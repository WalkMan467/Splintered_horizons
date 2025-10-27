scoreboard players set skill.4 monster.elekiel_phase_2.cd 580
scoreboard players reset @s monster.elekiel_phase_2.skill.4.casting

execute as @a at @s run function particle:portal/crack/tp/remove

execute as @e[tag=mob.elekiel.2.display,type=!player] on passengers run kill @s
execute as @e[tag=mob.elekiel.2.display,type=!player] on passengers on passengers run kill @s

kill @e[tag=mob.elekiel.2.display,type=!player]

tag @s remove chapter_2.elekiel_phase_2.4