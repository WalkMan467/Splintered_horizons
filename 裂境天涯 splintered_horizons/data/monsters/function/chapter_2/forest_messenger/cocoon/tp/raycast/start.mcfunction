# ===================================================
# 繭 傳送 射線 起點 / cocoon teleport raycast start

    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/start ] >>> 繭 傳送 射線 起點 / cocoon teleport raycast start
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/main ] >>> 繭 傳送 射線 環繞掃描 / cocoon teleport raycast sweep
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/detect ] >>> 繭 傳送 射線 逐格前進 / cocoon teleport raycast step

# ===================================================

scoreboard players set $value monster.forest_messenger.cocoon.tp.raycast 8


execute \
    positioned ~ ~1 ~ run \
function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/detect