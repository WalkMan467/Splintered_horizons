
execute \
    unless entity @s[tag=monster.elekiel_phase_2.4.portal.target] run \
return 0

execute \
    if entity @s[tag=chapter_2.elekiel_phase_2.lose] run \
return 0

scoreboard players set @s monster.elekiel_phase_2.skill.4.effect.void 100

tag @s add monster.elekiel_phase_2.4.effect.player

function monsters:chapter_2/elekiel_phase_2/4/effect/disable_inventory/true
function monsters:chapter_2/elekiel_phase_2/4/effect/void