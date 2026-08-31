# ===================================================
# 森林信使 本體 冷卻與武器切換 / forest messenger self tick

    ## Guide [ function monsters:chapter_2/forest_messenger/main.monster ] >>> 森林信使 本體 冷卻與武器切換 / forest messenger self tick
    ## Guide [ function monsters:chapter_2/forest_messenger/main ] >>> 森林信使 主程式 / forest messenger main
    ## Guide [ function monsters:chapter_2/forest_messenger/cast/cast ] >>> 森林信使 施法 開始 / forest messenger cast begin
    ## Guide [ function monsters:chapter_2/forest_messenger/melee/use ] >>> 森林信使 切換近戰武器 / forest messenger switch to melee
    ## Guide [ function monsters:chapter_2/forest_messenger/remote/use ] >>> 森林信使 切換遠程武器 / forest messenger switch to ranged
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_2/forest_messenger/cast/cast


execute \
    if entity @p[distance=..5] run \
function monsters:chapter_2/forest_messenger/melee/use

execute \
    unless entity @p[distance=..5] run \
function monsters:chapter_2/forest_messenger/remote/use