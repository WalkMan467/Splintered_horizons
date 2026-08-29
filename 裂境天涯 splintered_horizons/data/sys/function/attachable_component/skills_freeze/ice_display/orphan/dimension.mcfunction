# 執行者 : 排程來源 執行維度 : 由 scan 指定

    ## Guide [ function sys:attachable_component/skills_freeze/ice_display/orphan/dimension ] >>> dimension

    ## Guide [ function sys:attachable_component/skills_freeze/ice_display/orphan/scan ] >>> orphan scan

    ## Guide [ function sys:attachable_component/skills_freeze/ice_display/orphan/detect ] >>> detect


# tag + type 過濾的 @e 只會走到有掛這個標籤的實體，正常情況下場上一個都沒有

execute \
    as @e[tag=sys.skills_freeze.display,tag=!summon,type=block_display] at @s run \
function sys:attachable_component/skills_freeze/ice_display/orphan/detect
