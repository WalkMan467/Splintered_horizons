# ===================================================
# 時空之鑰 排程 / temporal key scheduler

    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/main ] >>> 時空之鑰 排程 / temporal key scheduler
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/0 ] >>> 時空裂痕的使者 技能1 生成時空之鑰 / emissary of the temporal rift skill 1 spawn key
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/guide ] >>> 時空之鑰 追蹤與引爆時序 / temporal key track and timeline

# ===================================================

execute \
    as @a at @s \
    as @e[distance=..60,tag=chapter_3.emissary_of_the_temporal_rift.key,type=item_display] at @s run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/guide

execute \
    as @a at @s \
    if entity @n[distance=0..,tag=chapter_3.emissary_of_the_temporal_rift.key,type=item_display] run \
schedule function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/main 1t