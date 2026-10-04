# ===================================================
# 鐮 終焉雙重火 左鍵 階段 3 分派 / scythe flame of finality left click step 3 dispatch

    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/guide ] >>> 鐮 終焉雙重火 左鍵 階段 3 分派 / scythe flame of finality left click step 3 dispatch
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/particle ] >>> 鐮 終焉雙重火 左鍵 階段 3 particle / scythe flame of finality left click step 3 particle
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/fx_2/use ] >>> 鐮 終焉雙重火 左鍵 階段 3 fx 2 觸發 / scythe flame of finality left click step 3 fx 2 activate
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/damage ] >>> 鐮 終焉雙重火 左鍵 階段 3 傷害 / scythe flame of finality left click step 3 damage
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/final ] >>> 鐮 終焉雙重火 左鍵 階段 3 final / scythe flame of finality left click step 3 final

# ===================================================


rotate @s ~180 0
data merge entity @s {start_interpolation: 1, teleport_duration:5,interpolation_duration:5,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.5f, 1.25f], translation: [0.0f, 0.5f, 0.0f]}}

scoreboard players set @s duration 12
scoreboard players operation @s weapon.flame_of_finality.flower.id = @p[tag=temp] weapon.flame_of_finality.flower.id
tag @s remove summon

particle flame ~ ~ ~ 0 0 0 0.25 100 force @a

scoreboard players reset #weapon.flame_of_finality.blade particle
function weapons:type/scythe/flame_of_finality/lc/3/particle

execute \
    positioned ~ ~0.5 ~ \
    rotated ~ ~90 run \
function weapons:type/scythe/flame_of_finality/lc/3/fx_2/use


execute \
    anchored feet \
    rotated ~ 0 \
    as @e[distance=..4,tag=!weapon.flame_of_finality.flower,type=!#minecraft:dummy_mob,type=!player] at @s run \
function weapons:type/scythe/flame_of_finality/lc/3/damage