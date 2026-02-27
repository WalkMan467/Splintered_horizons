execute \
    if score @s monster.skill.freeze matches 1.. run \
return run function monsters:ai_controller/cast/end

scoreboard players add @s monster.skill.ai_controller.casting 1

execute \
    if score @s monster.skill.ai_controller.casting matches 1 run \
function monsters:ai_controller/1/0

execute \
    if score @s monster.skill.ai_controller.casting matches 100 run \
function monsters:ai_controller/1/1

execute \
    if score @s monster.skill.ai_controller.casting >= @s monster.skill.ai_controller.end run \
function monsters:ai_controller/1/1