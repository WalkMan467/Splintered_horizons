scoreboard players add @s global.main 3

particle dust{color:[0.388,1.000,0.757],scale:0.5} ^ ^ ^3 0 0 0 0 0 normal

execute \
    if score @s global.main matches 360.. run \
return run scoreboard players reset @s global.main

execute rotated ~3 0 run function monsters:chapter_2/segrina/3/range/rotate