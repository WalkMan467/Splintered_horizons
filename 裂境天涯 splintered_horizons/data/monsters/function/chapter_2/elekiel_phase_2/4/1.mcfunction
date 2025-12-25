tag @s add forced_interrupt_animation
tag @s add monster.elekiel_phase_2.4.effect.target

summon marker ~ ~ ~ {Tags:["monster.elekiel_phase_2.4.effect.target.player_leave.detect"]}

function players:stop_animation
function monsters:chapter_2/elekiel_phase_2/4/effect/true