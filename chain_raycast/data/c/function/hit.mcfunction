scoreboard players add .count raycast 1
#say hit

tag @s add hit
#execute at @s as @e[type=armor_stand,tag=!hit,sort=random,distance=..5] facing entity @s feet positioned as @s facing ^ ^ ^-1 run function c:chain

execute at @e[tag=!hit,sort=random,distance=..5,type=armor_stand] anchored eyes facing entity @s eyes as @e[distance=0,limit=1,type=armor_stand] run function c:chain