# @s = marker

scoreboard players add @s weapon.nightfall.charge_timer 25
# mid
tag @s add mid
tp @s ~ ~ ~ ~30 0

scoreboard players operation #temp weapon.nightfall.charge = @s weapon.nightfall.charge
execute as @e[tag=weapon.nightfall.p,tag=2,type=block_display] if score @s weapon.nightfall.charge = #temp weapon.nightfall.charge run tag @s add rotater

execute at @s as @e[type=block_display,tag=rotater,tag=!3,limit=1] positioned ^ ^ ^4 facing entity @e[type=marker,tag=mid,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute at @s as @e[type=block_display,tag=rotater,tag=3,limit=1] positioned ^ ^ ^-4 facing entity @e[type=marker,tag=mid,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=block_display,tag=rotater] on passengers at @s facing entity @e[type=marker,tag=mid,limit=1] eyes run tp @s ~ ~ ~ ~180 ~

# particle
execute as @e[tag=rotater,type=block_display] at @s run function weapons:type/sword/nightfall/passive/range_particle2

# reset
execute if score @s weapon.nightfall.charge_timer matches 360.. run function weapons:type/sword/nightfall/passive/dmg/clear
tag @e[tag=rotater,type=block_display] remove rotater
tag @s remove mid