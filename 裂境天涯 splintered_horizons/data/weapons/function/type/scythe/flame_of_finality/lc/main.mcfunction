# ===================================================
# 鐮 終焉雙重火 左鍵 主迴圈 / scythe flame of finality left click loop

    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/main ] >>> 鐮 終焉雙重火 左鍵 主迴圈 / scythe flame of finality left click loop
    ## Guide [ function weapons:type/core/player ] >>> 核心 玩家 / core player

# ===================================================

execute \
    if score @s weapon.flame_of_finality.attack.timer matches 1.. run \
return 0

scoreboard players reset @s weapon.flame_of_finality.attack
scoreboard players reset @s weapon.flame_of_finality.attack.timer