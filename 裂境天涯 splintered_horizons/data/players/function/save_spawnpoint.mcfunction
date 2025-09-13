execute at @n[tag=system.campfire,type=interaction] as @a[limit=1,tag=!this] if score @s player.id = @e[tag=system.campfire.the_last_campfire.point,type=marker,limit=1,tag=!this] system.campfire.the_last_campfire.point run tag @s add this
 
execute at @n[tag=system.campfire,type=interaction] as @e[tag=system.campfire.the_last_campfire.point,type=marker,limit=1,tag=this] run tp @s ~ ~ ~

tag @e[tag=system.campfire.the_last_campfire.point,type=marker,tag=this] remove this