execute \
    unless score #bossfight global.main matches 1.. run \
return 0

tag @s add chapter_2.segrina.lose
gamemode spectator @a[tag=chapter_2.segrina.lose]

# 清除無敵
function bossfight:chapter_2/segrina/skills/4/8

# 清除鎖 1 血
function bossfight:chapter_2/segrina/skills/4/9

attribute @s minecraft:max_health modifier remove bossfight.segrina.skills.3.1
attribute @s minecraft:max_health modifier remove bossfight.segrina.skills.3.2
attribute @s minecraft:max_health modifier remove bossfight.segrina.skills.3.3