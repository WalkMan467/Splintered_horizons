dialog clear @s
execute unless entity @s[type=player] run return 0

tag @s add system.campfire.the_last_campfire.target

execute as @e[tag=system.campfire.the_last_campfire.point,type=marker,tag=!system.campfire.the_last_campfire.tp] if score @s system.campfire.the_last_campfire.point = @p[tag=system.campfire.the_last_campfire.target] player.id run tag @s add system.campfire.the_last_campfire.tp

tp @s[tag=system.campfire.the_last_campfire.target] @n[tag=system.campfire.the_last_campfire.tp,type=marker,tag=system.campfire.the_last_campfire.point]

tag @s remove system.campfire.the_last_campfire.target
tag @n[tag=system.campfire.the_last_campfire.tp,type=marker,tag=system.campfire.the_last_campfire.point] remove system.campfire.the_last_campfire.tp