# @s = marker

scoreboard players add @s weapon.ruins_of_the_finality.blade.timer 25
# mid
tag @s add mid
tp @s ~ ~ ~ ~25 0

scoreboard players operation #temp weapon.ruins_of_the_finality.blade.id = @s weapon.ruins_of_the_finality.blade.id
execute as @e[tag=weapon.ruins_of_the_finality.blade.1,tag=2,type=block_display] if score @s weapon.ruins_of_the_finality.blade.id = #temp weapon.ruins_of_the_finality.blade.id run tag @s add rotater

execute as @a if score @s weapon.ruins_of_the_finality.blade.id = @e[tag=weapon.ruins_of_the_finality.blade.1,tag=2,type=block_display,limit=1] weapon.ruins_of_the_finality.blade.id run tag @s add weapon.ruins_of_the_finality.blade.1.player

execute at @s as @e[type=block_display,tag=rotater,tag=!3,limit=1] positioned ^ ^0.5 ^-8 facing entity @e[type=marker,tag=mid,limit=1] eyes run tp @s ~ ~ ~ ~ ~

execute as @a[limit=1,tag=weapon.ruins_of_the_finality.blade.1.player] run spectate @e[tag=weapon.ruins_of_the_finality.blade.1,tag=2,type=block_display,limit=1,tag=rotater]

execute as @e[tag=weapon.ruins_of_the_finality.blade.1,tag=2,type=block_display,limit=1,tag=rotater] at @s run particle dust{color:[1.000,0.000,0.0],scale:2} ~ ~0.5 ~ 0.5 0 0.5 1 20 normal @a
execute as @e[tag=weapon.ruins_of_the_finality.blade.1,tag=2,type=block_display,limit=1,tag=rotater] at @s run particle trial_spawner_detection ~ ~-1 ~ 0.5 0 0.5 0 20 normal @a

execute as @e[tag=weapon.ruins_of_the_finality.blade.1,tag=2,type=block_display,limit=1,tag=rotater] at @s run function particle:tunder_red/use {spread:1,duration:1}

# reset
execute if score @s weapon.ruins_of_the_finality.blade.timer matches 360.. run function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/clear
tag @e[tag=rotater,type=block_display] remove rotater
tag @s remove mid
tag @a remove weapon.ruins_of_the_finality.blade.1.player