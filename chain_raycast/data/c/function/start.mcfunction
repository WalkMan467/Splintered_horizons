execute \
    if entity @s[tag=sys.zipline_platform.remove] run \
return 0

scoreboard players set .itt raycast 60
scoreboard players set .count raycast 0
tag @s add origin

execute anchored eyes run function c:raycast


execute as @e[distance=0..,tag=sys.zipline_platform.as,tag=hit,type=armor_stand] at @s run function c:damage
tag @s remove origin