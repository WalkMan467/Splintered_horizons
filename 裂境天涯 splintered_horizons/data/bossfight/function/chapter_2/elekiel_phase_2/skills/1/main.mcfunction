scoreboard players add @s monster.elekiel_phase_2.skill.1.casting 1

execute \
    if score @s monster.elekiel_phase_2.skill.1.casting matches 1 run \
function bossfight:chapter_2/elekiel_phase_2/skills/1/0

execute \
    if score @s monster.elekiel_phase_2.skill.1.casting matches 21 run \
function bossfight:chapter_2/elekiel_phase_2/skills/1/1


execute \
    if score @s monster.elekiel_phase_2.skill.1.casting matches 300.. run \
function bossfight:chapter_2/elekiel_phase_2/skills/1/end