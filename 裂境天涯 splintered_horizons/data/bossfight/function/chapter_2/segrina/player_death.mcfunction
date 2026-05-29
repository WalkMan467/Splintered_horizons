execute \
    unless score #bossfight global.main matches 1.. run \
return 0

tag @s add chapter_2.segrina.lose
gamemode spectator @a[tag=chapter_2.segrina.lose]

# 清除鎖 1 血
function monsters:chapter_2/segrina/4/8