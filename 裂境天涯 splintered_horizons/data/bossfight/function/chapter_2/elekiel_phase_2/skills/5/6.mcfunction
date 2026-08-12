execute \
    unless score #temp monster.elekiel_phase_2.skill.5.act.id matches 1.. run \
return 0

scoreboard players remove #temp monster.elekiel_phase_2.skill.5.act.id 1

execute \
    as @e[distance=0..60,tag=monster.elekiel_phase_2.5.act,type=interaction] at @s \
    if score @s monster.elekiel_phase_2.skill.5.act.id = @p[sort=arbitrary,tag=!monster.elekiel_phase_2.skill.5.temp,tag=monster.elekiel_phase_2.5.target] player.id run \
tag @s add monster.elekiel_phase_2.skill.5.tp

execute \
    as @p[sort=arbitrary,tag=!monster.elekiel_phase_2.skill.5.temp,tag=!monster.elekiel_phase_2.skill.5.player,tag=monster.elekiel_phase_2.5.target] at @s \
    if score @s player.id = @n[sort=arbitrary,tag=monster.elekiel_phase_2.skill.5.tp,tag=monster.elekiel_phase_2.5.act] monster.elekiel_phase_2.skill.5.act.id run \
tag @s add monster.elekiel_phase_2.skill.5.player

execute \
    as @p[sort=arbitrary,distance=0..60,tag=!monster.elekiel_phase_2.skill.5.temp,tag=monster.elekiel_phase_2.skill.5.player] \
    at @n[sort=arbitrary,distance=0..60,tag=monster.elekiel_phase_2.skill.5.tp,tag=monster.elekiel_phase_2.5.act,type=interaction] run \
tp @s ~ ~ ~

execute \
    as @p[sort=arbitrary,distance=0..60,tag=!monster.elekiel_phase_2.skill.5.temp,tag=monster.elekiel_phase_2.skill.5.player] at @s run \
function bossfight:chapter_2/elekiel_phase_2/skills/5/7

execute \
    as @n[sort=arbitrary,distance=0..60,tag=monster.elekiel_phase_2.skill.5.tp,tag=monster.elekiel_phase_2.5.act,type=interaction] \
    on passengers \
    if entity @s[tag=aj.memory_afterimage.root] run \
function aj:memory_afterimage/remove/this


tag @p[sort=arbitrary,distance=0..60,tag=monster.elekiel_phase_2.skill.5.player] add monster.elekiel_phase_2.skill.5.temp
tag @p[sort=arbitrary,distance=0..60,tag=monster.elekiel_phase_2.skill.5.player] remove monster.elekiel_phase_2.skill.5.player
tag @n[sort=arbitrary,distance=0..60,tag=monster.elekiel_phase_2.skill.5.tp,tag=monster.elekiel_phase_2.5.act,type=interaction] remove monster.elekiel_phase_2.skill.5.tp

function bossfight:chapter_2/elekiel_phase_2/skills/5/6

execute \
    if score #temp monster.elekiel_phase_2.skill.5.act.id matches 0 run \
tag @a remove monster.elekiel_phase_2.skill.5.temp