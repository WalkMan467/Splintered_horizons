# ===================================================
# 鐮 終焉之墟 右鍵 chain 射線 / scythe ruins of the finality right click chain raycast

    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/chain/raycast ] >>> 鐮 終焉之墟 右鍵 chain 射線 / scythe ruins of the finality right click chain raycast
    ## Guide [ function weapons:type/scythe/ruins_of_the_finality/rc/chain/detect ] >>> 鐮 終焉之墟 右鍵 chain 偵測 / scythe ruins of the finality right click chain detect

# ===================================================

scoreboard players set #temp weapon.ruins_of_the_finality.effect.range 25

summon area_effect_cloud ~ ~ ~ {Tags:["weapon.ruins_of_the_finality.effect.chain.main"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @e[type=area_effect_cloud,tag=weapon.ruins_of_the_finality.effect.chain.main] ~ ~ ~ ~ ~

execute \
    as @e[type=area_effect_cloud,tag=weapon.ruins_of_the_finality.effect.chain.main] run \
function weapons:type/scythe/ruins_of_the_finality/rc/chain/detect
kill @e[type=area_effect_cloud,tag=weapon.ruins_of_the_finality.effect.chain.main]