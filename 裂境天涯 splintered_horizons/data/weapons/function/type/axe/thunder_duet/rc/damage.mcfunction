# ===================================================
# 斧 雷霆二重奏 右鍵 傷害 / axe thunder duet right click damage

    ## Guide [ function weapons:type/axe/thunder_duet/rc/damage ] >>> 斧 雷霆二重奏 右鍵 傷害 / axe thunder duet right click damage
    ## Guide [ function dmg_formula:weapons/type/axe/thunder_duet/calculate ] >>> weapons 斧 雷霆二重奏 計算 / weapons axe thunder duet calculate
    ## Guide [ function weapons:type/axe/thunder_duet/rc/selected ] >>> 斧 雷霆二重奏 右鍵 selected / axe thunder duet right click selected

# ===================================================

tag @s add temp.2

scoreboard players set @p[tag=temp,distance=..8,sort=arbitrary] weapon.thunder_duet.passive.cd 0

tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger
tag @p[tag=temp,tag=!atker] add atker
scoreboard players set @p[tag=atker,tag=temp] dmg_formula.atk_percentage 250

execute \
    as @p[tag=atker,tag=temp] run \
function dmg_formula:weapons/type/axe/thunder_duet/calculate