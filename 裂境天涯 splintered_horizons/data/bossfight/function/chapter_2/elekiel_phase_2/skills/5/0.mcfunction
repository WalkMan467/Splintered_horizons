execute \
    positioned -916 60 2750 run \
function bossfight:chapter_2/elekiel_phase_2/skills/5/8

tag @a remove monster.elekiel_phase_2.5.target

tag @a[sort=arbitrary,distance=..60] add monster.elekiel_phase_2.5.target
tag @a[sort=arbitrary,distance=..60,tag=!animation,gamemode=spectator] remove monster.elekiel_phase_2.5.target
tag @a[sort=arbitrary,distance=..60,tag=chapter_2.elekiel_phase_2.lose] remove monster.elekiel_phase_2.5.target

execute \
    as @a[tag=monster.elekiel_phase_2.5.target] at @s run \
function bossfight:chapter_2/elekiel_phase_2/skills/5/1

tag @a remove monster.elekiel_phase_2.5.target

execute \
    positioned -916 60 2750 \
    as @a[sort=arbitrary,distance=..120] at @s run \
function bossfight:chapter_2/elekiel_phase_2/skills/5/death_tips