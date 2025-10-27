tag @a add temp
tag @a[tag=!animation,gamemode=spectator] remove temp
execute if score #player.count global.main matches 2.. run tag @a[scores={monster.elekiel_phase_2.skill.4.effect.void=1..}] remove temp
execute as @a if score @s entity.dummy_mob matches 1.. run tag @s remove temp

tag @r[tag=temp,distance=..60] add monster.elekiel_phase_2.skill.2.target

tag @a remove temp

execute at @p[tag=monster.elekiel_phase_2.skill.2.target] positioned ~ ~3.5 ~ rotated 0 0 run function mob:elekiel/3/cage/use

tag @a remove monster.elekiel_phase_2.skill.2.target