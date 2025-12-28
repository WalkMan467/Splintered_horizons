
scoreboard players add @s mob.duration 1


execute at @s run \
function mob:elekiel/3/cage/bullet/2

execute at @s run \
function mob:elekiel/3/cage/bullet/2

execute at @s run \
function mob:elekiel/3/cage/bullet/2

execute at @s run \
function mob:elekiel/3/cage/bullet/2

scoreboard players operation #remain mob.duration = @s mob.duration
scoreboard players operation #remain mob.duration %= #5 mob.main

execute \
    if score #remain mob.duration matches 0 at @s run \
function mob:elekiel/3/cage/bullet/3

# Damage

execute \
    if entity @a[tag=sys.victim,limit=1] run \
function mob:elekiel/3/cage/bullet/hit


execute \
    if score @s mob.duration matches 100.. run \
function mob:elekiel/3/cage/bullet/clear