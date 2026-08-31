# ===================================================
# 時空裂痕的使者 主程式 / emissary of the temporal rift main

    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/main ] >>> 時空裂痕的使者 主程式 / emissary of the temporal rift main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/main ] >>> 時空裂痕的使者 技能1 分鏡 / emissary of the temporal rift skill 1 timeline
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/main.monster ] >>> 時空裂痕的使者 本體 冷卻檢查 / emissary of the temporal rift self cooldown check

# ===================================================

# Skill 1

execute \
    as @s[tag=monsters.emissary_of_the_temporal_rift,tag=chapter_3.emissary_of_the_temporal_rift.1,type=skeleton] at @s run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/main

# Monster Self

execute \
    as @s[tag=monsters.emissary_of_the_temporal_rift,type=skeleton] at @s run \
function monsters:chapter_3/emissary_of_the_temporal_rift/main.monster