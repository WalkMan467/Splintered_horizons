# ===================================================
# 鐮 終焉之墟 右鍵 blade 階段 1 觸發 / scythe ruins of the finality right click blade step 1 activate

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/use ] >>> 鐮 終焉之墟 右鍵 blade 階段 1 觸發 / scythe ruins of the finality right click blade step 1 activate
    ## Guide [ function players:hide/true ] >>> hide 成立 / hide true branch
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/use ] >>> 鐮 終焉之墟 右鍵 觸發 / scythe ruins of the finality right click activate
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/raycast/final ] >>> 鐮 終焉之墟 右鍵 blade 階段 1 射線 final / scythe ruins of the finality right click blade step 1 raycast final

# ===================================================

tag @s add animation
tag @s add weapon.ruins_of_the_finality.blade.1.animation

scoreboard players set @s weapon.ruins_of_the_finality.blade.animation 11
scoreboard players set @s player.animation.lock 11

title @s title {"text":"\uE000","font": "screen"}
title @s times 0 0 10


execute rotated ~180 0 run \
function aj:ruins_of_the_finality_skill/summon {args: {animation: 'skills_3', start_animation: true}}

function aj:chain_lock/summon {args: {animation: 'unlock', start_animation: true}}

function players:hide/true {duration:40}

spectate @n[tag=aj.ruins_of_the_finality_skill.camera,type=minecraft:item_display]