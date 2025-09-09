execute as @s[tag=system.sit_down.act,tag=!active] if entity @p[distance=..2.5,gamemode=!spectator] run function system:sit_down/interaction/view/1

execute as @s[tag=system.sit_down.act,tag=active] on passengers if entity @s[type=player] run function system:sit_down/interaction/view/0
execute as @s[tag=system.sit_down.act,tag=active] unless entity @p[distance=..2.5,gamemode=!spectator] run function system:sit_down/interaction/view/0

execute as @s[tag=system.sit_down.act] on passengers if entity @s[type=player] run scoreboard players set @s player.shift.skill.disable 11

execute as @s[tag=system.sit_down.act] if data entity @s interaction.timestamp run function system:sit_down/interaction/run