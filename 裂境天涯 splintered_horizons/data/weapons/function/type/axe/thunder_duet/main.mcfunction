# ===================================================
# 斧 雷霆二重奏 主迴圈 / axe thunder duet loop

    ## Guide [ function weapons:type/axe/thunder_duet/main ] >>> 斧 雷霆二重奏 主迴圈 / axe thunder duet loop
    ## Guide [ function weapons:type/axe/thunder_duet/rc/main ] >>> 斧 雷霆二重奏 右鍵 主迴圈 / axe thunder duet right click loop
    ## Guide [ function weapons:type/axe/thunder_duet/passive/main ] >>> 斧 雷霆二重奏 被動 主迴圈 / axe thunder duet passive loop
    ## Guide [ function weapons:type/core/main_guide ] >>> 核心 main guide / core main guide

# ===================================================

execute \
    as @e[sort=arbitrary,distance=0..,tag=weapon.thunder_duet.tunder,type=item_display] at @s run \
function weapons:type/axe/thunder_duet/rc/main

execute \
    as @e[sort=arbitrary,distance=..60,scores={weapon.thunder_duet.target.marker=-1..},type=!#minecraft:dummy_mob] at @s run \
function weapons:type/axe/thunder_duet/passive/main