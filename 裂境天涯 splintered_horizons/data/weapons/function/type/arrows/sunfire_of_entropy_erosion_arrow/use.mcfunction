# ===================================================
# 熵蝕之火箭矢 觸發 / bleeding arrow activate

    ## Guide [ function weapons:type/arrows/sunfire_of_entropy_erosion_arrow/use ] >>> 熵蝕之火箭矢 觸發 / bleeding arrow activate
    ## Guide [ function weapons:type/arrows/sunfire_of_entropy_erosion_arrow/guide ] >>> 熵蝕之火箭矢 分派 / bleeding arrow dispatch
    ## Guide [ function weapons:type/arrows/detect ] >>> 箭矢 偵測 / arrow detect

# ===================================================


execute \
    as @n[type=!player,type=!#minecraft:dummy_mob,tag=!cse.status.effect.entropy_erosion] at @s run \
function weapons:type/arrows/sunfire_of_entropy_erosion_arrow/guide

advancement revoke @a only weapons:arrows/sunfire_of_entropy_erosion_arrow