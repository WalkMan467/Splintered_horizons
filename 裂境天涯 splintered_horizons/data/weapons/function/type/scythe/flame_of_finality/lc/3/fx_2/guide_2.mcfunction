# ===================================================
# 鐮 終焉雙重火 左鍵 階段 3 fx 2 guide 2 / scythe flame of finality left click step 3 fx 2 guide 2

    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/fx_2/guide_2 ] >>> 鐮 終焉雙重火 左鍵 階段 3 fx 2 guide 2 / scythe flame of finality left click step 3 fx 2 guide 2
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/fx_2/use ] >>> 鐮 終焉雙重火 左鍵 階段 3 fx 2 觸發 / scythe flame of finality left click step 3 fx 2 activate

# ===================================================

execute \
    positioned ^ ^ ^ run \
particle flame ~ ~ ~ ^ ^ ^1000000 0.00000015 0 normal @a

scoreboard players add x particle 10
scoreboard players set rot_y particle 0

execute \
    if score x particle matches 360.. run \
scoreboard players set rot_y particle 1

execute \
    if score x particle matches 360.. run \
scoreboard players add y particle 10

execute \
    if score x particle matches 360.. run \
scoreboard players set x particle 0


execute \
    if score y particle matches ..90 \
    if score rot_y particle matches 0 rotated ~10 ~ run \
function weapons:type/scythe/flame_of_finality/lc/3/fx_2/guide_2

execute \
    if score y particle matches ..90 \
    if score rot_y particle matches 1 rotated ~10 ~10 run \
function weapons:type/scythe/flame_of_finality/lc/3/fx_2/guide_2