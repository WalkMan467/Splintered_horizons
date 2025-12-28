
execute \
    if score #monster.elekiel_phase_2.skill.4.portal.actived global.main matches 1 run \
return 0


execute \
    if entity @s[type=player] run \
function monsters:chapter_2/elekiel_phase_2/4/effect/false

scoreboard players set #monster.elekiel_phase_2.skill.4.portal.actived global.main 1


execute \
    if entity @s[type=player] run \
tag @s remove monster.elekiel_phase_2.4.effect.target


execute \
    if entity @n[tag=mob.elekiel.2.crack,type=minecraft:item_display,distance=..8] rotated \
    as 00000100-0000-0080-0000-008000000005 rotated ~ 0 \
    positioned ^ ^ ^9 run \
function particle:portal/crack/use

execute \
    if entity @n[tag=mob.elekiel.2.crack,type=minecraft:item_display,distance=..8] run \
return 0

function monsters:chapter_2/elekiel_phase_2/4/portal/use

kill @n[sort=arbitrary,tag=monster.elekiel_phase_2.4.effect.target.player_leave.detect,type=marker]