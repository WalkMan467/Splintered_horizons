# ===================================================
# 凍結 主程式 / freeze main

    ## Guide [ function monsters:generic/freeze/main ] >>> 凍結 主程式 / freeze main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:generic/freeze/end ] >>> 凍結 結束 / freeze end
    ## Guide [ function monsters:generic/freeze/start ] >>> 凍結 開始 / freeze start

# ===================================================

execute \
    if entity @s[tag=freeze.immunity] run \
    return run \
scoreboard players reset @s sys.skills_freeze

tag @s add temp

execute \
    unless entity @s[tag=freeze] run \
function monsters:generic/freeze/start
tag @s add freeze
tag @s remove temp

particle dust_color_transition{from_color:[0.000,1.000,0.867],to_color:[0.749,1.000,0.969],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 5 normal
particle block{block_state:"minecraft:ice"} ~ ~1 ~ 0.25 0.5 0.25 1 5 normal

scoreboard players remove @s sys.skills_freeze 1


execute \
    if score @s sys.skills_freeze matches 1.. run \
return 0

function monsters:generic/freeze/end