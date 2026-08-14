# ===================================================
# 斧 雷霆二重奏 被動 觸發 / axe thunder duet passive activate

    ## Guide [ function weapons:type/axe/thunder_duet/passive/use ] >>> 斧 雷霆二重奏 被動 觸發 / axe thunder duet passive activate
    ## Guide [ function weapons:type/axe/thunder_duet/passive/2/run ] >>> 斧 雷霆二重奏 被動 階段 2 執行 / axe thunder duet passive step 2 run
    ## Guide [ function weapons:type/axe/thunder_duet/passive/1/run ] >>> 斧 雷霆二重奏 被動 階段 1 執行 / axe thunder duet passive step 1 run

# ===================================================

advancement revoke @s only weapons:type/axe/thunder_duet/passive/use

execute \
    if score @s weapon.thunder_duet.passive.state matches 2 run \
    return run \
function weapons:type/axe/thunder_duet/passive/2/run

execute \
    if score @s weapon.thunder_duet.passive.state matches 1 run \
    return run \
function weapons:type/axe/thunder_duet/passive/1/run