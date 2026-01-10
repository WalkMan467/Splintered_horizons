tag @a remove monster.elekiel_phase_2.4.target

tag @a[sort=arbitrary,distance=..60] add monster.elekiel_phase_2.4.target
tag @a[sort=arbitrary,distance=..60,tag=!animation,gamemode=spectator] remove monster.elekiel_phase_2.4.target
tag @a[sort=arbitrary,distance=..60,tag=chapter_2.elekiel_phase_2.lose] remove monster.elekiel_phase_2.4.target

execute \
    as @a[sort=arbitrary,distance=..60] \
    if score @s entity.dummy_mob matches 1.. run \
tag @s remove monster.elekiel_phase_2.4.target

tag @p[sort=arbitrary,tag=monster.elekiel_phase_2.4.target] add temp
tag @a[sort=arbitrary,tag=!temp,tag=monster.elekiel_phase_2.4.target] remove monster.elekiel_phase_2.4.target
tag @a[sort=arbitrary,tag=temp,tag=monster.elekiel_phase_2.4.target] remove temp

execute \
    unless entity @p[sort=arbitrary,distance=..60,tag=monster.elekiel_phase_2.4.target] run \
tag @p[sort=arbitrary,tag=!animation,gamemode=spectator] add monster.elekiel_phase_2.4.target

tag @p[sort=arbitrary,tag=monster.elekiel_phase_2.4.target] add temp
tag @a[sort=arbitrary,tag=!temp,tag=monster.elekiel_phase_2.4.target] remove monster.elekiel_phase_2.4.target
tag @a[sort=arbitrary,tag=temp,tag=monster.elekiel_phase_2.4.target] remove temp

execute \
    unless entity @p[sort=arbitrary,distance=..60,tag=monster.elekiel_phase_2.4.target] run \
tag @p[sort=arbitrary,distance=..60,scores={entity.dummy_mob=1..}] add monster.elekiel_phase_2.4.target

tag @p[sort=arbitrary,tag=monster.elekiel_phase_2.4.target] add temp
tag @a[sort=arbitrary,tag=!temp,tag=monster.elekiel_phase_2.4.target] remove monster.elekiel_phase_2.4.target
tag @a[sort=arbitrary,tag=temp,tag=monster.elekiel_phase_2.4.target] remove temp