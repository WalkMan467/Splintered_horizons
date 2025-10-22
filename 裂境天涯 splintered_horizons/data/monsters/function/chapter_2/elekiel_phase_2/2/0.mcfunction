tag @r[distance=..60,gamemode=!spectator] add monster.elekiel_phase_2.skill.2.target

execute at @p[tag=monster.elekiel_phase_2.skill.2.target] positioned ~ ~3.5 ~ rotated 0 0 run function mob:elekiel/3/cage/use

tag @a[gamemode=!spectator,gamemode=!creative,tag=monster.elekiel_phase_2.skill.2.target] remove monster.elekiel_phase_2.skill.2.target