# Cast

function monsters:ai_controller/setup

execute \
    if score @s monster.skill.ai_controller.cd matches 1.. run \
scoreboard players remove @s monster.skill.ai_controller.cd 1

execute \
    if score @s monster.skill.ai_controller.cd matches ..0 run \
function monsters:ai_controller/cast/cast