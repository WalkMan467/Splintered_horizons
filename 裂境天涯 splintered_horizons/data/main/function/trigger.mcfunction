# execute \
    if score @s main.trigger matches 1 run \
gamerule doDaylightCycle false
# execute \
    if score @s main.trigger matches 1 run \
time set midnight

# execute \
    if score @s main.trigger matches 2 run \
gamerule doDaylightCycle true

# execute \
    if score @s main.trigger matches 3 run \
gamerule doDaylightCycle false
# execute \
    if score @s main.trigger matches 3 run \
time set day

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