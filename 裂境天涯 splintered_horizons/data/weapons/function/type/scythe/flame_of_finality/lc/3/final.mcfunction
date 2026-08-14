# ===================================================
# 鐮 終焉雙重火 左鍵 階段 3 final / scythe flame of finality left click step 3 final

    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/final ] >>> 鐮 終焉雙重火 左鍵 階段 3 final / scythe flame of finality left click step 3 final
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/guide ] >>> 鐮 終焉雙重火 左鍵 階段 3 分派 / scythe flame of finality left click step 3 dispatch
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/detect ] >>> 鐮 終焉雙重火 左鍵 階段 3 偵測 / scythe flame of finality left click step 3 detect

# ===================================================

summon item_display ~ ~0.5 ~ {glow_color_override:16764928,Tags:["summon","weapon.flame_of_finality.flower"],Glowing:1b,teleport_duration:5,interpolation_duration:5,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[0.25f,0.5f,0.25f]},item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"minecraft:fx/flame_of_finality/flower"}}}

execute \
    as @n[sort=arbitrary,distance=..1,tag=weapon.flame_of_finality.flower,tag=summon,type=item_display] at @s run \
function weapons:type/scythe/flame_of_finality/lc/3/guide

scoreboard players reset #weapon.flame_of_finality.raycast main.raycast

function particle:zeuss_lightning_wave/use