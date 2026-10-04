# ===================================================
# 鐮 終焉雙重火 左鍵 階段 3 觸發 / scythe flame of finality left click step 3 activate

    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/use ] >>> 鐮 終焉雙重火 左鍵 階段 3 觸發 / scythe flame of finality left click step 3 activate
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/3/detect ] >>> 鐮 終焉雙重火 左鍵 階段 3 偵測 / scythe flame of finality left click step 3 detect
    ## Guide [ function weapons:type/scythe/flame_of_finality/lc/use ] >>> 鐮 終焉雙重火 左鍵 觸發 / scythe flame of finality left click activate

# ===================================================

scoreboard players set @s player.click.interval 8
scoreboard players set @s weapon.flame_of_finality.attack.timer 15

scoreboard players set @s weapon.flame_of_finality.flower.id 1

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s subtitle ""
title @s times 5 5 5

playsound minecraft:entity.horse.saddle voice @a ~ ~1 ~ 0.5 0.75
playsound minecraft:entity.horse.saddle voice @a ~ ~1 ~ 0.5 0.75
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 0.5 1
playsound minecraft:entity.blaze.shoot voice @a ~ ~1 ~ 0.75 0.75


tag @s add temp

scoreboard players set #weapon.flame_of_finality.raycast main.raycast 35

summon area_effect_cloud ~ ~ ~ {Tags:["weapon.flame_of_finality.raycast"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @n[tag=weapon.flame_of_finality.raycast,distance=0..,type=area_effect_cloud] ~ ~ ~ ~ ~

execute \
    as @n[tag=weapon.flame_of_finality.raycast,distance=0..,type=area_effect_cloud] run \
function weapons:type/scythe/flame_of_finality/lc/3/detect
kill @n[tag=weapon.flame_of_finality.raycast,distance=0..,type=area_effect_cloud]

tag @s remove temp