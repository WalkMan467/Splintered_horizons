scoreboard players add @s monster.elekiel.3.state 0
scoreboard players add @s monster.elekiel.3.atk.delay 0

execute \
    if score @s monster.elekiel.3.atk.delay matches 1.. run \
scoreboard players remove @s monster.elekiel.3.atk.delay 1


# State: Run

execute \
    unless score @s monster.elekiel.3.state matches 1 \
    if entity @p[sort=arbitrary,distance=6..30] run \
function monsters:chapter_2/elekiel/state/run/use

# State: Attack

execute \
    unless score @s monster.elekiel.3.state matches 2 \
    unless score @s monster.elekiel.3.atk.delay matches 1.. \
    if entity @p[sort=arbitrary,distance=..6] run \
function monsters:chapter_2/elekiel/state/attack/use

tag @a remove temp2