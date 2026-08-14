# ===================================================
# 鐮 終焉之墟 右鍵 定位點 射線 / scythe ruins of the finality right click point raycast

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/point/raycast ] >>> 鐮 終焉之墟 右鍵 定位點 射線 / scythe ruins of the finality right click point raycast
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/point/detect ] >>> 鐮 終焉之墟 右鍵 定位點 偵測 / scythe ruins of the finality right click point detect

# ===================================================

scoreboard players set #temp weapon.ruins_of_the_finality.effect.range 25

summon area_effect_cloud ~ ~ ~ {Tags:["weapon.ruins_of_the_finality.effect.point.main"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @e[type=area_effect_cloud,tag=weapon.ruins_of_the_finality.effect.point.main] ~ ~ ~ ~ ~

execute \
    as @e[type=area_effect_cloud,tag=weapon.ruins_of_the_finality.effect.point.main] run \
function weapons:type/scythe/ruins_of_the_finality/rc/point/detect
kill @e[type=area_effect_cloud,tag=weapon.ruins_of_the_finality.effect.point.main]