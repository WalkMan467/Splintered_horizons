execute unless entity @s[type=player] run return 0
execute unless entity @s[tag=monsters.elekiel_phase_2.portal.tp.player] run return 0

scoreboard players set @s monster.elekiel_phase_2.skill.4.portal.tp.cd 20

tag @s add monsters.elekiel_phase_2.portal.tp.remove

execute as @e[type=block_display,tag=monsters.elekiel_phase_2.portal.tp] at @s if score @s monster.elekiel_phase_2.skill.4.portal.id = @p[tag=monsters.elekiel_phase_2.portal.tp.player,tag=monsters.elekiel_phase_2.portal.tp.remove,gamemode=spectator] player.id run kill @s

gamemode survival @s[scores={monster.elekiel_phase_2.skill.4.player.gamemode=1}]
gamemode creative @s[scores={monster.elekiel_phase_2.skill.4.player.gamemode=2}]
gamemode adventure @s[scores={monster.elekiel_phase_2.skill.4.player.gamemode=3}]
gamemode spectator @s[scores={monster.elekiel_phase_2.skill.4.player.gamemode=4}]

tp @s ~ ~ ~

scoreboard players reset @s monster.elekiel_phase_2.skill.4.player.gamemode

tag @s remove monsters.elekiel_phase_2.portal.tp.remove
tag @s remove monsters.elekiel_phase_2.portal.tp.player
tag @s remove monsters.elekiel_phase_2.portal.in