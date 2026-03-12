particle dust{color:[1.000,0.333,0.000],scale:1} ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players remove .itt raycast 1

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=sys.zipline_platform.as,dx=0,type=armor_stand] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run scoreboard players set .itt raycast -1

execute if score .itt raycast matches 1.. positioned ^ ^ ^0.5 run function c:raycast

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=sys.zipline_platform.as,tag=!hit,dx=0,type=armor_stand] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run function c:hit