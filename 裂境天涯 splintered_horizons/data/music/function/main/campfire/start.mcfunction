scoreboard players add @s music.main.campfire.rdm 0


execute \
    if score @s music.main.campfire.rdm matches 0..1 run \
function music:main/campfire/1/start

execute \
    if score @s music.main.campfire.rdm matches 2 run \
function music:main/campfire/2/start


execute \
    store result score @s music.main.campfire.rdm run \
random value 1..2