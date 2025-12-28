
execute \
    unless entity @s[type=player] run \
return 0

tag @s add sys.campfire.the_last_campfire.target


execute \
    as @e[tag=sys.campfire.the_last_campfire.point] \
    if score @s sys.campfire.the_last_campfire.point = @p[tag=sys.campfire.the_last_campfire.target] player.id run \
kill @s

summon marker ~ ~ ~ {Tags:["sys.campfire.the_last_campfire.point","summon"]}

scoreboard players operation @n[tag=summon,tag=sys.campfire.the_last_campfire.point,tag=summon] sys.campfire.the_last_campfire.point = @a[limit=1,tag=sys.campfire.the_last_campfire.target] player.id

tag @n[tag=sys.campfire.the_last_campfire.point,tag=summon] remove summon
tag @s remove sys.campfire.the_last_campfire.target