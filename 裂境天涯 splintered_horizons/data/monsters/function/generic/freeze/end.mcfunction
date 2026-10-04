# ===================================================
# 凍結 結束 / freeze end

    ## Guide [ function monsters:generic/freeze/end ] >>> 凍結 結束 / freeze end
    ## Guide [ function monsters:generic/freeze/kill ] >>> 凍結 冰塊擊破 / freeze ice shatter
    ## Guide [ function monsters:generic/freeze/main ] >>> 凍結 主程式 / freeze main

# ===================================================

execute \
    as @e[sort=arbitrary,tag=monster.freeze.display,type=block_display,distance=..5] at @s \
    if score @s sys.skills_freeze.id = @n[tag=freeze,distance=..5] sys.skills_freeze.id run \
kill @s

scoreboard players reset @s sys.skills_freeze

tag @s remove freeze

data modify entity @s NoAI set value 0b