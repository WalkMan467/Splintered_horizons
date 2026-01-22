tp @s ^ ^ ^1
particle dust{color:[1.000,0.867,0.000],scale:1.5} ~ ~ ~ 0.25 0.25 0.25 0 5 force @a


execute \
    if score @s[tag=!monster.elekiel_phase_2.skill.4.portal.target] monster.elekiel_phase_2.skill.4.portal.id = @p[tag=monsters.elekiel_phase_2.portal.tp.player] player.id run \
tag @s add monster.elekiel_phase_2.skill.4.portal.target

execute \
    as @a[tag=monsters.elekiel_phase_2.portal.tp.player,tag=!monster.elekiel_phase_2.skill.4.portal.target] \
    if score @s player.id = @e[tag=monster.elekiel_phase_2.skill.4.portal.target,limit=1,type=block_display,tag=monsters.elekiel_phase_2.portal.tp] monster.elekiel_phase_2.skill.4.portal.id run \
tag @s add monster.elekiel_phase_2.skill.4.portal.target


execute \
    as @a[tag=monster.elekiel_phase_2.skill.4.portal.target,tag=monsters.elekiel_phase_2.portal.tp.player] at @s run \
spectate @e[limit=1,tag=monster.elekiel_phase_2.skill.4.portal.target,type=block_display,tag=monsters.elekiel_phase_2.portal.tp]

tag @a remove monster.elekiel_phase_2.skill.4.portal.target
tag @e[tag=monster.elekiel_phase_2.skill.4.portal.target,type=block_display,tag=monsters.elekiel_phase_2.portal.tp] remove monster.elekiel_phase_2.skill.4.portal.target


execute \
    unless entity @n[sort=arbitrary,distance=..60,tag=monsters.elekiel_phase_2,type=skeleton] \
    as @p[tag=monsters.elekiel_phase_2.portal.tp.player,gamemode=spectator] run \
function monsters:chapter_2/elekiel_phase_2/4/portal/crack/tp/remove_2

execute \
    unless entity @n[type=minecraft:item_display,tag=mob.elekiel.2.crack,tag=mob.elekiel.2.display,tag=mob.elekiel.display,distance=..4] run \
return 0

execute \
    if score @s monster.elekiel_phase_2.skill.4.portal.tp.id = @n[type=minecraft:item_display,tag=mob.elekiel.2.crack,tag=mob.elekiel.2.display,tag=mob.elekiel.display,distance=..4] monster.elekiel_phase_2.skill.4.portal.id run \
return 0


execute \
    as @p[tag=monsters.elekiel_phase_2.portal.tp.player,gamemode=spectator] run \
function monsters:chapter_2/elekiel_phase_2/4/portal/crack/tp/remove