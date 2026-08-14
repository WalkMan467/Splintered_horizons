# ===================================================
# 斧 雷霆二重奏 右鍵 初始化 / axe thunder duet right click setup

    ## Guide [ function weapons:type/axe/thunder_duet/rc/setup ] >>> 斧 雷霆二重奏 右鍵 初始化 / axe thunder duet right click setup
    ## Guide [ function weapons:type/axe/thunder_duet/rc/use ] >>> 斧 雷霆二重奏 右鍵 觸發 / axe thunder duet right click activate

# ===================================================

execute \
    rotated as @p run \
rotate @s ~ ~

tag @s remove summon

scoreboard players set @s duration 5

scoreboard players operation @s weapon.thunder_duet.id = #index weapon.thunder_duet.id