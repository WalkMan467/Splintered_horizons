tp @s ^ ^ ^0.25

execute if score @s armor.black_hole.boots.damage_delay matches 0 run damage @s[type=!player,type=!#minecraft:dummy_mob] 2 weapons:bypasses_cooldown by @p


execute unless score @s armor.black_hole.boots.damage_delay matches 1.. run scoreboard players set @s armor.black_hole.boots.damage_delay 3


effect give @s weakness 1 255 false