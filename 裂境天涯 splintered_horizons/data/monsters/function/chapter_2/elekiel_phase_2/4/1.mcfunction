tag @s add forced_interrupt_animation
tag @s add monster.elekiel_phase_2.4.effect.target

function players:stop_animation
advancement grant @s only monsters:chapter_2/elekiel_phase_2/4/effect/true

function monsters:chapter_2/elekiel_phase_2/4/portal/use