tag @a remove weapon.hook.aim_assist.player
tag @a remove weapon.hook.player


execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{type:"drop",weapon:"hook"}] run tag @s add weapon.hook.player
execute as @a if predicate players:detect/input/sneak if items entity @s weapon.mainhand *[minecraft:custom_data~{type:"drop",weapon:"hook"}] run tag @s add weapon.hook.aim_assist.player

execute as @a[tag=weapon.hook.aim_assist.player] at @s anchored eyes positioned ^ ^ ^20 if entity @n[distance=..10,tag=weapon.hook.target,type=#dummy_mob] run tag @s add weapon.hook.target.player.temp
execute as @a[tag=weapon.hook.aim_assist.player] at @s anchored eyes positioned ^ ^ ^20 as @n[distance=..10,tag=weapon.hook.target,type=#dummy_mob] run tag @s add weapon.hook.target.temp


scoreboard players operation @a[tag=weapon.hook.target.player.temp] weapon.hook.target.id = @n[tag=weapon.hook.target.temp,type=#dummy_mob] weapon.hook.target.id

execute as @a[tag=weapon.hook.target.player.temp] at @s anchored eyes facing entity @n[tag=weapon.hook.target.temp,type=#dummy_mob] eyes positioned ^ ^ ^8 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

tag @a remove weapon.hook.target.player.temp
tag @e[tag=weapon.hook.target.temp,type=#dummy_mob] remove weapon.hook.target.temp

schedule function weapons:type/drop/hook/aim_assist/main 1t