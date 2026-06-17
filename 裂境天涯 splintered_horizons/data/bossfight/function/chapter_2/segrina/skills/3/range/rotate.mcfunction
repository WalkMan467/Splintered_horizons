scoreboard players add @s global.main 10

particle dust{color:[0.388,1.000,0.757],scale:0.75} ^ ^ ^2 0 0 0 0 0 normal

execute \
    if score @s global.main matches 360.. run \
    return run \
scoreboard players reset @s global.main

execute \
    rotated ~10 0 run \
function bossfight:chapter_2/segrina/skills/3/range/rotate