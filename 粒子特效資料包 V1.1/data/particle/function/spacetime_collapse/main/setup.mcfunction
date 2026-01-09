tag @s remove summon

scoreboard players set @s duration 30

scoreboard players operation @s particle.spacetime_collapse.id = @p[tag=spacetime_collapse.user] player.id

execute if entity @p[tag=spacetime_collapse.user,tag=monster.elekiel_phase_2.4.target,tag=!chapter_2.elekiel_phase_2.lose] run tag @s add monster.elekiel_phase_2.4.portal.point

scoreboard players display name @s particle.spacetime_collapse.id "Spacetime Collapse Main"
scoreboard players display name @s particle.spacetime_collapse.timer "Spacetime Collapse Main Timer"