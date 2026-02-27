function weapons:type/core/main_guide

function weapons:type/sword/aquilumera/detect

execute \
    as @a at @s run \
function weapons:type/sword/aquilumera/return/tips

execute \
    as @a \
    if items entity @s weapon.mainhand *[custom_data~{finality:1b} | custom_data~{finality:1}] run \
scoreboard players set @s player.actionbar.eye_of_finality 2
schedule function weapons:type/core/main 1t