# ===================================================
# 赤血詛咒箭矢 觸發 / bleeding arrow activate

    ## Guide [ function weapons:type/arrows/bleeding_arrow/use ] >>> 赤血詛咒箭矢 觸發 / bleeding arrow activate
    ## Guide [ function weapons:type/arrows/bleeding_arrow/guide ] >>> 赤血詛咒箭矢 分派 / bleeding arrow dispatch
    ## Guide [ function weapons:type/arrows/detect ] >>> 箭矢 偵測 / arrow detect

# ===================================================


execute \
    as @n[type=!player,type=!#minecraft:dummy_mob,tag=!cse.status.effect.bleeding] at @s run \
function weapons:type/arrows/bleeding_arrow/guide

advancement revoke @a only weapons:arrows/bleeding_arrow