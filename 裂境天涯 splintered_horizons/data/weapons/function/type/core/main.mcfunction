# ===================================================
# 核心 主迴圈 / core loop

    ## Guide [ function weapons:type/core/main ] >>> 核心 主迴圈 / core loop
    ## Guide [ function weapons:type/core/main_guide ] >>> 核心 main guide / core main guide
    ## Guide [ function sys:monument_point/objective_item/1/return/tips ] >>> monument point objective item 階段 1 return tips / monument point objective item step 1 return tips
    ## Guide [ function main:load ] >>> load / load

# ===================================================

execute \
    as @a at @s run \
function weapons:type/core/main_guide

execute \
    as @a at @s run \
function sys:monument_point/objective_item/1/return/tips

execute \
    as @a \
    if items entity @s weapon.mainhand *[custom_data~{finality:1b} | custom_data~{finality:1}] run \
scoreboard players set @s player.actionbar.eye_of_finality 2
schedule function weapons:type/core/main 1t