# ===================================================
# 斧 雷霆二重奏 被動 主迴圈 / axe thunder duet passive loop

    ## Guide [ function weapons:type/axe/thunder_duet/passive/main ] >>> 斧 雷霆二重奏 被動 主迴圈 / axe thunder duet passive loop
    ## Guide [ function weapons:type/axe/thunder_duet/main ] >>> 斧 雷霆二重奏 主迴圈 / axe thunder duet loop

# ===================================================

execute \
    if score @s weapon.thunder_duet.target.marker matches 0.. run \
    return run \
scoreboard players remove @s weapon.thunder_duet.target.marker 1

scoreboard players reset @s weapon.thunder_duet.target.marker

execute \
    unless entity @s[type=player] run \
return 0

scoreboard players reset @s weapon.thunder_duet.passive.state
scoreboard players reset @s weapon.thunder_duet.passive.timer