
execute \
    if entity @s[tag=freeze.immunity] run \
scoreboard players reset @s monster.skill.freeze

execute \
    if entity @s[tag=freeze.immunity] run \
return 0

tag @s add temp

execute \
    unless entity @s[tag=freeze] run \
function monsters:freeze/start
tag @s add freeze
tag @s remove temp

particle dust_color_transition{from_color:[0.000,1.000,0.867],to_color:[0.749,1.000,0.969],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 5 normal
particle block{block_state:"minecraft:ice"} ~ ~1 ~ 0.25 0.5 0.25 1 5 normal

scoreboard players remove @s monster.skill.freeze 1


execute \
    if score @s monster.skill.freeze matches 1.. run \
return 0

function monsters:freeze/end