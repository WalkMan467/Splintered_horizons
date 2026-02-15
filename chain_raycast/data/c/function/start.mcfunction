scoreboard players set .itt raycast 30
scoreboard players set .count raycast 0
tag @s add origin

execute anchored eyes run function c:raycast


execute as @e[distance=0..,tag=hit,type=armor_stand] at @s run function c:damage
tag @s remove origin