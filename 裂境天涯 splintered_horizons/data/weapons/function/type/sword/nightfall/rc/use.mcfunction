scoreboard players add @s weapon.nightfall.state 0
scoreboard players add @s weapon.nightfall.cd 0
execute unless score @s weapon.nightfall.cd matches 0 run return 0

execute if score @s weapon.nightfall.state matches 0 if score @s weapon.nightfall.cd matches 0 run function weapons:type/sword/nightfall/rc/state/1

execute if score @s weapon.nightfall.state matches 1 if score @s weapon.nightfall.cd matches 0 run function weapons:type/sword/nightfall/rc/state/0