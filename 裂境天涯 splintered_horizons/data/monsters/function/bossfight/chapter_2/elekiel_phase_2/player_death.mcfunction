function monsters:chapter_2/elekiel_phase_2/4/effect/false
function monsters:chapter_2/elekiel_phase_2/4/portal/crack/tp/remove

execute \
    unless score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1.. run \
return 0

tag @s add chapter_2.elekiel_phase_2.lose
gamemode spectator @a[tag=chapter_2.elekiel_phase_2.lose]