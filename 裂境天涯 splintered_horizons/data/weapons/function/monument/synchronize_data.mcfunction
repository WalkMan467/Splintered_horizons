# ===================================================
# 紀念碑 synchronize data / monument synchronize data

    ## Guide [ function weapons:monument/synchronize_data ] >>> 紀念碑 synchronize data / monument synchronize data
    ## Guide [ function main:guide/player ] >>> 分派 玩家 / dispatch player

# ===================================================


execute \
    if score #weapons:monument/area_1 global.main matches 1.. run \
advancement grant @a only weapons:monument/area_1

execute \
    unless score #weapons:monument/area_1 global.main matches 1.. run \
advancement revoke @a only weapons:monument/area_1


execute \
    if score #weapons:monument/area_2 global.main matches 1.. run \
advancement grant @a only weapons:monument/area_2

execute \
    unless score #weapons:monument/area_2 global.main matches 1.. run \
advancement revoke @a only weapons:monument/area_2


execute \
    if score #weapons:monument/area_3 global.main matches 1.. run \
advancement grant @a only weapons:monument/area_3

execute \
    unless score #weapons:monument/area_3 global.main matches 1.. run \
advancement revoke @a only weapons:monument/area_3
