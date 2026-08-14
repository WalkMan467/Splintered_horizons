# ===================================================
# 斧 雷霆二重奏 右鍵 主迴圈 / axe thunder duet right click loop

    ## Guide [ function weapons:type/axe/thunder_duet/rc/main ] >>> 斧 雷霆二重奏 右鍵 主迴圈 / axe thunder duet right click loop
    ## Guide [ function weapons:type/axe/thunder_duet/main ] >>> 斧 雷霆二重奏 主迴圈 / axe thunder duet loop

# ===================================================

tp @s ^ ^ ^1

scoreboard players operation @n[distance=..1.5,tag=!weapon.thunder_duet.tunder,type=!#minecraft:dummy_mob,type=!player] weapon.thunder_duet.id = @s weapon.thunder_duet.id

execute \
    unless block ~ ~ ~ #penetrate run \
kill @s