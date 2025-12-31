scoreboard players add @s monster.elekiel.3.state 0
scoreboard players add @s monster.elekiel.3.atk.delay 0
execute if score @s monster.elekiel.3.atk.delay matches 1.. run scoreboard players remove @s monster.elekiel.3.atk.delay 1

tag @a[sort=arbitrary,distance=..30] add temp2
tag @a[sort=arbitrary,tag=temp2,distance=..30,tag=!animation,gamemode=spectator] remove temp2
tag @a[sort=arbitrary,tag=temp2,distance=..30,gamemode=creative] remove temp2
tag @a[sort=arbitrary,tag=temp2,distance=..30,tag=chapter_2.elekiel.lose] remove temp2

# State: Run
execute \
    unless score @s monster.elekiel.3.state matches 1 \
    unless score @s monster.elekiel.3.atk.delay matches 1.. \
    if entity @p[sort=arbitrary,distance=4..30,tag=temp2] run \
function monsters:chapter_2/elekiel/state/run/use

# State: Attack
execute \
    unless score @s monster.elekiel.3.state matches 2 \
    unless score @s monster.elekiel.3.atk.delay matches 1.. \
    if entity @p[sort=arbitrary,distance=..4,tag=temp2] run \
function monsters:chapter_2/elekiel/state/attack/use

tag @a[sort=arbitrary,tag=temp2,distance=..30] remove temp2