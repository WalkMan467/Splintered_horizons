
scoreboard players add #monster.segrina.skill.2.raycast monster.segrina.skill.2.casting 1

# 特效

execute \
    unless score #monster.segrina.skill.2.raycast.color monster.segrina.skill.2.casting matches 1.. run \
particle dust{color:[1.000,1.000,1.000],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a

execute \
    if score #monster.segrina.skill.2.raycast.color monster.segrina.skill.2.casting matches 1 run \
particle dust{color:[1.000,0.800,0.000],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a

execute \
    if score #monster.segrina.skill.2.raycast.color monster.segrina.skill.2.casting matches 2.. run \
particle dust{color:[1.000,0.000,0.000],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a

# 擊中敵人

execute if entity @n[sort=arbitrary,distance=..1.05,tag=monsters.segrina,type=zombie] run return run \
function monsters:chapter_2/segrina/2/raycast/final

# 迴圈

execute \
    if score #monster.segrina.skill.2.raycast monster.segrina.skill.2.casting matches ..49 \
    positioned ^ ^ ^0.25 run \
function monsters:chapter_2/segrina/2/raycast/detect

execute \
    unless score #monster.segrina.skill.2.raycast monster.segrina.skill.2.casting matches ..49 \
    positioned ^ ^ ^0.25 run \
schedule function monsters:chapter_2/segrina/2/raycast/broken 1t