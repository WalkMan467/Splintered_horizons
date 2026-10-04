# ===================================================
# 鐮 終焉雙重火 左鍵 階段 2 傷害 / scythe flame of finality left click step 2 damage

    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/2/damage ] >>> 鐮 終焉雙重火 左鍵 階段 2 傷害 / scythe flame of finality left click step 2 damage
    ## Guide [ function dmg_formula:weapons/type/scythe/flame_of_finality/attack/2/calculate ] >>> weapons 鐮 終焉雙重火 攻擊 階段 2 計算 / weapons scythe flame of finality attack step 2 calculate

# ===================================================

tag @s add dmger
tag @p[sort=arbitrary,tag=!atker,tag=weapon.flame_of_finality.user] add atker
scoreboard players set @p[sort=arbitrary,tag=atker,tag=weapon.flame_of_finality.user] dmg_formula.atk_percentage 150

execute \
    as @p[sort=arbitrary,tag=atker,tag=weapon.flame_of_finality.user] run \
function dmg_formula:weapons/type/scythe/flame_of_finality/attack/2/calculate