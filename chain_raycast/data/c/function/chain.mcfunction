#say chain

execute \
    if entity @s[tag=sys.zipline_platform.remove] run \
return 0

tag @s add hit
scoreboard players set .itt raycast 60

execute \
    on vehicle run \
tag @s add vehicle

tp @s ~ 300 ~
function c:raycast
tp @s ~ ~ ~
ride @s mount @n[distance=..3,sort=arbitrary,tag=vehicle,type=#dummy_mob]

execute \
    on vehicle run \
tag @s remove vehicle


# chain the chain
execute if score .count raycast matches ..15 if entity @e[tag=origin,tag=sys.zipline_platform.as,distance=..30,type=armor_stand] run function c:hit