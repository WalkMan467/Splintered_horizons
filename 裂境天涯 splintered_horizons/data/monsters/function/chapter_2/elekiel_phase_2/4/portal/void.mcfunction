
# take all on passenger / vehicle to death
tag @s add particle.portal.void

execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{passenger:{}}} \
    on passengers \
    unless entity @s[tag=particle.portal.void] run \
function monsters:chapter_2/elekiel_phase_2/4/portal/void

execute \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} \
    on vehicle \
    unless entity @s[tag=particle.portal.void] run \
function monsters:chapter_2/elekiel_phase_2/4/portal/void

tp @s ~ -255 ~
kill @s