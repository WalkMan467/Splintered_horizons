#say chain
tag @s add hit
scoreboard players set .itt raycast 30
tp @s ~ 300 ~
function c:raycast
tp @s ~ ~ ~

# chain the chain
execute if score .count raycast matches ..15 if entity @e[tag=origin,distance=..30,type=armor_stand] run function c:hit