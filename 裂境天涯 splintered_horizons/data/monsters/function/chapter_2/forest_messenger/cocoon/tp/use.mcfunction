# ===================================================
# 繭 傳送 執行 / cocoon teleport execute

    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/tp/use ] >>> 繭 傳送 執行 / cocoon teleport execute
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/true ] >>> 繭 傳送 射線 命中落點 / cocoon teleport raycast hit
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/tp/owner ] >>> 繭 傳送 擁有者回血 / cocoon teleport owner heal

# ===================================================

tp @e[tag=monster.forest_messenger.cocoon.user_temp,limit=1,tag=monster.forest_messenger.1.actived] @n[tag=monster.forest_messenger.cocoon.tp.raycast.tp,type=area_effect_cloud]

execute \
    as @e[tag=monster.forest_messenger.cocoon.user_temp,limit=1,tag=monster.forest_messenger.1.actived] at @s run \
function monsters:chapter_2/forest_messenger/cocoon/tp/owner