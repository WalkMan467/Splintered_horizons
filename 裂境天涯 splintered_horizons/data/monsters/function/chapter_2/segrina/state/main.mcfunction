scoreboard players add @s monster.segrina.state 0
scoreboard players add @s monster.segrina.atk.delay 0
scoreboard players add #disable monster.segrina.state 0

execute \
    if score @s monster.segrina.atk.delay matches 1.. run \
scoreboard players remove @s monster.segrina.atk.delay 1

tag @a[sort=arbitrary,distance=..30] add temp2
tag @a[sort=arbitrary,tag=temp2,distance=..30,tag=!animation,gamemode=spectator] remove temp2
tag @a[sort=arbitrary,tag=temp2,distance=..30,gamemode=creative] remove temp2
tag @a[sort=arbitrary,tag=temp2,distance=..30,tag=chapter_2.segrina.lose] remove temp2

execute \
    if score #disable monster.segrina.state matches 1.. run \
return 0

# State: Run
execute \
    unless score @s monster.segrina.state matches 1 \
    unless score @s monster.segrina.atk.delay matches 1.. \
    if entity @p[sort=arbitrary,distance=3.5..30,tag=temp2] run \
function monsters:chapter_2/segrina/state/run/use

# State: Attack
execute \
    unless score @s monster.segrina.state matches 2 \
    unless score @s monster.segrina.atk.delay matches 1.. \
    if entity @p[sort=arbitrary,distance=..3.5,tag=temp2] run \
function monsters:chapter_2/segrina/state/attack/use

tag @a[sort=arbitrary,tag=temp2,distance=..30] remove temp2