scoreboard players remove @s[scores={monster.elekiel_phase_2.skill.4.effect.void=0..}] monster.elekiel_phase_2.skill.4.effect.void 1


execute \
    if items entity @s player.cursor *[custom_data~{disable_inventory:1b}] run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/effect/disable_inventory/reset


execute \
    if score @s monster.elekiel_phase_2.skill.4.effect.void matches 1.. run \
return 0

scoreboard players reset @s monster.elekiel_phase_2.skill.4.effect.void

function bossfight:chapter_2/elekiel_phase_2/skills/4/effect/false