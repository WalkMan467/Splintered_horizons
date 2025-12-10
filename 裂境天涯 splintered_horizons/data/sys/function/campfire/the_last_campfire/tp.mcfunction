dialog clear @s
execute unless entity @s[type=player] run return 0

tag @s add sys.campfire.the_last_campfire.target

execute as @e[tag=sys.campfire.the_last_campfire.point,type=marker,tag=!sys.campfire.the_last_campfire.tp] if score @s sys.campfire.the_last_campfire.point = @p[tag=sys.campfire.the_last_campfire.target] player.id run tag @s add sys.campfire.the_last_campfire.tp

tp @s[tag=sys.campfire.the_last_campfire.target] @n[tag=sys.campfire.the_last_campfire.tp,type=marker,tag=sys.campfire.the_last_campfire.point]

tag @s remove sys.campfire.the_last_campfire.target
tag @n[tag=sys.campfire.the_last_campfire.tp,type=marker,tag=sys.campfire.the_last_campfire.point] remove sys.campfire.the_last_campfire.tp