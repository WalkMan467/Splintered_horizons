# ===================================================
# 時空裂痕的使者 本體 冷卻檢查 / emissary of the temporal rift self cooldown check

    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/main.monster ] >>> 時空裂痕的使者 本體 冷卻檢查 / emissary of the temporal rift self cooldown check
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/main ] >>> 時空裂痕的使者 主程式 / emissary of the temporal rift main
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/cast/cast ] >>> 時空裂痕的使者 施法 開始 / emissary of the temporal rift cast begin
    ## Guide [ function sys:attachable_component/group/guide ] >>> guide

# ===================================================

# Attachable Components

function sys:attachable_component/group/guide

# Cast

execute \
    if score @s monster.skill.cast.at <= #gametime global.main run \
function monsters:chapter_3/emissary_of_the_temporal_rift/cast/cast