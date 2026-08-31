# ===================================================
# 時空裂痕的使者 技能1 分鏡 / emissary of the temporal rift skill 1 timeline

    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/main ] >>> 時空裂痕的使者 技能1 分鏡 / emissary of the temporal rift skill 1 timeline
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/main ] >>> 時空裂痕的使者 主程式 / emissary of the temporal rift main
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/0 ] >>> 時空裂痕的使者 技能1 生成時空之鑰 / emissary of the temporal rift skill 1 spawn key
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/cast/end ] >>> 時空裂痕的使者 施法 結束並重設冷卻 / emissary of the temporal rift cast end

# ===================================================

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.skills_freeze matches 0.. run \
    return run \
function monsters:chapter_3/emissary_of_the_temporal_rift/cast/end

execute \
    if score @s monster.skill.casting matches 1.. \
    if score @s sys.silence matches 1.. run \
    return run \
function monsters:chapter_3/emissary_of_the_temporal_rift/cast/end


execute \
    if score @s monster.skill.casting matches 1 run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/0


execute \
    if score @s monster.skill.casting matches 1.. run \
particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 1 normal @a

execute \
    if score @s monster.skill.casting matches 1.. run \
particle ominous_spawning ~ ~0.5 ~ 0.5 1 0.5 0 5 normal @a


execute \
    if score @s monster.skill.casting matches 300.. run \
function monsters:chapter_3/emissary_of_the_temporal_rift/cast/end