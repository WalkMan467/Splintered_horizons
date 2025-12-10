
## ----- Casting begins ----- ##

# Timer
execute if score skill.1 monster.elekiel_phase_2.cd matches 0.. run scoreboard players remove skill.1 monster.elekiel_phase_2.cd 1
execute if score skill.2 monster.elekiel_phase_2.cd matches 0.. run scoreboard players remove skill.2 monster.elekiel_phase_2.cd 1
execute if score skill.4 monster.elekiel_phase_2.cd matches 0.. run scoreboard players remove skill.4 monster.elekiel_phase_2.cd 1
execute if score skill.3 monster.elekiel_phase_2.cd matches 0.. run scoreboard players remove skill.3 monster.elekiel_phase_2.cd 1

# Skill

execute if score skill.1 monster.elekiel_phase_2.cd matches ..-1 run function monsters:chapter_2/elekiel_phase_2/1/use
execute if score skill.2 monster.elekiel_phase_2.cd matches ..-1 run function monsters:chapter_2/elekiel_phase_2/2/use
execute if score skill.3 monster.elekiel_phase_2.cd matches ..-1 run function monsters:chapter_2/elekiel_phase_2/3/use
execute if score skill.4 monster.elekiel_phase_2.cd matches ..-1 run function monsters:chapter_2/elekiel_phase_2/4/use