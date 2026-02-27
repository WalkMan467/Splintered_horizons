# Skill 1

schedule function monsters:ai_controller/main 1t

execute \
    unless score #difficulty global.main matches 1.. run \
return 0

execute \
    as @a at @s \
    as @e[sort=arbitrary,distance=..60,tag=monsters.ai_controller.actived,type=zombie] at @s run \
function monsters:ai_controller/1/main

# Monster Self

execute \
    as @a at @s \
    as @e[sort=arbitrary,distance=..60,tag=monsters.ai_controller,type=zombie] at @s run \
function monsters:ai_controller/main.monster