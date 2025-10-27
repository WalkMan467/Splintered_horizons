
tag @s add temp
execute as @a unless score @s monster.elekiel_phase_2.skill.4.effect.void matches 0.. unless score @s entity.dummy_mob matches 1.. positioned ~-4.0 ~-3.375 ~-4.0 if entity @s[dx=7,dy=5.75,dz=7] run tag @s add mob.elekiel.3.cage.imprison

execute as @a[tag=mob.elekiel.3.cage.imprison.last_tick] at @s run function mob:elekiel/3/cage/imprison/tp/use

tag @a[tag=mob.elekiel.3.cage.imprison] add mob.elekiel.3.cage.imprison.last_tick
tag @a[tag=mob.elekiel.3.cage.imprison] remove mob.elekiel.3.cage.imprison
tag @s remove temp