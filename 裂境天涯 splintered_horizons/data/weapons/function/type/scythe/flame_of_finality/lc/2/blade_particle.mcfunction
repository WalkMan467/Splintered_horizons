# ===================================================
# 鐮 終焉雙重火 左鍵 階段 2 blade particle / scythe flame of finality left click step 2 blade particle

    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/2/blade_particle ] >>> 鐮 終焉雙重火 左鍵 階段 2 blade particle / scythe flame of finality left click step 2 blade particle
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/2/use ] >>> 鐮 終焉雙重火 左鍵 階段 2 觸發 / scythe flame of finality left click step 2 activate

# ===================================================

scoreboard players add #weapon.flame_of_finality.blade particle 1

particle small_flame ^ ^ ^3 0.1 0.1 0.1 0 1 force

execute \
    rotated ~-1 ~0.5 \
    if score #weapon.flame_of_finality.blade particle matches ..90 run \
function weapons:type/scythe/flame_of_finality/lc/2/blade_particle