scoreboard players add @s monster.elekiel_phase_2.skill.2.casting 1


execute \
    if score @s monster.elekiel_phase_2.skill.2.casting matches 1 run \
function bossfight:chapter_2/elekiel_phase_2/skills/2/0


execute \
    if score @s monster.elekiel_phase_2.skill.2.casting matches 100.. run \
function bossfight:chapter_2/elekiel_phase_2/skills/2/end