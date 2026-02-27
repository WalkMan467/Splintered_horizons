
## ----- Casting begins ----- ##

# Timer

execute \
    if score skill.1 monster.segrina.cd matches 0.. run \
scoreboard players remove skill.1 monster.segrina.cd 1

execute \
    if score skill.2 monster.segrina.cd matches 0.. run \
scoreboard players remove skill.2 monster.segrina.cd 1

execute \
    if score skill.3 monster.segrina.cd matches 0.. run \
scoreboard players remove skill.3 monster.segrina.cd 1

execute \
    if score skill.4 monster.segrina.cd matches 0.. run \
scoreboard players remove skill.4 monster.segrina.cd 1

# Skill


execute \
    if score skill.1 monster.segrina.cd matches ..-1 run \
function monsters:chapter_2/segrina/1/use

execute \
    if score skill.2 monster.segrina.cd matches ..-1 run \
function monsters:chapter_2/segrina/2/use

execute \
    if score skill.3 monster.segrina.cd matches ..-1 run \
function monsters:chapter_2/segrina/3/use

execute \
    if score skill.4 monster.segrina.cd matches ..-1 run \
function monsters:chapter_2/segrina/4/use