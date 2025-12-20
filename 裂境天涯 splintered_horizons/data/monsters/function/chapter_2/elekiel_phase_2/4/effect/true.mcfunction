execute \
    unless entity @s[tag=monster.elekiel_phase_2.4.effect.target] run \
return 0

execute \
    unless entity @s[tag=temp] run \
return 0

execute \
    if entity @s[tag=chapter_2.elekiel_phase_2.lose] run \
return 0

scoreboard players set @s monster.elekiel_phase_2.skill.4.effect.void 100

function monsters:chapter_2/elekiel_phase_2/4/effect/disable_inventory/true
function monsters:chapter_2/elekiel_phase_2/4/portal/use
function monsters:chapter_2/elekiel_phase_2/4/effect/void