# ===================================================
# 烈陽使者 本體 冷卻檢查 / sunfire emissary self cooldown check

    ## Guide [ function monsters:chapter_3/sunfire_emissary/main.monster ] >>> 烈陽使者 本體 冷卻檢查 / sunfire emissary self cooldown check
    ## Guide [ function monsters:chapter_3/sunfire_emissary/main ] >>> 烈陽使者 主程式 / sunfire emissary main
    ## Guide [ function monsters:chapter_3/sunfire_emissary/cast/cast ] >>> 烈陽使者 施法 開始 / sunfire emissary cast begin
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_3/sunfire_emissary/cast/cast