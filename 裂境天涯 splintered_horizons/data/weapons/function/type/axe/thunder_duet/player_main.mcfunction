# ===================================================
# 斧 雷霆二重奏 player main / axe thunder duet player main

    ## Guide [ function weapons:type/axe/thunder_duet/player_main ] >>> 斧 雷霆二重奏 player main / axe thunder duet player main
    ## Guide [ function weapons:type/axe/thunder_duet/rc/selected ] >>> 斧 雷霆二重奏 右鍵 selected / axe thunder duet right click selected
    ## Guide [ function weapons:type/core/main_guide ] >>> 核心 main guide / core main guide

# ===================================================

execute \
    if score @s weapon.thunder_duet.target.delay matches ..0 run \
function weapons:type/axe/thunder_duet/rc/selected

execute \
    if score @s weapon.thunder_duet.target.delay matches 1.. run \
scoreboard players remove @s weapon.thunder_duet.target.delay 1