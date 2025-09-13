execute unless entity @s[type=player] run return 0

tag @s add system.campfire.the_last_campfire.target

execute as @e[tag=system.campfire.the_last_campfire.point] if score @s system.campfire.the_last_campfire.point = @p[tag=system.campfire.the_last_campfire.target] player.id run kill @s

summon marker ~ ~ ~ {Tags:["system.campfire.the_last_campfire.point","summon"]}

scoreboard players operation @n[tag=summon,tag=system.campfire.the_last_campfire.point,tag=summon] system.campfire.the_last_campfire.point = @a[limit=1,tag=system.campfire.the_last_campfire.target] player.id

tag @n[tag=system.campfire.the_last_campfire.point,tag=summon] remove summon
tag @s remove system.campfire.the_last_campfire.target