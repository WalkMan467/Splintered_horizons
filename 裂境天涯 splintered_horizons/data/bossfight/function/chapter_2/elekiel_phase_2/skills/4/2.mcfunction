execute \
    if items entity @p[tag=monster.elekiel_phase_2.4.portal.target] armor.chest *[!minecraft:custom_data~{damage_immunity:1b}] run \
item modify entity @p[tag=monster.elekiel_phase_2.4.portal.target] armor.chest [{function:"minecraft:set_enchantments",enchantments:{"bossfight:chapter_2/elekiel_phase_2/skills/4/damage_immunity":0,"minecraft:binding_curse":0}}]

execute \
    if items entity @p[tag=monster.elekiel_phase_2.4.portal.target] armor.chest *[minecraft:custom_data~{damage_immunity:1b}] run \
item replace entity @p[tag=monster.elekiel_phase_2.4.portal.target] armor.chest with air 1

execute \
    at 0020ac89-fe15-d2ca-0024-d629fff9b4fb run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/portal/crack/use

execute \
    positioned -916 60 2750 \
    as @a[sort=arbitrary,distance=..120] at @s run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/death_tips


execute \
    as @p[tag=monster.elekiel_phase_2.4.portal.target] at @s run \
function bossfight:chapter_2/elekiel_phase_2/skills/4/effect/true