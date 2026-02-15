tag @a remove monster.elekiel_phase_2.5.target

tag @a[sort=arbitrary,distance=..60] add monster.elekiel_phase_2.5.target
tag @a[sort=arbitrary,distance=..60,tag=!animation,gamemode=spectator] remove monster.elekiel_phase_2.5.target
tag @a[sort=arbitrary,distance=..60,tag=chapter_2.elekiel_phase_2.lose] remove monster.elekiel_phase_2.5.target
tag @a[sort=arbitrary,distance=..60,tag=monsters.elekiel_phase_2.portal.tp.player] add monster.elekiel_phase_2.5.target

execute \
    store result score #temp monster.elekiel_phase_2.skill.5.act.id \
if entity @a[tag=monster.elekiel_phase_2.5.target]

function monsters:chapter_2/elekiel_phase_2/5/6

tag @a remove monster.elekiel_phase_2.5.target

function monsters:chapter_2/elekiel_phase_2/5/4