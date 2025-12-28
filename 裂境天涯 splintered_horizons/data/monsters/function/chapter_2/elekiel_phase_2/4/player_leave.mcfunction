function monsters:chapter_2/elekiel_phase_2/4/effect/false
function particle:portal/crack/tp/remove


execute \
    unless score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1 run \
return 0


execute \
    if entity @s[tag=monster.elekiel_phase_2.4.effect.target] run \
function monsters:chapter_2/elekiel_phase_2/4/2

function monsters:bossfight/chapter_2/elekiel_phase_2/player_death