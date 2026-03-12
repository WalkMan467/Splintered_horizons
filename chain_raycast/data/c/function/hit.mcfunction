scoreboard players add .count raycast 1
#say hit

tag @s add hit
#execute at @s as @e[type=armor_stand,tag=sys.zipline_platform.as,tag=!hit,sort=random,distance=..30] facing entity @s feet positioned as @s facing ^ ^ ^-1 run function c:chain

execute at @e[tag=!hit,tag=sys.zipline_platform.as,sort=random,distance=..30,type=armor_stand] anchored eyes facing entity @s eyes as @e[tag=sys.zipline_platform.as,distance=0,limit=1,sort=arbitrary,type=armor_stand] run function c:chain