
execute \
    unless score #difficulty global.main matches 1.. run \
return 0

## ----- Detect monster death ----- ##


execute \
    as @e[tag=monster.marker,type=marker] at @s run \
function monsters:detect_kill/loop


execute \
    as @a at @s run \
tag @e[sort=nearest,limit=30,distance=..60,tag=!monsters.guide,tag=monster,type=!#minecraft:dummy_mob,type=!player] add monsters.guide


execute \
    unless entity @n[sort=arbitrary,tag=monsters.guide,type=!player,type=!#minecraft:dummy_mob] run \
return 0


execute \
    as @e[sort=arbitrary,tag=monsters.guide,tag=monster,limit=30,type=!player,type=!#minecraft:dummy_mob] at @s run \
function monsters:main