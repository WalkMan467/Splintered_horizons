
execute \
    if entity @s[tag=monster.elekiel_phase_2.void.target] run \
return 0


execute \
    unless entity @s[tag=monster.elekiel_phase_2.4.effect.player] run \
return 0

execute \
    if entity @s[tag=chapter_2.elekiel_phase_2.lose] run \
return 0

tag @s add monster.elekiel_phase_2.void.target

function players:uniform/refresh

function cse:status_effects/apply/clear
