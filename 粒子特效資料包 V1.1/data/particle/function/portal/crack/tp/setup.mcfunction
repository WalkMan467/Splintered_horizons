execute unless entity @s[type=block_display] run return 0

rotate @s facing entity @e[type=minecraft:item_display,tag=mob.elekiel.2.crack,tag=mob.elekiel.2.display,tag=mob.elekiel.display,sort=furthest,limit=1] feet
tp @s ^ ^ ^1

tag @s add monsters.elekiel_phase_2.portal.tp

data merge entity @s {start_interpolation:1,interpolation_duration:5,teleport_duration:5,block_state: {Name: "minecraft:air"}}

scoreboard players operation @s monster.elekiel_phase_2.skill.4.portal.id = @p[tag=monsters.elekiel_phase_2.portal.tp.player] player.id
scoreboard players operation @s monster.elekiel_phase_2.skill.4.portal.tp.id = @n[type=item_display,tag=mob.elekiel.2.crack,tag=mob.elekiel.2.display,tag=mob.elekiel.display] monster.elekiel_phase_2.skill.4.portal.id