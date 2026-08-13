scoreboard players add @s monster.elekiel_phase_2.skill.5.casting 1

execute \
    if score @s monster.elekiel_phase_2.skill.5.casting matches 1 run \
function bossfight:chapter_2/elekiel_phase_2/skills/5/0

execute \
    if score @s monster.elekiel_phase_2.skill.5.casting matches 1..300 run \
function bossfight:chapter_2/elekiel_phase_2/skills/5/2

execute \
    if score @s monster.elekiel_phase_2.skill.5.casting matches 300 run \
function bossfight:chapter_2/elekiel_phase_2/skills/5/5

execute \
    if score @s monster.elekiel_phase_2.skill.5.casting matches 300 run \
function bossfight:chapter_2/elekiel_phase_2/skills/5/end