scoreboard players add @s monster.elekiel_phase_2.skill.3.casting 1


execute \
    if score @s monster.elekiel_phase_2.skill.3.casting matches 1 run \
function bossfight:chapter_2/elekiel_phase_2/skills/3/0


execute \
    if score @s monster.elekiel_phase_2.skill.3.casting matches 1.. run \
function bossfight:chapter_2/elekiel_phase_2/skills/3/end