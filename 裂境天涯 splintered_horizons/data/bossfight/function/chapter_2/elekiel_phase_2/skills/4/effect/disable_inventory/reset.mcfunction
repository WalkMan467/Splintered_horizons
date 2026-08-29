
execute \
    unless entity @s[tag=monster.elekiel_phase_2.void.target] run \
return 0

execute \
    if entity @s[tag=chapter_2.elekiel_phase_2.lose] run \
return 0

function players:uniform/wear/disable
tag @s add monster.elekiel_phase_2.void.target