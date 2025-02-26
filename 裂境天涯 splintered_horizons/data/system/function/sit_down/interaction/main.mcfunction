execute as @s[tag=system.sit_down.act,tag=!active] at @s if entity @p[distance=..2.5] run function system:sit_down/interaction/view/1

execute as @s[tag=system.sit_down.act,tag=active] on passengers if entity @s[type=player] run function system:sit_down/interaction/view/0
execute as @s[tag=system.sit_down.act,tag=active] at @s unless entity @p[distance=..2.5] run function system:sit_down/interaction/view/0

execute as @s[tag=system.sit_down.act] if data entity @s interaction.timestamp run function system:sit_down/interaction/run