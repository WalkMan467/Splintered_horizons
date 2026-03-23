scoreboard players add #delay main.trigger 0

execute \
    unless score @s main.trigger matches 1.. run \
return 0


execute \
    unless score #delay main.trigger matches 1.. \
    unless score #nightmare main.difficulty matches 1 \
    if score @s main.trigger matches 1 run \
function main:nightmare/1

execute \
    unless score #delay main.trigger matches 1.. \
    if score #nightmare main.difficulty matches 1 \
    if score @s main.trigger matches 1 run \
function main:nightmare/0

scoreboard players enable @s main.trigger
scoreboard players set @s main.trigger 0
scoreboard players set #delay main.trigger 0