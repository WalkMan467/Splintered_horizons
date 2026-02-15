particle dust{color:[1.000,0.859,0.388],scale:0.75} ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players remove .itt raycast 1

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,type=armor_stand] positioned ~-0.7 ~-0.7 ~-0.7 run scoreboard players set .itt raycast -1

execute if score .itt raycast matches 1.. positioned ^ ^ ^0.5 run function c:raycast

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[tag=!hit,dx=0,type=armor_stand] positioned ~-0.7 ~-0.7 ~-0.7 positioned ~0.85 ~0.85 ~0.85 run function c:hit