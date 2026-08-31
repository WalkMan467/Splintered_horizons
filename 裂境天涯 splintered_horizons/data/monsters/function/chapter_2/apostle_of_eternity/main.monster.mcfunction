# ===================================================
# 「永劫」的使徒 本體 冷卻檢查 / apostle of eternity self cooldown check

    ## Guide [ function monsters:chapter_2/apostle_of_eternity/main.monster ] >>> 「永劫」的使徒 本體 冷卻檢查 / apostle of eternity self cooldown check
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/main ] >>> 「永劫」的使徒 主程式 / apostle of eternity main
    ## Guide [ function monsters:chapter_2/apostle_of_eternity/cast/cast ] >>> 「永劫」的使徒 施法 開始 / apostle of eternity cast begin
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_2/apostle_of_eternity/cast/cast