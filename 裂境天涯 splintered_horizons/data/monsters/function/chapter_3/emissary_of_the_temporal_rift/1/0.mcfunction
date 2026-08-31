# ===================================================
# 時空裂痕的使者 技能1 生成時空之鑰 / emissary of the temporal rift skill 1 spawn key

    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/0 ] >>> 時空裂痕的使者 技能1 生成時空之鑰 / emissary of the temporal rift skill 1 spawn key
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/main ] >>> 時空裂痕的使者 技能1 分鏡 / emissary of the temporal rift skill 1 timeline
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/1 ] >>> 時空裂痕的使者 技能1 時空之鑰設定 / emissary of the temporal rift skill 1 key setup
    ## Guide [ function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/main ] >>> 時空之鑰 排程 / temporal key scheduler

# ===================================================

playsound minecraft:entity.breeze.wind_burst voice @a ~ ~1 ~ 1 0.5

tag @s add chapter_3.emissary_of_the_temporal_rift.key.temp

execute summon item_display rotated ~ 0 run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/1
tag @s remove chapter_3.emissary_of_the_temporal_rift.key.temp

schedule function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/main 1t