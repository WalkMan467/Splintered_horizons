# ===================================================
# 鐮 終焉雙重火 左鍵 階段 3 particle / scythe flame of finality left click step 3 particle

    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/particle ] >>> 鐮 終焉雙重火 左鍵 階段 3 particle / scythe flame of finality left click step 3 particle
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/guide ] >>> 鐮 終焉雙重火 左鍵 階段 3 分派 / scythe flame of finality left click step 3 dispatch

# ===================================================

scoreboard players add #weapon.flame_of_finality.blade particle 3

particle minecraft:flame ^ ^ ^ ^ ^ ^1000000 0.0000005 0 force

execute \
    rotated ~3 0 \
    if score #weapon.flame_of_finality.blade particle matches ..360 run \
function weapons:type/scythe/flame_of_finality/lc/3/particle