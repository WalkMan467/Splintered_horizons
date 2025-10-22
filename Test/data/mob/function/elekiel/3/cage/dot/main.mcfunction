
scoreboard players add @s mob.duration 1

execute if score @s mob.duration matches ..5 run tp @s ^ ^ ^0.675
execute if score @s mob.duration matches 120.. run tp @s ^ ^ ^-0.675

execute if score @s mob.duration matches 125.. run kill @s